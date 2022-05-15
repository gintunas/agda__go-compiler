module Agda.Compiler.GoLang.Misc where

import qualified Agda.Syntax.Treeless as T

import Agda.Compiler.Backend
import Agda.TypeChecking.Monad.Base
import Agda.Utils.Pretty
 
divider = "\n================================================================================\n"

-- prints debug message to console beautifully, specifying it's key and level, separating with dividers
-- EXAMPLE USAGE in CLI: `agda-2.6.2.2-golang --go -v function.go:20 compilationTests.agda`
reportSDocDivided :: MonadDebug m => VerboseKey -> VerboseLevel -> TCM Doc -> m ()
reportSDocDivided vk vl tdoc = reportSDoc vk vl $ (\x -> ("\nGO_COMPILER_DEBUG_LOG\nV_KEY:" <+> (text.show) vk <+> "\nV_LEVEL:" <+> (text.show) vl <+> divider <+> x <+> divider)) <$> tdoc 

mapBoolToArgUsage :: Bool -> T.ArgUsage
mapBoolToArgUsage b = if b then T.ArgUnused else T.ArgUsed

-- aliases of functions for showing intermediate compilation values
(<+%>) :: (Pretty a) => Doc -> a -> TCM Doc
d <+%> a = returnTCMT $ d <+> (text . prettyShow) a

(<+%!>) :: (Show a) => Doc -> a -> TCM Doc
d <+%!> a = returnTCMT $ d <+> (text . show) a