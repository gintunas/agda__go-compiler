{-# OPTIONS --allow-unsolved-metas --no-termination-check #-}

module TT where

module Prelude where

-- Props ------------------------------------------------------------------

  data True : Set where
    tt : True

  data False : Set where

  postulate
    falseE : (A : Set) -> False -> A

  infix 3 _/\_

  data _/\_ (P Q : Set) : Set where
    andI : P -> Q -> P /\ Q

  -- Zero and One -----------------------------------------------------------

  data Zero : Set where

  data One : Set where
    unit : One

  -- Natural numbers --------------------------------------------------------

  data Nat : Set where
    zero : Nat
    suc  : Nat -> Nat

  _+_ : Nat -> Nat -> Nat
  zero  + m = m
  suc n + m = suc (n + m)

  module NatEq where

    infix 5 _==_

    _==_ : Nat -> Nat -> Set
    zero  == zero = True
    suc n == suc m = n == m
    _     == _     = False

    rewriteEq : (C : Nat -> Set){m n : Nat} -> m == n -> C n -> C m
    rewriteEq C {zero}  {zero}  _  x = x
    rewriteEq C {suc _} {suc _} eq x = rewriteEq (\z -> C (suc z)) eq x
    rewriteEq C {zero}  {suc _} () _
    rewriteEq C {suc _} {zero}  () _

module Chain {A : Set}(_==_ : A -> A -> Set)
             (_trans_ : {x y z : A} -> x == y -> y == z -> x == z)
    where

  infixl 4 _=-=_
  infixl 4 _===_
  infixr 8 _since_

  _=-=_ : (x : A){y : A} -> x == y -> x == y
  x =-= xy = xy

  _===_ : {x y z : A} -> x == y -> y == z -> x == z
  xy === yz = xy trans yz

  _since_ : {x : A}(y : A) -> x == y -> x == y
  y since xy = xy

module Fin where

  open Prelude

  -- Finite sets ------------------------------------------------------------

  data Suc (A : Set) : Set where
    fzero' : Suc A
    fsuc'  : A -> Suc A

  mutual
    data Fin (n : Nat) : Set where
      finI : Fin' n -> Fin n

    Fin' : Nat -> Set
    Fin'  zero   = Zero
    Fin' (suc n) = Suc (Fin n)

  fzero : {n : Nat} -> Fin (suc n)
  fzero = finI fzero'

  fsuc : {n : Nat} -> Fin n -> Fin (suc n)
  fsuc i = finI (fsuc' i)

  finE : {n : Nat} -> Fin n -> Fin' n
  finE (finI i) = i

  module FinEq where

    infix 5 _==_

    _==_ : {n : Nat} -> Fin n -> Fin n -> Set
    _==_ {suc _} (finI  fzero'  ) (finI  fzero'  ) = True
    _==_ {suc _} (finI (fsuc' i)) (finI (fsuc' j)) = i == j
    _==_          _                _               = False

    rewriteEq : {n : Nat}(C : Fin n -> Set){i j : Fin n} -> i == j -> C j -> C i
    rewriteEq {suc _} C {finI  fzero'  } {finI  fzero'  } eq x = x
    rewriteEq {suc _} C {finI (fsuc' i)} {finI (fsuc' j)} eq x = rewriteEq (\z -> C (fsuc z)) eq x
    rewriteEq {suc _} C {finI (fsuc' _)} {finI fzero'   } () _
    rewriteEq {suc _} C {finI fzero'   } {finI (fsuc' _)} () _
    rewriteEq {zero}  C {finI ()}        {_}              _  _

module Vec where

  open Prelude
  open Fin

  infixr 15 _::_

  -- Vectors ----------------------------------------------------------------

  data Nil : Set where
    nil' : Nil

  data Cons (A As : Set) : Set where
    cons' : A -> As -> Cons A As

  mutual
    data Vec (A : Set)(n : Nat) : Set where
      vecI : Vec' A n -> Vec A n

    Vec' : Set -> Nat -> Set
    Vec' A  zero   = Nil
    Vec' A (suc n) = Cons A (Vec A n)

  nil : {A : Set} -> Vec A zero
  nil = vecI nil'

  _::_ : {A : Set}{n : Nat} -> A -> Vec A n -> Vec A (suc n)
  x :: xs = vecI (cons' x xs)

  vecE : {A : Set}{n : Nat} -> Vec A n -> Vec' A n
  vecE (vecI xs) = xs

  vec : {A : Set}(n : Nat) -> A -> Vec A n
  vec  zero   _ = nil
  vec (suc n) x = x :: vec n x

  map : {n : Nat}{A B : Set} -> (A -> B) -> Vec A n -> Vec B n
  map {zero}  f (vecI nil')         = nil
  map {suc n} f (vecI (cons' x xs)) = f x :: map f xs

  _!_ : {n : Nat}{A : Set} -> Vec A n -> Fin n -> A
  _!_ {zero } _                   (finI ())
  _!_ {suc n} (vecI (cons' x _ )) (finI fzero')    = x
  _!_ {suc n} (vecI (cons' _ xs)) (finI (fsuc' i)) = xs ! i

  tabulate : {n : Nat}{A : Set} -> (Fin n -> A) -> Vec A n
  tabulate {zero}  f = nil
  tabulate {suc n} f = f fzero :: tabulate (\x -> f (fsuc x))

module Untyped where

  open Prelude
  open Fin
  open Vec

  Name = Nat

  data Expr (n : Nat) : Set where
    eVar : Fin n -> Expr n
    eApp : Expr n -> Expr n -> Expr n
    eLam : Expr (suc n) -> Expr n
    eSet : Expr n
    eEl  : Expr n
    ePi  : Expr n
    eCon : Name -> Expr n

  module ExprEq where

    infix 5 _==_

    _==_ : {n : Nat} -> Expr n -> Expr n -> Set
    eVar i              == eVar j                = FinEq._==_ i j
    eApp e1 e2          == eApp e3 e4            = e1 == e3 /\ e2 == e4
    eLam e1             == eLam e2               = e1 == e2
    eSet                == eSet                  = True
    eEl                 == eEl                   = True
    ePi                 == ePi                   = True
    eCon f              == eCon g                = NatEq._==_ f g
    _                   == _                     = False

    rewriteEq : {n : Nat}(C : Expr n -> Set){r s : Expr n} -> r == s -> C s -> C r
    rewriteEq C {eVar i    } {eVar j    } eq x = FinEq.rewriteEq (\z -> C (eVar z)) eq x
    rewriteEq C {eLam e1   } {eLam e2   } eq x = rewriteEq (\z -> C (eLam z)) eq x
    rewriteEq C {eSet      } {eSet      } eq x = x
    rewriteEq C {eEl       } {eEl       } eq x = x
    rewriteEq C {ePi       } {ePi       } eq x = x
    rewriteEq C {eCon f    } {eCon g    } eq x = NatEq.rewriteEq (\z -> C (eCon z)) eq x
    rewriteEq C {eApp e1 e2} {eApp e3 e4} (andI eq13 eq24) x =
      rewriteEq (\z -> C (eApp z e2)) eq13 (
        rewriteEq (\z -> C (eApp e3 z)) eq24 x
      )
    rewriteEq C {eVar _} {eLam _  } () _
    rewriteEq C {eVar _} {eSet    } () _
    rewriteEq C {eVar _} {eEl     } () _
    rewriteEq C {eVar _} {eCon _  } () _
    rewriteEq C {eVar _} {ePi     } () _
    rewriteEq C {eVar _} {eApp _ _} () _

    rewriteEq C {eLam _} {eVar _  } () _
    rewriteEq C {eLam _} {eSet    } () _
    rewriteEq C {eLam _} {eEl     } () _
    rewriteEq C {eLam _} {eCon _  } () _
    rewriteEq C {eLam _} {ePi     } () _
    rewriteEq C {eLam _} {eApp _ _} () _

    rewriteEq C {eSet  } {eLam _  } () _
    rewriteEq C {eSet  } {eVar _  } () _
    rewriteEq C {eSet  } {eEl     } () _
    rewriteEq C {eSet  } {eCon _  } () _
    rewriteEq C {eSet  } {ePi     } () _
    rewriteEq C {eSet  } {eApp _ _} () _

    rewriteEq C {eEl   } {eLam _  } () _
    rewriteEq C {eEl   } {eSet    } () _
    rewriteEq C {eEl   } {eVar _  } () _
    rewriteEq C {eEl   } {eCon _  } () _
    rewriteEq C {eEl   } {ePi     } () _
    rewriteEq C {eEl   } {eApp _ _} () _

    rewriteEq C {eCon _} {eLam _  } () _
    rewriteEq C {eCon _} {eSet    } () _
    rewriteEq C {eCon _} {eEl     } () _
    rewriteEq C {eCon _} {eVar _  } () _
    rewriteEq C {eCon _} {ePi     } () _
    rewriteEq C {eCon _} {eApp _ _} () _

    rewriteEq C {ePi   } {eLam _  } () _
    rewriteEq C {ePi   } {eSet    } () _
    rewriteEq C {ePi   } {eEl     } () _
    rewriteEq C {ePi   } {eCon _  } () _
    rewriteEq C {ePi   } {eVar _  } () _
    rewriteEq C {ePi   } {eApp _ _} () _

    rewriteEq C {eApp _ _} {eLam _  } () _
    rewriteEq C {eApp _ _} {eSet    } () _
    rewriteEq C {eApp _ _} {eEl     } () _
    rewriteEq C {eApp _ _} {eCon _  } () _
    rewriteEq C {eApp _ _} {ePi     } () _
    rewriteEq C {eApp _ _} {eVar _  } () _

module Typed where

  open Prelude
  open Fin
  open Vec

  infixl 15 _&_
  infix  13 _!!_
  infix  5  _==_

  -- Contexts ---------------------------------------------------------------
  data CSuc (n : Nat) : Set

  Context' : Nat -> Set
  Context' zero    = Nil
  Context' (suc n) = CSuc n

  data Context (n : Nat) : Set
  data Type {n : Nat}(?? : Context n) : Set

  data CSuc n where
    ext : (?? : Context n) -> Type ?? -> Context' (suc n)

  data Context n where
    ctxI : Context' n -> Context n

  -- Types ------------------------------------------------------------------
  _&_ : {n : Nat}(?? : Context n) -> Type ?? -> Context (suc n)
  data Term {n : Nat}(?? : Context n)(A : Type ??) : Set

  data Type {n} ?? where
    SET : Type ??
    Pi  : (A : Type ??) -> Type (?? & A) -> Type ??
    El  : Term ?? SET -> Type ??


  ?? & A = ctxI (ext ?? A)

  -- Variables --------------------------------------------------------------
  data VarSuc {n : Nat}(?? : Context n)(B : Type ??)(A : Type (?? & B)) : Set

  Var' : {n : Nat}(?? : Context n) -> Type ?? -> Set
  Var' {zero}   ??              A = Zero
  Var' {suc n} (ctxI (ext ?? B)) A = VarSuc ?? B A

  _==_ : {n : Nat}{?? : Context n} -> Type ?? -> Type ?? -> Set
  data Ren {n m : Nat}(?? : Context n)(?? : Context m) : Set

  rename : {n m : Nat}{?? : Context n}{?? : Context m} -> Ren ?? ?? -> Type ?? -> Type ??
  upR : {n : Nat}{?? : Context n}{A : Type ??} -> Ren ?? (?? & A)
  data Var {n : Nat}(?? : Context n)(A : Type ??) : Set

  data VarSuc {n} ?? B A where
    vzero_ : A == rename upR B -> Var' (?? & B) A
    vsuc_  : (C : Type ??) -> A == rename upR C -> Var ?? C -> Var' (?? & B) A

  data Var {n} ?? A where
    varI : Var' ?? A -> Var ?? A

  -- Terms ------------------------------------------------------------------
  data Sub {n m : Nat}(?? : Context n)(?? : Context m) : Set
  subst : {n m : Nat}{?? : Context n}{?? : Context m} -> Sub ?? ?? -> Type ?? -> Type ??
  down : {n : Nat}{?? : Context n}{A : Type ??} -> Term ?? A -> Sub (?? & A) ??

  data Term {n} ?? A where
    var : (x : Var ?? A) -> Term ?? A
    app : {B : Type ??}{C : Type (?? & B)} -> Term ?? (Pi B C) -> (t : Term ?? B) ->
          A == subst (down t) C -> Term ?? A
    lam : {B : Type ??}{C : Type (?? & B)} -> Term (?? & B) C -> A == Pi B C -> Term ?? A

  -- Context manipulation ---------------------------------------------------

  ??? : Context zero
  ??? = ctxI nil'

  _!!_ : {n : Nat}(?? : Context n) -> Fin n -> Type ??
  _!!_ {zero}  _                (finI ())
  _!!_ {suc _} (ctxI (ext ?? A)) (finI fzero')           = rename upR A
  _!!_ {suc _} (ctxI (ext ?? A)) (finI (fsuc' i)) = rename upR (?? !! i)

  -- Renamings --------------------------------------------------------------
  data ConsRen {n m : Nat}(?? : Context n)(A : Type ??)(?? : Context m) : Set

  Ren' : {n m : Nat} -> Context n -> Context m -> Set
  Ren' {zero}  {m} (ctxI nil')      ?? = Nil
  Ren' {suc n} {m} (ctxI (ext ?? A)) ?? = ConsRen ?? A ??

  data ConsRen {n m} ?? A ?? where
    extRen' : (?? : Ren ?? ??) -> Var ?? (rename ?? A) -> Ren' (?? & A) ??

  data Ren {n m} ?? ?? where
    renI : Ren' ?? ?? -> Ren ?? ??

  -- Performing renamings ---------------------------------------------------
  rename' : {n m : Nat}{?? : Context n}{?? : Context m} -> Ren ?? ?? -> Type ?? -> Type ??

  rename ?? SET = SET
  rename ?? A  = rename' ?? A

  liftR : {n m : Nat}{?? : Context n}{A : Type ??}{?? : Context m} ->
          (?? : Ren ?? ??) -> Ren (?? & A) (?? & rename ?? A)
  renameTerm : {n m : Nat}{?? : Context n}{?? : Context m}{A : Type ??}
               (?? : Ren ?? ??) -> Term ?? A -> Term ?? (rename ?? A)

  rename' ?? SET      = SET
  rename' ?? (Pi A B) = Pi (rename ?? A) (rename (liftR ??) B)
  rename' ?? (El t)   = El (renameTerm ?? t)

  lookupR : {n m : Nat}{?? : Context n}{A : Type ??}{?? : Context m}
            (?? : Ren ?? ??)(x : Var ?? A) -> Var ?? (rename ?? A)
  cong : {n m : Nat}{?? : Context n}{?? : Context m}(f : Type ?? -> Type ??)
         {A B : Type ??} -> A == B -> f A == f B
  _trans_ : {n : Nat}{?? : Context n}{A B C : Type ??} -> A == B -> B == C -> A == C
  renameSubstCommute :
    {n m : Nat}{?? : Context n}{?? : Context m}{A : Type ??}{B : Type (?? & A)}
    {?? : Ren ?? ??}{t : Term ?? A} ->
    rename ?? (subst (down t) B) == subst (down (renameTerm ?? t)) (rename (liftR ??) B)

  renameTerm ?? (var x)      = var (lookupR ?? x)
  renameTerm {_}{_}{_}{_}{A} ?? (app{_}{C} s t eq) =
      app (renameTerm ?? s) (renameTerm ?? t)
          (cong (rename ??) eq  trans  renameSubstCommute)
  renameTerm ?? (lam t eq)   = lam (renameTerm (liftR ??) t) (cong (rename ??) eq)

  lookupR {zero} _ (varI ())
  lookupR {suc n} {_} {ctxI (ext ?? B)} {A} {??}
          (renI (extRen' ?? z)) (varI (vzero_ eq)) = {!!}
  lookupR {suc n} {_} {ctxI (ext ?? B)} {A} {??}
          (renI (extRen' ?? z)) (varI (vsuc_ C eq x)) = {!!}

  -- Building renamings -----------------------------------------------------

  extRen : {n m : Nat}{?? : Context n}{A : Type ??}{?? : Context m}
           (?? : Ren ?? ??) -> Var ?? (rename ?? A) -> Ren (?? & A) ??
  extRen ?? x = renI (extRen' ?? x)

  _coR_ : {n m p : Nat}{?? : Context n}{?? : Context m}{?? : Context p} -> Ren ?? ?? -> Ren ?? ?? -> Ren ?? ??

  liftR {_}{_}{_}{A} ?? = extRen (upR coR ??) (varI {!!})

  idR : {n : Nat} {?? : Context n} -> Ren ?? ??
  idR = {!!}

  _coR_ = {!!}

  upR = {!!}

  -- Substitutions ----------------------------------------------------------
  data ConsSub {n m : Nat}(?? : Context n)(A : Type ??)(?? : Context m) : Set

  Sub' : {n m : Nat} -> Context n -> Context m -> Set
  Sub' {zero}  {m} (ctxI nil')      ?? = Nil
  Sub' {suc n} {m} (ctxI (ext ?? A)) ?? = ConsSub ?? A ??

  data ConsSub {n m} ?? A ??  where
    extSub' : (?? : Sub ?? ??) -> Term ?? (subst ?? A) -> Sub' (?? & A) ??

  data Sub {n m} ?? ?? where
    subI : Sub' ?? ?? -> Sub ?? ??

  -- Performing substitution ------------------------------------------------
  subst' : {n m : Nat}{?? : Context n}{?? : Context m} -> Sub ?? ?? -> Type ?? -> Type ??

  subst ?? SET              = SET
  subst ?? A        = subst' ?? A

  liftS : {n m : Nat}{?? : Context n}{A : Type ??}{?? : Context m} ->
          (?? : Sub ?? ??) -> Sub (?? & A) (?? & subst ?? A)

  substTerm : {n m : Nat}{?? : Context n}{?? : Context m}{A : Type ??} ->
              (?? : Sub ?? ??) -> Term ?? A -> Term ?? (subst ?? A)

  subst' ?? (Pi A B) = Pi (subst ?? A) (subst (liftS ??) B)
  subst' ?? (El t)   = El (substTerm ?? t)
  subst' ?? SET      = SET

  substTerm ?? (var x)             = {!!}
  substTerm ?? (app s t eq) = {!!}
  substTerm ?? (lam t eq)   = {!!}

  -- Building substitutions -------------------------------------------------

  liftS {_}{_}{_}{A} ?? = {!!} -- extSub (upS ??? ??) (var fzero (substCompose upS ?? A))
    -- Works with hidden args to substCompose when inlined in subst
    -- but not here. Weird.

  topS : {n : Nat}{?? : Context n} -> Sub ??? ??
  topS = subI nil'

  extSub : {n m : Nat}{?? : Context n}{A : Type ??}{?? : Context m}
           (?? : Sub ?? ??) -> Term ?? (subst ?? A) -> Sub (?? & A) ??
  extSub ?? t = subI (extSub' ?? t)

  idS : {n : Nat}{?? : Context n} -> Sub ?? ??
  idS {zero}  {ctxI nil'}      = topS
  idS {suc _} {ctxI (ext ?? A)} = {!!} -- extSub upS (var fzero refl)

  convert : {n : Nat}{?? : Context n}{A B : Type ??} -> A == B -> Term ?? B -> Term ?? A

  _???_ : {n m p : Nat}{?? : Context n}{?? : Context m}{?? : Context p} -> Sub ?? ?? -> Sub ?? ?? -> Sub ?? ??

  substCompose : {n m p : Nat}{?? : Context n}{?? : Context m}{?? : Context p}
                 (?? : Sub ?? ??)(?? : Sub ?? ??)(A : Type ??) ->
                 subst (?? ??? ??) A == subst ?? (subst ?? A)

  _???_ {zero} {_}{_} {ctxI nil'}      _  _                 = topS
  _???_ {suc _}{_}{_} {ctxI (ext ?? A)} ?? (subI (extSub' ?? t)) =
    extSub (?? ??? ??) (convert (substCompose ?? ?? A) (substTerm ?? t))

  upS : {n : Nat}{?? : Context n}{A : Type ??} -> Sub ?? (?? & A)
  upS = {!!}

  substId : {n : Nat}{?? : Context n}{A : Type ??} -> subst idS A == A

  down t = extSub idS (convert substId t)

  -- Convertibility ---------------------------------------------------------


  A == B = {!!}

  refl : {n : Nat}{?? : Context n}{A : Type ??} -> A == A
  refl = {!!}

  cong f eq = {!!}

  ab trans bc = {!!}

  convert eq t = {!!}

  -- Properties -------------------------------------------------------------

  renameId : {n : Nat}{?? : Context n}{A : Type ??} -> rename idR A == A
  renameId = {!!}

  renameCompose : {n m p : Nat}{?? : Context n}{?? : Context m}{?? : Context p}
                  (?? : Ren ?? ??)(?? : Ren ?? ??)(A : Type ??) ->
                  rename (?? coR ??) A == rename ?? (rename ?? A)
  renameCompose ?? ?? A = {!!}

  substId = {!!}

  substCompose ?? ?? A = {!!}

  renameSubstCommute = {!!}

