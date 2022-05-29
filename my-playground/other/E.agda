module E where

open import Agda.Builtin.Bool
open import Agda.Builtin.Nat

-- Agda boolean OR function:
Eor : Bool → Bool → Bool
Eor true _ = true
Eor _ true = true
Eor _ _ = false

Enot : Bool → Bool
Enot true = false
Enot false = true

Eadd : Nat → Nat → Nat
Eadd n zero      = n
Eadd n (suc m)   = Eadd (suc n) m