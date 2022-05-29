module compilationTestsSimple where

open import Agda.Builtin.Bool
open import Agda.Builtin.Nat
open import A
open import B
open import C
open import D
open import E
open import F
open import G
open import H
open import I

-- Agda boolean OR function:
or : Bool → Bool → Bool
or true _ = true
or _ true = true
or _ _ = false

-- not : Bool → Bool
-- not true = false
-- not false = true

-- add : Nat → Nat → Nat
-- add n zero      = n
-- add n (suc m)   = add (suc n) m