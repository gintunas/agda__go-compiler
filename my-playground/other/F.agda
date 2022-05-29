module F where

open import Agda.Builtin.Bool
open import Agda.Builtin.Nat

-- Agda boolean OR function:
For : Bool → Bool → Bool
For true _ = true
For _ true = true
For _ _ = false

Fnot : Bool → Bool
Fnot true = false
Fnot false = true

Fadd : Nat → Nat → Nat
Fadd n zero      = n
Fadd n (suc m)   = Fadd (suc n) m