postulate
  A : Set

data D : Set â Setâ where
  d : (A : Set) â D A

f : Set â D A
f A = d A

-- Expected error:
-- A != A of type Set
-- (because one is a variable and one a defined identifier)
-- when checking that the expression d A has type D A

-- Jesper, 2018-12-10: New error:
-- A != Issue998a.A of type Set
-- when checking that the expression d A has type D Issue998a.A
