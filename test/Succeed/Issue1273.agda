
data Bool : Set where
  true : Bool
  false : Bool

record Eq (t : Set) : Set where
   field _==_ : t â t â Bool

open Eq {{...}}

-- Now package this into a record type for "sets with boolean equality":
record EqSet : Setâ where
  field
    set : Set
    instance eq : Eq set

open EqSet {{...}}

equality : {{A : EqSet}} (x y : set) â Bool
equality x y = x == y
