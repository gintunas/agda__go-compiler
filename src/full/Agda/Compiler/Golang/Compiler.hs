-- | Main module for Go backend.
module Agda.Compiler.Golang.Compiler where

-- import System.Process     ( callCommand )

import Agda.Compiler.Backend
  ( Backend (..),
    Backend' (..),
    Recompile (..),
  )
import Agda.Compiler.Common hiding (compileDir)
import qualified Agda.Compiler.Golang.Misc as M
import qualified Agda.Compiler.Golang.Pretty as GoPretty
import Agda.Compiler.Golang.Syntax
  ( Exp
      ( BinOp,
        Char,
        Const,
        Global,
        GoArray,
        -- It does nothing
        -- GoBool,
        GoCase,
        GoCreateStruct,
        GoFalse,
        GoFunction,
        GoIIFE,
        GoIf,
        GoInterface,
        GoLet,
        GoMethodCall,
        GoMethodCallParam,
        GoStruct,
        GoSwitch,
        GoTrue,
        GoVar,
        Integer,
        SimpleInteger,
        Lambda,
        Null,
        ReturnExpression,
        Self,
        String,
        Undefined
      ),
    GlobalId (GlobalId),
    GoFunctionSignature
      ( InnerSignature,
        OuterSignature,
        AnonymousSignature
      ),
    GoImports
      ( GoImportDeclarations,
        GoImportField,
        GoImportUsage
      ),
    GoQName,
    MemberId (MemberId),
    Module (Module, modName),
    TypeId
      ( ConstructorType,
        EmptyFunctionParameter,
        EmptyType,
        FunctionReturnElement,
        FunctionType,
        GenericFunctionType,
        PiType,
        TypeId, 
        AnyType
      ),
    modName,
  )
import Agda.Compiler.ToTreeless
import Agda.Compiler.Treeless.EliminateDefaults
import Agda.Compiler.Treeless.EliminateLiteralPatterns
import Agda.Compiler.Treeless.Erase (computeErasedConstructorArgs)
import Agda.Compiler.Treeless.GuardsToPrims
import Agda.Interaction.Options
import Agda.Syntax.Abstract.Name
  ( ModuleName,
    QName,
    mnameToList,
    nameId,
    qnameModule,
    qnameName,
    uglyShowName,
  )
import Agda.Syntax.Common
import Agda.Syntax.Concrete.Name (isNoName)
import Agda.Syntax.Internal
import Agda.Syntax.Literal (Literal (..))
import qualified Agda.Syntax.Treeless as T
import Agda.TypeChecking.Monad
import Agda.TypeChecking.Pretty
import Agda.TypeChecking.Primitive (getBuiltinName)
import Agda.TypeChecking.Reduce (instantiateFull)
import Agda.TypeChecking.Substitute as TC
  ( TelV (..),
    raise,
    subst,
  )
import Agda.TypeChecking.Telescope
import Agda.Utils.FileName (isNewerThan)
import Agda.Utils.IO.UTF8 (writeFile)
import Agda.Utils.IO.Directory
import Paths_Agda ( getDataDir )
import Agda.Utils.Impossible (__IMPOSSIBLE__)
import qualified Agda.Utils.List1 as List1
import Agda.Utils.Maybe
  ( caseMaybeM,
    catMaybes,
  )
import Agda.Utils.Monad
  ( ifM,
    when,
  )
import qualified Agda.Utils.Pretty as AU
  ( prettyShow,
    pretty,
    render,
  )
import Agda.Utils.Singleton (singleton)
import Control.DeepSeq
import Control.Monad (zipWithM)
import Control.Monad.Trans
import Data.Char
  ( chr,
    isAsciiUpper,
    isDigit,
    isLetter,
    isSpace,
    ord,
  )
import Data.Foldable (forM_, or)
import Data.List (intercalate)
import qualified Data.Map as Map
import Data.Maybe (fromMaybe)
import Data.Set (Set)
import qualified Data.Set as Set
import GHC.Generics (Generic)
import System.Directory
  ( createDirectoryIfMissing,
    getHomeDirectory,
    setCurrentDirectory,
  )
import System.FilePath
  ( splitFileName,
    (</>),
  )
import Prelude hiding (writeFile)

--------------------------------------------------
-- Entry point into the compiler
--------------------------------------------------

goBackend :: Backend
goBackend = Backend goBackend'

goBackend' :: Backend' GoFlags GoEnv GoModuleEnv Module (Maybe Exp)
goBackend' =
  Backend'
    { backendName = goBackendName,
      backendVersion = Nothing,
      options = defaultGoFlags,
      commandLineFlags = goCommandLineFlags,
      isEnabled = optGoCompile,
      preCompile = goPreCompile,
      postCompile = goPostCompile,
      preModule = goPreModule,
      postModule = goPostModule,
      compileDef = goCompileDef,
      scopeCheckingSuffices = False,
      mayEraseType = const $ return False
      -- Andreas, 2019-05-09, see issue #3732.
      -- If you want to use Go data structures generated from Agda
      -- @data@/@record@, you might want to tell the treeless compiler
      -- not to erase these types even if they have no content,
      -- to get a stable interface.
    }

--- Options ---

data GoFlags = GoFlags
  { optGoCompile :: Bool,
    optUseUint64 :: Bool
  }
  deriving (Generic)

instance NFData GoFlags

defaultGoFlags :: GoFlags
defaultGoFlags =
  GoFlags
    { optGoCompile = False,
      optUseUint64 = False
    }

goCommandLineFlags :: [OptDescr (Flag GoFlags)]
goCommandLineFlags =
  [ Option [] ["go"] (NoArg enable) "compile program using the go backend",
    Option [] ["useUint64"] (NoArg enableUint) 
    $ "use uint64 instead of bigInteger for natural numbers in Go code."
    <> "\nWARNING:This may speed up operations performance but presents a risk of unhandled overflow."
    <> "\nGo compiler does not check for uint64 overflow so overflowing operations will run without error and return overflown results."
  ]
  where
    enable o = pure o {optGoCompile = True}
    enableUint o = pure o {optUseUint64 = True}

