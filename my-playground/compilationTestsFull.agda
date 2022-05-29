module compilationTestsFull where

open import Agda.Builtin.Nat
open import Agda.Builtin.Bool

-------------------------------------------------------------------------------

-- SIMPLE BOOL OPERATIONS

and : Bool → Bool → Bool
and true true = true
and _ _ = false

xor : Bool → Bool → Bool
xor true false = true
xor false true = true
xor _ _ = false

not : Bool → Bool
not true = false
not false = true

or : Bool → Bool → Bool
or true _ = true
or _ true = true
or _ _ = false

-------------------------------------------------------------------------------

add : Nat → Nat → Nat
add n zero      = n
add n (suc m)   = add (suc n) m

sub : Nat → Nat → Nat
sub zero _ = zero
sub n zero = n
sub (suc n) (suc m) = sub n m

mul : Nat → Nat → Nat
mul zero _ = zero
mul _ zero = zero
mul n (suc m) = add n (mul n m)

-------------------------------------------------------------------------------

-- FIBONACCI

fib : Nat → Nat
fib 0 = 0
fib 1 = 1
fib (suc (suc n)) = fib (suc n) + fib n

-------------------------------------------------------------------------------

-- FOR

factorial : Nat -> Nat
factorial zero = 1  
factorial (suc n) = (suc n) * factorial n

-------------------------------------------------------------------------------
