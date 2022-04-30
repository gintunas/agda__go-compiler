-- Andreas, 2018-06-19, issue #3130
-- Produce parenthesized dot pattern .(p) instead of .p
-- when is a projection.

-- {-# OPTIONS -v reify.pat:80 #-}

record R : Set₁ where
  field p : Set
open R

data D : (R → Set) → Set₁ where
  c : D p

test : (f : R → Set) (x : D f) → Set₁
test f x = {!x!}  -- split on x

-- Expected:
-- test .(p) c = ?
