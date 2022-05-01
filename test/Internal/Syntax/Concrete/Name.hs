
module Internal.Syntax.Concrete.Name () where

import Agda.Syntax.Concrete.Name
import Agda.Utils.Function ( applyWhen )
import Agda.Utils.List1    ( (<|) )
import qualified Agda.Utils.List1 as List1

import Internal.Helpers
import Internal.Syntax.Common ()
import Internal.Syntax.Position ()

import Test.QuickCheck

------------------------------------------------------------------------
-- * QuickCheck instances
------------------------------------------------------------------------

instance Arbitrary TopLevelModuleName where
  arbitrary = TopLevelModuleName <$> arbitrary <*> list1Of (listOf1 $ elements "AB")

instance CoArbitrary TopLevelModuleName where
  coarbitrary (TopLevelModuleName _ m) = coarbitrary m

instance Arbitrary Name where
  arbitrary = oneof
    [ Name   <$> arbitrary <*> pure InScope <*> parts
    , NoName <$> arbitrary <*> arbitrary
    ]
    where
    parts = do
      parts         <- list1Of $ elements ["x", "y", "z"]
      startWithHole <- arbitrary
      endWithHole   <- arbitrary
      return $
        applyWhen startWithHole (Hole <|) $
        applyWhen endWithHole   (`List1.append` [Hole]) $
        List1.intersperse Hole $ fmap Id parts

instance CoArbitrary NamePart

instance CoArbitrary Name where
  coarbitrary (Name _ _ ns) = variant 0 . coarbitrary ns
  coarbitrary (NoName _ i)  = variant 1 . coarbitrary i
