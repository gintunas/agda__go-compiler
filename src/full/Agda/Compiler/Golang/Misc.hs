module Agda.Compiler.Golang.Misc where

import qualified Agda.Syntax.Treeless as T

import qualified Agda.Compiler.Backend as CB
import Agda.TypeChecking.Monad.Base
import Agda.Utils.Pretty

import Data.Char (isAsciiUpper, isLetter, isDigit, ord)

-- import qualified Agda.Compiler.Golang.Syntax as GS
-- import Agda.Syntax.Abstract.Name ( QName )

divider = "\n================================================================================\n"

-- prints debug message to console beautifully, specifying it's key and level, separating with dividers
-- EXAMPLE USAGE in CLI: `agda-2.6.2.2-golang --go -v function.go:20 compilationTests.agda`
-- reportSDocDivided :: MonadDebug m => VerboseKey -> VerboseLevel -> TCM Doc -> m ()
-- reportSDocDivided vk vl tdoc = reportSDoc vk vl $ (\x -> ("\nGO_COMPILER_DEBUG_LOG\nV_KEY:" <+> (text.show) vk <+> "\nV_LEVEL:" <+> (text.show) vl <+> divider <+> x <+> divider)) <$> tdoc
-- reportSDocDivided vk vl tdoc = reportSDoc vk vl $ (\x -> x ) <$> tdoc

reportS :: CB.MonadDebug m => CB.VerboseKey -> CB.VerboseLevel -> TCM Doc -> m ()
reportS vk vl tdoc = do
  CB.reportS vk vl $ "\nGO_COMPILER_DEBUG_LOG\nV_KEY:" <+> (text.show) vk <+> "\nV_LEVEL:" <+> (text.show) vl <+> divider
  CB.reportS vk vl tdoc
  CB.reportS vk vl $ divider

-- aliases of functions for showing intermediate compilation values
(<+%>) :: (Pretty a) => Doc -> a -> TCM Doc
d <+%> a = returnTCMT $ d <+> (text . prettyShow) a

(<+%!>) :: (Show a) => Doc -> a -> TCM Doc
d <+%!> a = returnTCMT $ d <+> (text . show) a

mapBoolToArgUsage :: Bool -> T.ArgUsage
mapBoolToArgUsage b = if b then T.ArgUnused else T.ArgUsed

encode :: [Char] -> String
encode []              = []
encode name@(c : tail) = do
  if isAsciiUpper c then encodeChars (name) else encodeChars $ "F_" <> name

encodeChars :: [Char] -> String
encodeChars tail = concatMap encodeChar tail

encodeChar :: Char -> String
encodeChar c = do
  if isValidChar c then [c] else "u" ++ (show (ord c))

isValidChar :: Char -> Bool
isValidChar c = (isLetter c) || ('_' == c) || (isDigit c)

-- unqgname :: NameKind -> QName -> GS.Name
-- unqhname k q =
--   GS.Ident $ encodeString k $
--     "_" ++ prettyShow (nameCanonical n) ++ "_" ++ idnum (nameId n)
--   where
--   n = qnameName q

--   idnum (NameId x _) = show (fromIntegral x)


-- dname :: QName -> GS.Name
-- dname q = unqgname (FunK PossiblyUnused) q