
module _ (_ : Set) where

open import Imports.Issue5198 Set

data D : Set where
  r : D

F : D â Setâ
F r = R

f : {d : D} â F d â F d
f x = x

_ : R
_ = f record {A = Set}
