
module _ where

open import DeadCodePatSyn.Lib

typeOf : {A : Set} â A â Set
typeOf {A} _ = A

-- Check that pattern synonyms count when computing dead code
f : typeOf not-hidden â Setâ
f not-hidden = Set
