module Agda.Compiler.GoLang.Misc where

-- import Prelude
-- import Agda.Compiler.Backend hiding (liftTCM)
-- import Agda.Utils.Pretty
-- import Agda.TypeChecking.Monad.Base

import qualified Agda.Syntax.Treeless as T

divider = "==================================================================================================="

-- reportSDocDivided :: MonadDebug m => VerboseKey -> VerboseLevel -> TCM Doc -> m ()
-- reportSDocDivided vk vl tdoc = do
--     doc <- tdoc
--     return $ reportSDoc vk vl $ liftTCM doc


mapBoolToArgUsage :: Bool -> T.ArgUsage
mapBoolToArgUsage b = if b then T.ArgUnused else T.ArgUsed

    