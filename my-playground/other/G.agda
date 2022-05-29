module G where

open import Agda.Builtin.Bool
open import Agda.Builtin.Nat

-- Agda boolean OR function:
Gor : Bool → Bool → Bool
Gor true _ = true
Gor _ true = true
Gor _ _ = false

Gnot : Bool → Bool
Gnot true = false
Gnot false = true

Gadd : Nat → Nat → Nat
Gadd n zero      = n
Gadd n (suc m)   = Gadd (suc n) m