-- Andreas, 2015-02-13
-- Termination errors in parametrized modules

module Issue1429 (A : Set) (f : A â A) where

  test : A â A
  test a = test (f a)

-- should report problematic call
--
--     test (f a)
--
-- not
--
--     test (fâ a)

