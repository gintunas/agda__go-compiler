module A where

open import Agda.Builtin.Bool
open import Agda.Builtin.Nat

-- Agda boolean OR function:
Aor : Bool → Bool → Bool
Aor true _ = true
Aor _ true = true
Aor _ _ = false

Anot : Bool → Bool
Anot true = false
Anot false = true

Aadd : Nat → Nat → Nat
Aadd n zero      = n
Aadd n (suc m)   = Aadd (suc n) m