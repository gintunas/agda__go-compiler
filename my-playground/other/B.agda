module B where

open import Agda.Builtin.Bool
open import Agda.Builtin.Nat

-- Agda boolean OR function:
Bor : Bool → Bool → Bool
Bor true _ = true
Bor _ true = true
Bor _ _ = false

Bnot : Bool → Bool
Bnot true = false
Bnot false = true

Badd : Nat → Nat → Nat
Badd n zero      = n
Badd n (suc m)   = Badd (suc n) m