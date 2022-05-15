module Agda.Compiler.GoLang.Misc where

import qualified Agda.Syntax.Treeless as T

import Agda.Compiler.Backend
import Agda.TypeChecking.Monad.Base
import Agda.Utils.Pretty

import Data.Char (isAsciiUpper, isLetter, isDigit, ord)

-- import qualified Agda.Compiler.GoLang.Syntax as GS
-- import Agda.Syntax.Abstract.Name ( QName )
 
divider = "\n================================================================================\n"

-- prints debug message to console beautifully, specifying it's key and level, separating with dividers
-- EXAMPLE USAGE in CLI: `agda-2.6.2.2-golang --go -v function.go:20 compilationTests.agda`
reportSDocDivided :: MonadDebug m => VerboseKey -> VerboseLevel -> TCM Doc -> m ()
reportSDocDivided vk vl tdoc = reportSDoc vk vl $ (\x -> ("\nGO_COMPILER_DEBUG_LOG\nV_KEY:" <+> (text.show) vk <+> "\nV_LEVEL:" <+> (text.show) vl <+> divider <+> x <+> divider)) <$> tdoc 

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
  case isAsciiUpper c of
    True  -> encodeChars (name)
    False -> encodeChars $ 'F' : name

encodeChars :: [Char] -> String
encodeChars (c : tail) = (encodeChar c) ++ (encodeChars tail)
encodeChars []         = []

encodeChar :: Char -> String
encodeChar c = do
  case isValidChar c of
    True  -> [c]
    False -> "u" ++ (show (ord c))

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