-- A static part of the GO backend's environment that does not
-- change from module to module.
data GoEnv = GoEnv
  { goEnvFlags :: GoFlags,
    -- It does nothing now since everything's type is any (find other entries related to this in all go compiler files with "it does nothing" term)
    -- goEnvBool,
    -- It lets pattern match on bools (type any) since there are literal values true and false
    goEnvTrue,
    goEnvFalse,
    goEnvNat,
    goEnvInteger,
    goEnvList,
    goEnvNil ::
      Maybe QName
      -- Various builtin names.
  }

-- Set compileDir to go source directory in home
compileDir = (liftIO getHomeDirectory) <> "/go/src" 

--- Top-level compilation ---
goPreCompile :: GoFlags -> TCM GoEnv
goPreCompile flags = do
  -- It does nothing now
  -- gbool <- getBuiltinName builtinBool
  gtrue <- getBuiltinName builtinTrue
  gfalse <- getBuiltinName builtinFalse
  gnat <- getBuiltinName builtinNat
  gint <- getBuiltinName builtinInteger
  glist <- getBuiltinName builtinList
  gnil <- getBuiltinName builtinNil
  return $
    GoEnv
      { goEnvFlags = flags,
        -- It does nothing now
        -- goEnvBool = gbool,
        goEnvTrue = gtrue,
        goEnvFalse = gfalse,
        goEnvNat = gnat,
        goEnvInteger = gint,
        goEnvList = glist,
        goEnvNil = gnil
      }

-- Type resolution utils
isGoType :: GoEnv -> QName -> (GoEnv -> Maybe QName) -> Bool
isGoType env q p = Just q == p env

-- | After all modules have been compiled, copy RTE modules and verify compiled modules.
goPostCompile :: GoEnv -> IsMain -> Map.Map ModuleName Module -> TCM ()
goPostCompile env _ ms = do
  -- DEBUG_LOGGING
  M.reportS "GO_COMPILER_DEBUG_LOG" 6 $ " ms:" M.<+%> ms
  compDir <- compileDir
  M.reportS "GO_COMPILER_DEBUG_LOG" 5 $ "compDir:" M.<+%> compDir

  forM_ ms $ \Module {modName} -> do
    liftIO $ setCurrentDirectory compDir

    -- DEBUG_LOGGING
    M.reportS "GO_COMPILER_DEBUG_LOG" 5 $ "goFile:" M.<+%> (goFileName modName)
  
  -- Copy RTE modules.
  liftIO $ do
    dataDir <- getDataDir
    let srcDir = dataDir </> "Golang"
    copyDirContent srcDir compDir


--- Module compilation ---

data GoModuleEnv = GoModuleEnv
  { goCoinductionKit :: Maybe CoinductionKit,
    goEnv :: GoEnv
  }

goPreModule ::
  GoEnv ->
  IsMain ->
  ModuleName ->
  Maybe FilePath ->
  TCM (Recompile GoModuleEnv Module)
goPreModule env _ m ifile = do
  ifM uptodate noComp yesComp
  where
    uptodate = case ifile of
      Nothing -> pure False
      Just ifile -> liftIO =<< isNewerThan <$> outFile_ <*> pure ifile
    ifileDesc = fromMaybe "(memory)" ifile

    noComp = do
      name <- curMName
      M.reportS "GO_COMPILER_DEBUG_LOG" 30 $ "No compilation needed for:" M.<+%> name
      return $ Skip skippedModule

    skippedModule = Module (goMod m) mempty mempty

    yesComp = do
      m <- AU.prettyShow <$> curMName
      out <- outFile_
      M.reportS "GO_COMPILER_DEBUG_LOG" 30 $ text $ repl [m, ifileDesc, out] "Compiling go <<0>> in <<1>> to <<2>>"
      kit <- coinductionKit
      return $
        Recompile $
          GoModuleEnv
            { goCoinductionKit = kit,
              goEnv = env
            }

goPostModule ::
  GoEnv ->
  GoModuleEnv ->
  IsMain ->
  ModuleName ->
  [Maybe Exp] ->
  TCM Module
goPostModule env _ isMain _ defs = do
  m <- goMod <$> curMName
  is <- map (goMod . fst) . iImportedModules <$> curIF

  -- DEBUG_LOGGING
  M.reportS "GO_COMPILER_DEBUG_LOG" 10 $ "m:" M.<+%> m
  M.reportS "GO_COMPILER_DEBUG_LOG" 10 $ "is:" M.<+%> is

  let useUint64 = optUseUint64 (goEnvFlags env)

  let importDeclarations =
        GoImportDeclarations $ (map goImportDecl is) ++ ["math/big", "goRteHelper"]
  let importUsages =
        (map goImportUsg is)
          ++ [(GoImportUsage "big"), (GoImportUsage "goRteHelper")]
  let mod =
        Module m (importDeclarations : ([GoImportField] ++ importUsages)) es

  writeModule mod
  return mod
  where
    es = catMaybes defs
    main = MemberId "main"

-- Andreas, 2020-10-27, only add invocation of "main" if such function is defined.
-- This allows loading of generated .go files into an interpreter
-- even if they do not define "main".

goCompileDef ::
  GoEnv -> GoModuleEnv -> IsMain -> Definition -> TCM (Maybe Exp)
goCompileDef env kit _isMain def = definition (env, kit) (defName def, def)

--------------------------------------------------
-- Naming
--------------------------------------------------

prefix :: [Char]
prefix = "Gopiler"

goMod :: ModuleName -> GlobalId
goMod m = GlobalId (prefix : map AU.prettyShow (mnameToList m))

goFileName :: GlobalId -> String
goFileName (GlobalId ms) =
  "Gopiler/"
    ++ (intercalate "/" $ tail $ init ms)
    ++ case (tail $ init ms) of
      [] -> ""
      _ -> "/"
    ++ (intercalate "_" $ tail ms)
    ++ "/"
    ++ (intercalate "_" $ tail ms)
    ++ ".go"

goImportDecl :: GlobalId -> String
goImportDecl (GlobalId ms) =
  (intercalate "/" (init ms)) ++ "/" ++ (intercalate "_" (tail ms))

goImportUsg :: GlobalId -> GoImports
goImportUsg (GlobalId ms) = GoImportUsage $ intercalate "_" (tail ms)

goMember :: Name -> MemberId
goMember n
  | -- Anonymous fields are used for where clauses,
    -- and they're all given the concrete name "_",
    -- so we disambiguate them using their name id.
    isNoName n =
    MemberId ("_" ++ show (nameId n))
  | otherwise = MemberId $ AU.prettyShow n

