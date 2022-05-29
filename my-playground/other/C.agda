module C where

open import Agda.Builtin.Bool
open import Agda.Builtin.Nat

-- Agda boolean OR function:
Cor : Bool → Bool → Bool
Cor true _ = true
Cor _ true = true
Cor _ _ = false

Cnot : Bool → Bool
Cnot true = false
Cnot false = true

Cadd : Nat → Nat → Nat
Cadd n zero      = n
Cadd n (suc m)   = Cadd (suc n) m