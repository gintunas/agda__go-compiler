-- The debug output should include the text "Termination checking
-- mutual block MutId 0" once, not three times.

{-# OPTIONS -vterm.mutual.id:40 #-}

open import Agda.Builtin.Nat

record R : Setâ where
  field
    A : Set

  f0 : Nat â Nat
  f0 zero    = zero
  f0 (suc n) = f0 n

  f1 : Nat â Nat
  f1 zero    = zero
  f1 (suc n) = f1 n

  f2 : Nat â Nat
  f2 zero    = zero
  f2 (suc n) = f2 n

-- Included in order to make the code fail to type-check.

Bad : Set
Bad = Set
