module D where

open import Agda.Builtin.Bool
open import Agda.Builtin.Nat

-- Agda boolean OR function:
Dor : Bool → Bool → Bool
Dor true _ = true
Dor _ true = true
Dor _ _ = false

Dnot : Bool → Bool
Dnot true = false
Dnot false = true

Dadd : Nat → Nat → Nat
Dadd n zero      = n
Dadd n (suc m)   = Dadd (suc n) m