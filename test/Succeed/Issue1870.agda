
module _ where

postulate
  U : Set
  u : U

module M (x : U) where
  postulate f : U â U

module Mâ = M (M.f u u)  -- this caused a 'recursive display form' error