global' :: QName -> TCM (Exp, GoQName)
global' q = do
  i <- iModuleName <$> curIF
  modNm <- topLevelModuleName (qnameModule q)
  let -- Global module prefix
      qms = mnameToList $ qnameModule q
      -- File-local module prefix
      localms = drop (length $ mnameToList modNm) qms
      nm = fmap goMember $ List1.snoc localms $ qnameName q
  if modNm == i then return (Self, nm) else return (Global (goMod modNm), nm)

global :: QName -> TCM (Exp, GoQName)
global q = do
  d <- getConstInfo q
  case d of
    Defn {theDef = Constructor {conData = p}} -> do
      -- Line changed, it was \case before. CHECK_IF_ERROR
      ci <- getConstInfo p
      case ci of
        -- Andreas, 2020-10-27, comment quotes outdated fact.
        -- anon. constructors are now M.R.constructor.
        -- We could simplify/remove the workaround by switching "record"
        -- to "constructor", but this changes the output of the Go compiler
        -- maybe in ways that break user's developments
        -- (if they link to Agda-generated Go).
        -- -- Rather annoyingly, the anonymous constructor of a record R in module M
        -- -- is given the name M.recCon, but a named constructor C
        -- -- is given the name M.R.C, sigh. This causes a lot of hoop-jumping
        -- -- in the map from Agda names to Go names, which we patch by renaming
        -- -- anonymous constructors to M.R.record.
        Defn {theDef = Record {recNamedCon = False}} -> do
          (m, ls) <- global' p
          return (m, ls <> singleton (MemberId "record"))
        _ -> global' (defName d)
    _ -> global' (defName d)

--------------------------------------------------
-- Main compiling clauses
--------------------------------------------------

type EnvWithOpts = (GoEnv, GoModuleEnv)

definition :: EnvWithOpts -> (QName, Definition) -> TCM (Maybe Exp)
definition kit (q, d) = do
  -- DEBUG_LOGGING
  M.reportS "GO_COMPILER_DEBUG_LOG" 10 $ "compiling def:" <+> prettyTCM q

  (_, ls) <- global q
  d <- instantiateFull d

  definition' kit q d (defType d) ls

definition' ::
  EnvWithOpts -> QName -> Definition -> Type -> GoQName -> TCM (Maybe Exp)
