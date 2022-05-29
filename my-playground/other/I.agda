module I where

open import Agda.Builtin.Bool
open import Agda.Builtin.Nat

-- Agda boolean OR function:
Ior : Bool → Bool → Bool
Ior true _ = true
Ior _ true = true
Ior _ _ = false

Inot : Bool → Bool
Inot true = false
Inot false = true

Iadd : Nat → Nat → Nat
Iadd n zero      = n
Iadd n (suc m)   = Iadd (suc n) m