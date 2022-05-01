-- show : Nat → String
-- show 0 = "0"
-- show n = (fromList ∘ map convert ∘ reverse ∘ toDigits) n
--   where
--   convert : Nat → Char
--   convert 0 = '0'
--   convert 1 = '1'
--   convert 2 = '2'
--   convert 3 = '3'
--   convert 4 = '4'
--   convert 5 = '5'
--   convert 6 = '6'
--   convert 7 = '7'
--   convert 8 = '8'
--   convert 9 = '9'
--   convert _ = ' ' -- Never happens.

open import Data.Nat.Show

open import Agda.Builtin.Nat
open import Agda.Builtin.String

open import Agda.Builtin.IO using (IO)
open import Agda.Builtin.Unit using (⊤)

postulate putStrLn : String → IO ⊤
{-# FOREIGN GHC import qualified Data.Text as T #-}
{-# COMPILE GHC putStrLn = putStrLn . T.unpack #-}

add : Nat → Nat → Nat
add n zero      = n
add n (suc m)   = add (suc n) m

add_show : Nat → Nat → IO ⊤
add_show n m = putStrLn (show (add n m))
