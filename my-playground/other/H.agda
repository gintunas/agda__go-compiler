module H where

open import Agda.Builtin.Bool
open import Agda.Builtin.Nat

-- Agda boolean OR function:
Hor : Bool → Bool → Bool
Hor true _ = true
Hor _ true = true
Hor _ _ = false

Hnot : Bool → Bool
Hnot true = false
Hnot false = true

Hadd : Nat → Nat → Nat
Hadd n zero      = n
Hadd n (suc m)   = Hadd (suc n) m