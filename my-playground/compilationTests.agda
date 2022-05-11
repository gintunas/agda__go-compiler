module compilationTests where

open import Agda.Builtin.Nat

-------------------------------------------------------------------------------

-- SIMPLE ADD

add : Nat → Nat → Nat
add n zero      = n
add n (suc m)   = add (suc n) m

-------------------------------------------------------------------------------

-- open import Agda.Builtin.List

-- addLists : List Nat → List Nat → List Nat
-- addLists [] ys = ys
-- addLists (x ∷ xs) ys = x ∷ (addLists xs ys)

-- mapList : (Nat → Nat) → List Nat → List Nat
-- mapList f xs = PMapList f xs []
--     where
--     PMapList : (Nat → Nat) → List Nat → List Nat → List Nat
--     PMapList f [] ys = ys
--     PMapList f (x ∷ xs) ys = PMapList f xs ( addLists ys ( f x ∷ [] ) )

-------------------------------------------------------------------------------

-- FOR

-- factorial : Nat -> Nat
-- factorial zero = 1  
-- factorial (suc n) = (suc n) * factorial n

-------------------------------------------------------------------------------

-- DEPENDENT TYPES

-------------------------------------------------------------------------------

-- variable
--     A : Set
--     m n : Nat

-------------------------------------------------------------------------------

-- 1. IDENTITY

-- identity : (A : Set) -> A -> A
-- identity A x = x

-- zeroIdentity : Nat
-- zeroIdentity = identity Nat zero

-- invalid_identity : Nat
-- invalid_identity = identity Nat "My-type"

-------------------------------------------------------------------------------

-- 2. VECTOR

-- data Vec A : Nat → Set where
--     [] : Vec A 0
--     _∷_ : {n : Nat} → A → Vec A n → Vec A (suc n)


-- _++v_ : Vec A m → Vec A n → Vec A (m + n) -- vector append
-- [] ++v ys = ys
-- (x ∷ xs) ++v ys = x ∷ (xs ++v ys)

-- 3. SAFE GET VECTOR ELEMENT

-- data Fin : Nat → Set where
--     zero : Fin (suc n)
--     suc : Fin n → Fin (suc n)

-- REIKIA GALVOT, KOKIUS FINUS GALI SUKURT IS KOKIU NAT'U
-- zero yra elementas Fin 1, Fin 2, Fin 3 ...
-- suc zero - sukuriam Fin 2 su pirma salyga, Fin 3 ir daugiau susikuria su antra salyga
-- Fin 0 = {}
-- Fin 1 = { 0 }
-- Fin 2 = { 0 , 1 }
-- Fin 3 = { 0 , 1 , 2}

-- Get n-th element of vector
-- _!!v_ : Vec A n → Fin n → A 
-- (x ∷ xs) !!v zero = x
-- (x ∷ xs) !!v suc n = xs !!v n

-- EXAMPLE:

-- v1 : Vec Nat 2
-- v1 = 1 ∷ 2 ∷ []

-- secondVectorElement = v1 !!v (suc zero)
-- INVALID
-- thirdVectorElement = v1 !!v (suc (suc zero))

-------------------------------------------------------------------------------

-- RECORDS

-- record Point : Set where
--     field x : Nat
--     field y : Nat

-- mkPoint : Nat -> Nat -> Point
-- mkPoint a b = record{ x = a; y = b }

-------------------------------------------------------------------------------

-- INPUT

-- open import Agda.Builtin.IO using (IO)
-- open import Agda.Builtin.Unit using (⊤)
-- open import Agda.Builtin.String using (String)

-- postulate putStrLn : String → IO ⊤
-- {-# FOREIGN GHC import qualified Data.Text as T #-}
-- {-# COMPILE GHC putStrLn = putStrLn . T.unpack #-}

-- main : IO ⊤
-- main = putStrLn "Hello world!"

-------------------------------------------------------------------------------
