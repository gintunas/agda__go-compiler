{-# OPTIONS --without-K #-}

postulate
  A : Set
  B : A â Set

-- fine
record Râ : Set where
  field
    @0 x : A
    @0 y : B x

-- bad
record R : Set where
  field
    @0 x : A
    y : B x
