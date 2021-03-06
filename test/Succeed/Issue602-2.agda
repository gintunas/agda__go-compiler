-- Record projections should be positive in their argument
module Issue602-2 where

record A : Setâ where
  constructor mkA
  field
    f : Set

unA : A â Set
unA (mkA x) = x

data B (a : A) : Set where
  mkB : unA a â B a

data D : Set where
  d : B (mkA D) â D