definition' kit q d t ls = do
  let is = isGoType (fst kit) q

  M.reportS "GO_COMPILER_DEBUG_LOG" 50 $ "DEFINITION ARGS:"
  M.reportS "GO_COMPILER_DEBUG_LOG" 50 $ "q: " M.<+%> q
  M.reportS "GO_COMPILER_DEBUG_LOG" 50 $ "d: " M.<+%> d
  M.reportS "GO_COMPILER_DEBUG_LOG" 50 $ "t: " M.<+%> t
  M.reportS "GO_COMPILER_DEBUG_LOG" 50 $ "ls: " M.<+%> ls
  M.reportS "GO_COMPILER_DEBUG_LOG" 50 $ "END OF DEFINITION ARGS"

  case theDef d of
    -- coinduction
    Constructor {} | Just q == (nameOfSharp <$> goCoinductionKit (snd kit)) -> do
      -- DEBUG_LOGGING
      M.reportS "GO_COMPILER_DEBUG_LOG" 30 $ " con1:" M.<+%> d
      return Nothing
    Function {} | Just q == (nameOfFlat <$> goCoinductionKit (snd kit)) -> do
      -- DEBUG_LOGGING
      M.reportS "GO_COMPILER_DEBUG_LOG" 30 $ " f1:" M.<+%> d
      return Nothing
    DataOrRecSig {} -> __IMPOSSIBLE__
    Axiom {} -> return Nothing
    GeneralizableVar {} -> return Nothing
    PrimitiveSort {} -> return Nothing
    Function {} | otherwise -> do
      -- DEBUG_LOGGING
      M.reportS "GO_COMPILER_DEBUG_LOG" 5 $ "compiling fun:" <+> prettyTCM q

      fname <- liftTCM $ fullName q
      caseMaybeM (toTreeless T.EagerEvaluation q) (pure Nothing) $ \treeless ->
        do
          used <- fromMaybe [] <$> getCompiledArgUse q
          funBody <-
            eliminateCaseDefaults
              =<< eliminateLiteralPatterns (convertGuards treeless)
          (goArg, (ConstructorType _ name)) <- goTelApproximation (fst kit) t used
          let count = countFalses used
          let genericTypesUsed = retrieveGenericArguments goArg

          -- DEBUG_LOGGING
          M.reportS "GO_COMPILER_DEBUG_LOG" 30 $
            " genericTypesUsed:"
              M.<+%> genericTypesUsed

          -- DEBUG_LOGGING
          M.reportS "GO_COMPILER_DEBUG_LOG" 30 $
            " compiled treeless fun:"
              <+> pretty funBody

          (TelV tel res) <- telView t
          let args = map (snd . unDom) (telToList tel)

          -- DEBUG_LOGGING
          M.reportS "GO_COMPILER_DEBUG_LOG" 30 $ " goArg:" M.<+%> goArg
          M.reportS "GO_COMPILER_DEBUG_LOG" 30 $ " args:" M.<+%> args

          let (body, given) = lamView funBody
                where
                  lamView :: T.TTerm -> (T.TTerm, Int)
                  lamView (T.TLam t) = (+ 1) <$> lamView t
                  lamView t = (t, 0)

              etaN =
                length $ dropWhile (== T.ArgUsed) $ reverse $ drop given used

          funBody' <-
            compileTerm kit ((length goArg) - 1) goArg $
              T.mkTApp
                (TC.raise etaN body)
                (T.TVar <$> [etaN - 1, etaN - 2 .. 0])

          functionSignature <- createSignature fname goArg name genericTypesUsed
          let emptyFunction = functionSignature Null
          returnType <- extractReturnType emptyFunction

          -- DEBUG_LOGGING
          M.reportS "GO_COMPILER_DEBUG_LOG" 25 $ "functionSignature:" M.<+%!> functionSignature
          M.reportS "GO_COMPILER_DEBUG_LOG" 25 $ "funBody':" M.<+%!> funBody'
          M.reportS "GO_COMPILER_DEBUG_LOG" 30 $ "given:" M.<+%> given
          M.reportS "GO_COMPILER_DEBUG_LOG" 30 $ "etaN:" M.<+%> etaN
          M.reportS "GO_COMPILER_DEBUG_LOG" 30 $ "function returnType:" M.<+%> returnType

          return $
            Just $
              applyReturnType
                returnType
                (functionSignature funBody')
    Primitive {primName = p} -> return Nothing
    -- TODO: implement

    Datatype {dataPathCons = _ : _} -> do
      -- DEBUG_LOGGING
      M.reportS "GO_COMPILER_DEBUG_LOG" 30 $ " data tupe:" M.<+%> q

      s <- AU.render <$> prettyTCM q
      typeError $ NotImplemented $ "Higher inductive types (" ++ s ++ ")"

    Datatype {} -> do
      -- DEBUG_LOGGING
      M.reportS "GO_COMPILER_DEBUG_LOG" 40 $ " data tupe2:" M.<+%> d

      let nameee = uglyShowName (qnameName q)

      -- DEBUG_LOGGING
      M.reportS "GO_COMPILER_DEBUG_LOG" 30 $ "nameee:" M.<+%> nameee

      computeErasedConstructorArgs q
      name <- liftTCM $ fullName q

      let resolveDataType def
            -- TODO: compile list type
            -- | is goEnvList = GoArray name []
            | otherwise = GoInterface name

      return $ Just $ resolveDataType (theDef d)

    Record {} -> do
      computeErasedConstructorArgs q
      return Nothing
    c@Constructor {conData = p, conPars = nc, conSrcCon = ch, conArity = cona} ->
      do
        -- (ff, gg) <- global q
        -- (ff2, gg2) <- global' q

        -- DEBUG_LOGGING
        -- M.reportS "GO_COMPILER_DEBUG_LOG" 5 $ "compiling gg2:" M.<+%> gg2
        -- M.reportS "GO_COMPILER_DEBUG_LOG" 5 $ "compiling gg:" M.<+%> gg

        let np = arity t - nc
        erased <- getErasedConArgs q
        let inverseErased =
              map M.mapBoolToArgUsage erased

        -- DEBUG_LOGGING
        M.reportS "GO_COMPILER_DEBUG_LOG" 20 $ " erased:" M.<+%!> inverseErased

        name <- fullName q
        (goArg, goRes) <- goTelApproximation (fst kit) t inverseErased

        -- DEBUG_LOGGING
        M.reportS "GO_COMPILER_DEBUG_LOG" 20 $ " goTypes:" M.<+%> goArg

        let resolveConstructorType def
              | is goEnvTrue = GoTrue name
              | is goEnvFalse = GoFalse name
              | otherwise = GoStruct name goArg

        return $ Just $ resolveConstructorType (theDef d)
    AbstractDefn {} -> __IMPOSSIBLE__

defGoDef :: Definition -> Maybe String
defGoDef def = case defCompilerPragmas goBackendName def of
  [CompilerPragma _ s] -> Just (dropEquals s)
  [] -> Nothing
  _ : _ : _ -> __IMPOSSIBLE__
  where
    dropEquals = dropWhile $ \c -> isSpace c || c == '='

ftype :: TypeId -> TypeId
ftype (ConstructorType v t) = FunctionType v t
ftype (FunctionType v t) = FunctionType v t
ftype (GenericFunctionType v t) = GenericFunctionType v t
ftype (PiType a b) = PiType a b
ftype _ = EmptyType

fReturnTypes :: [TypeId] -> [TypeId]
fReturnTypes ((ConstructorType v t) : tail) =
  (FunctionReturnElement t) : (fReturnTypes tail)
fReturnTypes (head : tail) = EmptyType : (fReturnTypes tail)
fReturnTypes [] = []

createSignature ::
  MemberId -> [TypeId] -> String -> [String] -> TCM (Exp -> Exp)
createSignature fname [] resName genTypes = do
  return $
    GoFunction
      [(OuterSignature fname genTypes EmptyFunctionParameter [] (TypeId resName))]
createSignature fname (firstArg : tail) resName genTypes = do
  return $
    GoFunction
      ( ( OuterSignature
            fname
            genTypes
            (ftype firstArg)
            (fReturnTypes tail)
            (TypeId resName)
        ) :
        (createSignatureInner tail resName)
      )

createSignatureInner :: [TypeId] -> String -> [GoFunctionSignature]
createSignatureInner (head : tail) retName =
  (InnerSignature (ftype head) (fReturnTypes tail) (TypeId retName)) :
  (createSignatureInner tail retName)
createSignatureInner [] retName = []

countFalses :: [T.ArgUsage] -> Nat
countFalses [] = 0
countFalses (T.ArgUnused : xs) = 1 + countFalses xs
countFalses (_ : xs) = countFalses xs

extractReturnType :: Exp -> TCM TypeId
extractReturnType (GoFunction signatures _) =
  extractReturnType' $ head signatures
extractReturnType _ = __IMPOSSIBLE__

extractReturnType' :: GoFunctionSignature -> TCM TypeId
extractReturnType' (OuterSignature _ _ _ _ retType) = return retType
extractReturnType' _ = __IMPOSSIBLE__

retrieveGenericArguments :: [TypeId] -> [String]
retrieveGenericArguments [] = []
retrieveGenericArguments ((GenericFunctionType n t) : tail) =
  t : (retrieveGenericArguments tail)
retrieveGenericArguments ((PiType a b) : tail) =
  ((retrieveGenericArguments [a]) ++ (retrieveGenericArguments [b]))
    ++ (retrieveGenericArguments tail)
retrieveGenericArguments (_ : tail) = retrieveGenericArguments tail

--------------------------------------------------
-- Writing out a Golang module
--------------------------------------------------

fullName :: QName -> TCM MemberId
fullName q = do
  (m, ls) <- global q
  case m of
    Self -> return $ MemberId $ M.encode $ constructorName' ls
    Global (GlobalId id) -> do
      return $
        MemberId $
          (intercalate "_" (tail id))
            ++ "."
            ++ (M.encode $ constructorName' ls)
    _ -> __IMPOSSIBLE__

constructorName' :: GoQName -> String
constructorName' s = do
  let ((MemberId name), remaining) = List1.uncons s
  case remaining of
    Nothing -> name
    Just rem -> name ++ "_" ++ (constructorName' rem)

getVarName :: Nat -> String
getVarName n = [chr ((ord 'A') + n)]

compileAlt :: EnvWithOpts -> Nat -> [TypeId] -> Nat -> T.TAlt -> TCM Exp
compileAlt kit argCount args switchVar c = case c of
  T.TACon con ar body -> do
    erased <- getErasedConArgs con
    let nargs = ar - length (filter id erased)
    compiled <-
      compileTerm
        kit
        (nargs + argCount)
        args
        (eraseLocalVars erased body)
    memId <- fullName con
    let cas = GoCase memId switchVar argCount nargs [compiled]
    return cas
  _ -> __IMPOSSIBLE__

filterErased :: T.TTerm -> Bool
filterErased fe = case fe of
  T.TErased -> False
  _ -> True

getPiTypedMethodParams :: TypeId -> [Exp] -> Exp
getPiTypedMethodParams (PiType (ConstructorType name typeId) _) (exp : _) =
  GoMethodCallParam exp (TypeId typeId)
getPiTypedMethodParams (PiType (GenericFunctionType name typeId) _) (exp : _) =
  GoMethodCallParam exp (TypeId typeId)
getPiTypedMethodParams _ _ = __IMPOSSIBLE__

getTypelessMethodCallParams :: [Exp] -> [Exp]
getTypelessMethodCallParams tail =
  map (`GoMethodCallParam` EmptyType) tail

compileTerm :: EnvWithOpts -> Nat -> [TypeId] -> T.TTerm -> TCM Exp
compileTerm kit paramCount args t = do
  -- DEBUG_LOGGING
  M.reportS "GO_COMPILER_DEBUG_LOG" 30 $ " compile term:" M.<+%> t

  let (tx, ts) = T.tLetView t

  -- DEBUG_LOGGING
  M.reportS "GO_COMPILER_DEBUG_LOG" 50 $ " compile tx:" M.<+%> tx
  M.reportS "GO_COMPILER_DEBUG_LOG" 50 $ " compile ts:" M.<+%> ts

  compileTerm' (fst kit) t
  where
    compileTerm' :: GoEnv -> T.TTerm -> TCM Exp
    compileTerm' env tt = case tt of
      T.TVar x -> return $ GoVar $ paramCount - x
      T.TDef q -> do
        d <- getConstInfo q
        name <- liftTCM $ fullName q
        case theDef d of
          -- Datatypes and records are erased
          Datatype {} -> return (String "*")
          Record {} -> return (String "*")
          --in case of qname, we call a function with no arguments
          _ -> return $ GoMethodCall name []
      T.TApp (T.TCon q) [x] | Just q == (nameOfSharp <$> goCoinductionKit (snd kit)) -> do
        -- DEBUG_LOGGING
        M.reportS "GO_COMPILER_DEBUG_LOG" 30 $ "sharp"

        unit
      T.TApp (T.TCon q) x -> do
        -- DEBUG_LOGGING
        M.reportS "GO_COMPILER_DEBUG_LOG" 30 $ "contructor"

        l <- fullName q
        transformedArgs <- mapM compileTermWithEnv (filter filterErased x)
        return $ GoCreateStruct l transformedArgs
      T.TApp (T.TDef q) x -> do
        -- DEBUG_LOGGING
        M.reportS "GO_COMPILER_DEBUG_LOG" 15 $ "function definition call"
        M.reportS "GO_COMPILER_DEBUG_LOG" 15 $ "q:" M.<+%> q

        name <- liftTCM $ fullName q
        transformedArgs <- mapM compileTermWithEnv (filter filterErased x)
        return $ GoMethodCall name (getTypelessMethodCallParams transformedArgs)
      T.TApp (T.TVar v1) x -> do
        -- DEBUG_LOGGING
        M.reportS "GO_COMPILER_DEBUG_LOG" 30 $ "function var function"

        transformedArgs <- mapM compileTermWithEnv (filter filterErased x)
        let typedMethodParam =
              getPiTypedMethodParams (args !! (paramCount - v1)) transformedArgs
        return $
          GoMethodCall
            (MemberId (getVarName (paramCount - v1)))
            [typedMethodParam]
      T.TApp (T.TPrim T.PIf) [c, x, y] -> do
        GoIf <$> (compileTermWithEnv c) <*> (compileTermWithEnv x) <*> (compileTermWithEnv y)
      T.TApp (T.TPrim primType) [x, y] -> do
        BinOp <$> (compileTermWithEnv (T.TPrim primType)) <*> (compileTermWithEnv x) <*> (compileTermWithEnv y)
      T.TApp t' xs | Just f <- getDef t' -> do
        used <- case f of
          Left q -> fromMaybe [] <$> getCompiledArgUse q
          Right c ->
            map M.mapBoolToArgUsage
              <$> getErasedConArgs c
        -- either getCompiledArgUse (\x -> fmap (map (\b -> if b then T.ArgUnused else T.ArgUsed)) $ getErasedConArgs x) f

        -- DEBUG_LOGGING
        M.reportS "GO_COMPILER_DEBUG_LOG" 30 $ "just f used:" M.<+%!> used
        M.reportS "GO_COMPILER_DEBUG_LOG" 30 $ "just f:" M.<+%> (getDef t')
        M.reportS "GO_COMPILER_DEBUG_LOG" 30 $ "TApp xs:" M.<+%> xs

        unit
      T.TApp t xs -> do
        -- DEBUG_LOGGING
        M.reportS "GO_COMPILER_DEBUG_LOG" 30 $ "TApp xs:" M.<+%> xs

        unit
      T.TLam t -> do
        compileTermWithEnv t
      T.TLet body expWithBoundedLet -> do
        M.reportS "GO_COMPILER_DEBUG_LOG" 30 $ "GoLet varName:" M.<+%> (getVarName nextParamNum)
        M.reportS "GO_COMPILER_DEBUG_LOG" 30 $ "GoLet body:" M.<+%> body
        M.reportS "GO_COMPILER_DEBUG_LOG" 30 $ "GoLet expWithBoundedLet:" M.<+%> expWithBoundedLet

        bodyComp <- compileTermWithEnv body
        -- TODO: get typeId with this function and add it to anonymous signature
        -- (_, (ConstructorType _ typeId)) <- goTelApproximation (fst kit) t [T.ArgUsed]

        if isLetBodyPrimitive body
          then createLetExp $ compileTermWithEnv body
          else createLetExp $ return $ GoIIFE $ GoFunction [(AnonymousSignature AnyType)] $ applyReturnType AnyType bodyComp
        where
          nextParamNum = paramCount + 1
          letVarName = getVarName nextParamNum
          letBoundedBlock = compileTerm kit nextParamNum args expWithBoundedLet

          isLetBodyPrimitive :: T.TTerm -> Bool
          isLetBodyPrimitive term = 
            -- | is goEnvTrue defName || is goEnvFalse defName = Const $ AU.prettyShow name
            -- | otherwise = GoCreateStruct name []
            case term of
              T.TCon q -> True
              T.TVar x -> True
              _ -> False

          createLetExp expBody = 
            GoLet 
              <$> return letVarName
              <*> expBody
              <*> letBoundedBlock 
        
      T.TLit l -> do
        -- DEBUG_LOGGING
        M.reportS "GO_COMPILER_DEBUG_LOG" 30 $ "TLit l:" M.<+%> l

        return $ literal env l
      T.TCon q -> do
        d <- getConstInfo q

        -- DEBUG_LOGGING
        M.reportS "GO_COMPILER_DEBUG_LOG" 30 $ "TCon d:" M.<+%> d
        name <- liftTCM $ fullName q

        return $ comparethedef name (defName d)
        where
          comparethedef name defName
            | is goEnvTrue defName || is goEnvFalse defName = Const $ AU.prettyShow name
            | otherwise = GoCreateStruct name []
      T.TCase sc ct def alts | T.CTData _ dt <- T.caseType ct -> do
        cases <- mapM (compileAlt kit paramCount args (paramCount - sc)) alts
        return $ GoSwitch (GoVar (paramCount - sc)) cases
      T.TCase _ _ _ _ -> __IMPOSSIBLE__
      T.TPrim p -> do
        -- DEBUG_LOGGING
        M.reportS "GO_COMPILER_DEBUG_LOG" 30 $ "prim:" M.<+%!> p

        return $ compilePrim env p
      T.TUnit -> unit
      T.TSort -> unit
      T.TErased -> unit
      T.TError T.TUnreachable -> return Undefined
      T.TCoerce t -> compileTermWithEnv t
      where
        compileTermWithEnv = compileTerm' env

    getDef (T.TDef f) = Just (Left f)
    getDef (T.TCon c) = Just (Right c)
    getDef (T.TCoerce x) = getDef x
    getDef _ = Nothing

    unit = return Null

    is p q = Just q == p (fst kit)

eraseLocalVars :: [Bool] -> T.TTerm -> T.TTerm
eraseLocalVars [] x = x
eraseLocalVars (False : es) x = eraseLocalVars es x
eraseLocalVars (True : es) x =
  eraseLocalVars es (TC.subst (length es) T.TErased x)

writeModule :: Module -> TCM ()
writeModule m = do
  out <- outFile (modName m)

  -- DEBUG_LOGGING
  M.reportS "GO_COMPILER_DEBUG_LOG" 4 $ "out: :" M.<+%> out
  M.reportS "GO_COMPILER_DEBUG_LOG" 10 $ "module: :" <+> (multiLineText (show m))

  liftIO $ writeFile out $ (show . AU.pretty) m

outFile :: GlobalId -> TCM FilePath
outFile m = do
  mdir <- compileDir
  let (fdir, fn) = splitFileName (goFileName m)
  let dir = mdir </> fdir
      fp = dir </> fn

  -- DEBUG_LOGGING
  M.reportS "GO_COMPILER_DEBUG_LOG" 5 $ " dir o:" M.<+%> dir

  liftIO $ createDirectoryIfMissing True dir
  return fp

-- takes in two arrays, first is usage of arguments, second is arguments.
-- returns only used arguments
returnUsedArgs :: [T.ArgUsage] -> [a] -> [a]
returnUsedArgs bs as = [snd p | p <- zip bs as, fst p == T.ArgUsed]

-- telescope approximation
goTelApproximation :: GoEnv -> Type -> [T.ArgUsage] -> TCM ([TypeId], TypeId)
goTelApproximation env t usage = do
  TelV tel res <- telView t
  let args = map (snd . unDom) (telToList tel)
  -- DEBUG_LOGGING
  M.reportS "GO_COMPILER_DEBUG_LOG" 20 $ " args:" M.<+%> args
  M.reportS "GO_COMPILER_DEBUG_LOG" 20 $ " used:" M.<+%!> usage
  M.reportS "GO_COMPILER_DEBUG_LOG" 20 $ " len:" M.<+%> (length args)

  let filteredArgs = returnUsedArgs usage $ filter isSortType args

  -- DEBUG_LOGGING
  M.reportS "GO_COMPILER_DEBUG_LOG" 20 $ " filteredArgs:" M.<+%> filteredArgs

  (,)
    <$> zipWithM (goTypeApproximation env) [0 ..] filteredArgs
    <*> (goTypeApproximationRet env) (length args) res

-- int is used for adding letter to start of variable name
goTypeApproximation :: GoEnv -> Int -> Type -> TCM TypeId
goTypeApproximation env counter _type = goTypeApproximation' env counter _type False

goTypeApproximationRet :: GoEnv -> Int -> Type -> TCM TypeId
goTypeApproximationRet env counter _type = goTypeApproximation' env counter _type True

goTypeApproximation' :: GoEnv -> Int -> Type -> Bool -> TCM TypeId
goTypeApproximation' env counter _type shouldReturn = do approximate env counter (unEl _type)
  where
    approximate env counter _type = do
      case (unSpine _type) of
        Pi a b -> do
          -- DEBUG_LOGGING
          M.reportS "func_test.go" 10 $ "in pi: :" M.<+%> b

          p1 <- if (shouldReturn) then approximate env counter (unEl $ unDom a) else goTypeApproximation' env counter (unDom a) shouldReturn
          p2 <- if (shouldReturn) then approximate env (counter + k) (unEl $ unAbs b) else goTypeApproximation' env (counter + k) (unAbs b) shouldReturn

          -- DEBUG_LOGGING
          M.reportS "func_test.go" 10 $ "in p1: :" M.<+%> p1
          M.reportS "func_test.go" 10 $ "in p2: :" M.<+%> p2

          return $ PiType p1 p2
          where
            k = case b of
              Abs {} -> 1
              NoAbs {} -> 0
        -- q - qname ; els - eliminations ordered left-to-right.
        Def q els
          | is goEnvInteger -> return $ ConstructorType (getVarName counter) $ if useUint64 then "uint64" else "*big.Int"
          | is goEnvNat -> return $ ConstructorType (getVarName counter) $ if useUint64 then "uint64" else "*big.Int"
          -- | is goEnvBool -> return $ ConstructorType (getVarName counter) "bool"
          | otherwise -> do
            (MemberId name) <- liftTCM $ fullName q
            return $ ConstructorType (getVarName counter) name
          where
            is = isGoType env q
            useUint64 = optUseUint64 (goEnvFlags env)
        Sort {} -> return EmptyType
        Var varN [] -> return $ GenericFunctionType (getVarName counter) ("T" ++ (show varN))
        _ -> return $ ConstructorType (getVarName counter) "any"

isSortType :: Type -> Bool
isSortType t = do
  let tu = unSpine (unEl t)
  case tu of
    Sort {} -> False
    _ -> True

applyReturnType :: TypeId -> Exp -> Exp
applyReturnType retT exp = do
  case exp of
    GoVar x -> ReturnExpression (GoVar x) retT
    GoMethodCall x y -> ReturnExpression (GoMethodCall x y) retT
    GoCreateStruct x y -> ReturnExpression (GoCreateStruct x y) retT
    BinOp x y z -> ReturnExpression (BinOp x y z) retT
    String x -> ReturnExpression (String x) retT
    Integer x -> ReturnExpression (Integer x) retT
    SimpleInteger x -> ReturnExpression (SimpleInteger x) retT
    Const x -> ReturnExpression (Const x) retT
    GoInterface x -> GoInterface x
    GoStruct x y -> GoStruct x y
    GoFunction x y -> GoFunction x $ (applyReturnType retT) y
    GoSwitch x y -> GoSwitch x $ map (applyReturnType retT) y
    GoCase memId a b c x -> do
      if (isLastExpression (last x))
        then GoCase memId a b c $ (init x) ++ [(ReturnExpression (last x) retT)]
        else GoCase memId a b c $ (init x) ++ [(applyReturnType retT (last x))]
    GoIf x y z -> GoIf x (applyReturnType retT y) (applyReturnType retT z)
    GoLet x y z -> GoLet x y (applyReturnType retT z)
    n -> n

isLastExpression :: Exp -> Bool
isLastExpression exp = case exp of
  GoMethodCall x y -> True
  GoCreateStruct x y -> True
  GoVar x -> True
  BinOp x y z -> True
  String x -> True
  Integer x -> True
  SimpleInteger x -> True
  Const x -> True
  _ -> False

outFile_ :: TCM FilePath
outFile_ = do
  m <- curMName
  outFile (goMod m)

literal :: GoEnv -> Literal -> Exp
literal env lt = case lt of
  (LitNat x) -> if useUint64 then SimpleInteger x else Integer x
  (LitWord64 x) -> __IMPOSSIBLE__
  (LitFloat x) -> __IMPOSSIBLE__
  (LitString x) -> __IMPOSSIBLE__
  (LitChar x) -> __IMPOSSIBLE__
  (LitQName x) -> __IMPOSSIBLE__
  LitMeta {} -> __IMPOSSIBLE__
  where
    useUint64 = optUseUint64 (goEnvFlags env)

compilePrim :: GoEnv -> T.TPrim -> Exp
compilePrim env p = if optUseUint64 (goEnvFlags env) then compilePrimWithUint' p else compilePrim' p

compilePrim' :: T.TPrim -> Exp
compilePrim' p = case p of
  T.PEqI -> Const "goRteHelper.Equals"
  T.PSub -> Const "goRteHelper.Subtract"
  T.PMul -> Const "goRteHelper.Multiply"
  T.PAdd -> Const "goRteHelper.Add"
  T.PGeq -> Const "goRteHelper.MoreOrEquals"
  T.PLt -> Const "goRteHelper.Less"
  T.PEqC -> Const "=="
  T.PEqS -> Const "=="
  T.PEq64 -> Const "goRteHelper.Equals"
  T.PLt64 -> Const "goRteHelper.Less"
  T.PEqF -> Const "PEqF"
  T.PEqQ -> Const "PEqQ"
  T.PRem -> Const "PRem"
  T.PQuot -> Const "PQuot"
  T.PAdd64 -> Const "goRteHelper.Add"
  T.PSub64 -> Const "goRteHelper.Subtract"
  T.PMul64 -> Const "goRteHelper.Multiply"
  T.PRem64 -> Const "PRem64"
  T.PQuot64 -> Const "PQuot64"
  T.PITo64 -> Const "PITo64"
  T.P64ToI -> Const "P64ToI"
  T.PSeq -> Const "PSeq"
  T.PIf -> __IMPOSSIBLE__

compilePrimWithUint' :: T.TPrim -> Exp
compilePrimWithUint' p = case p of
  T.PEqI -> Const "goRteHelper.UintEquals"
  T.PSub -> Const "goRteHelper.UintSubtract"
  T.PMul -> Const "goRteHelper.UintMultiply"
  T.PAdd -> Const "goRteHelper.UintAdd"
  T.PGeq -> Const "goRteHelper.UintMoreOrEquals"
  T.PLt -> Const "goRteHelper.UintLess"
  T.PEqC -> Const "=="
  T.PEqS -> Const "=="
  T.PEq64 -> Const "goRteHelper.UintEquals"
  T.PLt64 -> Const "goRteHelper.UintLess"
  T.PEqF -> Const "PEqF"
  T.PEqQ -> Const "PEqQ"
  T.PRem -> Const "PRem"
  T.PQuot -> Const "PQuot"
  T.PAdd64 -> Const "goRteHelper.UintAdd"
  T.PSub64 -> Const "goRteHelper.UintSubtract"
  T.PMul64 -> Const "goRteHelper.UintMultiply"
  T.PRem64 -> Const "PRem64"
  T.PQuot64 -> Const "PQuot64"
  T.PITo64 -> Const "PITo64"
  T.P64ToI -> Const "P64ToI"
  T.PSeq -> Const "PSeq"
  T.PIf -> __IMPOSSIBLE__

-- | Cubical primitives that are (currently) not compiled.
--
-- TODO: Primitives that are neither part of this set nor of
-- 'primitives', and for which 'defGoDef' does not return anything,
-- are silently compiled to 'Undefined'. Thus, if a cubical primitive
-- is by accident omitted from 'cubicalPrimitives', then programs that
-- should be rejected are compiled to something which might not work
-- as intended. A better approach might be to list exactly those
-- primitives which should be compiled to 'Undefined'.
cubicalPrimitives :: Set String
cubicalPrimitives =
  Set.fromList
    [ "primIMin",
      "primIMax",
      "primINeg",
      "primPartial",
      "primPartialP",
      "primPFrom1",
      "primPOr",
      "primComp",
      "primTransp",
      "primHComp",
      "primSubOut"
    ]

-- | Primitives implemented in the Go Agda RTS.
primitives :: Set String
primitives =
  Set.fromList
    [ "primShowInteger",
      -- Natural number functions
      -- , "primNatPlus"                 -- missing
      "primNatMinus",
      -- , "primNatTimes"                -- missing
      -- , "primNatDivSucAux"            -- missing
      -- , "primNatModSucAux"            -- missing
      -- , "primNatEquality"             -- missing
      -- , "primNatLess"                 -- missing
      -- , "primShowNat"                 -- missing

      -- Machine words
      "primWord64ToNat",
      "primWord64FromNat",
      -- , "primWord64ToNatInjective"    -- missing

      -- Level functions
      -- , "primLevelZero"               -- missing
      -- , "primLevelSuc"                -- missing
      -- , "primLevelMax"                -- missing

      -- Sorts
      -- , "primSetOmega"                -- missing
      -- , "primStrictSetOmega"          -- missing

      -- Floating point functions
      "primFloatEquality",
      "primFloatInequality",
      "primFloatLess",
      "primFloatIsInfinite",
      "primFloatIsNaN",
      "primFloatIsNegativeZero",
      "primFloatIsSafeInteger",
      "primFloatToWord64",
      -- , "primFloatToWord64Injective"  -- missing
      "primNatToFloat",
      "primIntToFloat",
      -- , "primFloatRound"              -- in Agda.Builtin.Float
      -- , "primFloatFloor"              -- in Agda.Builtin.Float
      -- , "primFloatCeiling"            -- in Agda.Builtin.Float
      -- , "primFloatToRatio"            -- in Agda.Builtin.Float
      "primRatioToFloat",
      -- , "primFloatDecode"             -- in Agda.Builtin.Float
      -- , "primFloatEncode"             -- in Agda.Builtin.Float
      "primShowFloat",
      "primFloatPlus",
      "primFloatMinus",
      "primFloatTimes",
      "primFloatNegate",
      "primFloatDiv",
      "primFloatSqrt",
      "primFloatExp",
      "primFloatLog",
      "primFloatSin",
      "primFloatCos",
      "primFloatTan",
      "primFloatASin",
      "primFloatACos",
      "primFloatATan",
      "primFloatATan2",
      "primFloatSinh",
      "primFloatCosh",
      "primFloatTanh",
      "primFloatASinh",
      "primFloatACosh",
      "primFloatATanh",
      "primFloatPow",
      -- Character functions
      -- , "primCharEquality"            -- missing
      -- , "primIsLower"                 -- missing
      -- , "primIsDigit"                 -- missing
      -- , "primIsAlpha"                 -- missing
      -- , "primIsSpace"                 -- missing
      -- , "primIsAscii"                 -- missing
      -- , "primIsLatin1"                -- missing
      -- , "primIsPrint"                 -- missing
      -- , "primIsHexDigit"              -- missing
      -- , "primToUpper"                 -- missing
      -- , "primToLower"                 -- missing
      -- , "primCharToNat"               -- missing
      -- , "primCharToNatInjective"      -- missing
      -- , "primNatToChar"               -- missing
      -- , "primShowChar"                -- in Agda.Builtin.String

      -- String functions
      -- , "primStringToList"            -- in Agda.Builtin.String
      -- , "primStringToListInjective"   -- missing
      -- , "primStringFromList"          -- in Agda.Builtin.String
      -- , "primStringFromListInjective" -- missing
      -- , "primStringAppend"            -- in Agda.Builtin.String
      -- , "primStringEquality"          -- in Agda.Builtin.String
      -- , "primShowString"              -- in Agda.Builtin.String
      -- , "primStringUncons"            -- in Agda.Builtin.String

      -- Other stuff
      -- , "primEraseEquality"           -- missing
      -- , "primForce"                   -- missing
      -- , "primForceLemma"              -- missing
      "primQNameEquality",
      "primQNameLess",
      "primShowQName",
      "primQNameFixity"
      -- , "primQNameToWord64s"          -- missing
      -- , "primQNameToWord64sInjective" -- missing
      -- , "primMetaEquality"            -- missing
      -- , "primMetaLess"                -- missing
      -- , "primShowMeta"                -- missing
      -- , "primMetaToNat"               -- missing
      -- , "primMetaToNatInjective"      -- missing
      -- , "primIMin"                    -- missing
      -- , "primIMax"                    -- missing
      -- , "primINeg"                    -- missing
      -- , "primPOr"                     -- missing
      -- , "primComp"                    -- missing
      -- , builtinTrans                  -- missing
      -- , builtinHComp                  -- missing
      -- , "primIdJ"                     -- missing
      -- , "primPartial"                 -- missing
      -- , "primPartialP"                -- missing
      -- , builtinGlue                   -- missing
      -- , builtin_glue                  -- missing
      -- , builtin_unglue                -- missing
      -- , builtinFaceForall             -- missing
      -- , "primDepIMin"                 -- missing
      -- , "primIdFace"                  -- missing
      -- , "primIdPath"                  -- missing
      -- , builtinIdElim                 -- missing
      -- , builtinSubOut                 -- missing
      -- , builtin_glueU                 -- missing
      -- , builtin_unglueU               -- missing
    ]
