-- Andreas, 2020-02-15, issue #4447, reported by zraffer

record Wrap : Setโ where
  constructor โ
  field โ : Set
open Wrap public

data Unit : Set

-- The type checker sees through this definition,
-- thus, the positivity checker should as well:
๐nit = โ Unit

data Unit where
  unit : โ ๐nit

-- WAS: internal error in the positivity checker.
