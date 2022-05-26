module compilationTestsSimple where

open import Agda.Builtin.Bool

-- Agda boolean OR function:
or : Bool → Bool → Bool
or true _ = true
or _ true = true
or _ _ = false