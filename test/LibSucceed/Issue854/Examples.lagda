\subsection{Examples}
\label{examples}

\AgdaHide{
\begin{code}

{-# OPTIONS --sized-types #-}

module Issue854.Examples where

open import Function.Base
open import Function.Inverse using (module Inverse)
open import Data.Unit
open import Data.Product
open import Data.List
open import Data.List.Membership.Propositional
open import Data.List.Relation.Unary.Any
open import Data.Container.FreeMonad using (rawMonad)
open import Relation.Binary.PropositionalEquality
open import Data.List.Relation.Binary.Pointwise hiding (refl)
open import Data.List.Relation.Binary.Subset.Propositional
open import Data.List.Relation.Binary.Subset.Propositional.Properties using (xsâxs++ys)
open import Category.Monad

open import Issue854.Types
open import Issue854.Context
open import Issue854.WellTyped
open import Issue854.WellTypedSemantics
\end{code}
}

\begin{code}
â²N : Sig
â²N = (ð , ð) â· (ð , ð) â· []

N = Î¼ â²N

ze : â {Î} â Î â¢^v _ â¶ N
ze = con (here refl) â¨â© (ð-elim (var zero))

pattern su n = con (there (here refl)) â¨â© n

#0 #1 #2 #3 #4 #5 : â {Î} â Î â¢^v _ â¶ N

#0 = ze
#1 = su #0
#2 = su #1
#3 = su #2
#4 = su #3
#5 = su #4

_â_ : â {Î Î£ U V f a} â Î â» U â¢^v f â¶ V â Î â¢^c a â¶ Î£ â U â Î â¢^c _ â¶ Î£ â V
f â a = _to_ a (return f) id id

plus : â {Î Î£} â Î â¢^c _ â¶ N â N â Î£ â N
plus = Æ {-m-} Æ {-n-} _â¢^c_â¶_.iter Ï (var {-m-} (suc zero))
  where
  Ï : _ â¢^cs _ â¶ Alg â²N (_ â N)
  Ï =  Æ Æ return (var {-n-} (suc (suc zero))) â·
       Æ Æ (suâ² â ih) â·
       []
    -- XXX: Not indented properly...
    where
    suâ² : _ â» N â¢^v _ â¶ N
    suâ² = con (there (here refl)) â¨â© (var (suc zero))

    ih : _ â¢^c _ â¶ _ â N
    ih = force (var zero) Â· â¨â©

-- test-plus : â¦ plus {[]}{[]} Â· #2 Â· #1 â§^c tt â¡ â¦ return #3 â§^c tt
-- test-plus = refl

State : VType â Sig
State S = (ð , S) â· (S , ð) â· []

-- XXX: get : {m : True (ð , S) â? Î£)} â Î£ â S?

state^suc : â {Î} â Î â¢^c _ â¶ State N â ð
state^suc {Î} = _to_ (op get Â· â¨â©) (op put Â· suâ²) id id
  where
  get = here refl
  put = there (here refl)

  suâ² : Î â» N â¢^v _ â¶ N
  suâ² = con (there (here refl)) â¨â© (var (suc zero))

state^Homo : â {Î Î£ S X} â Î â¢^cs _ â¶ PHomo (State S) X S Î£ (X â S)
state^Homo =
  Æ Æ Æ (((Ïâ (force (var (suc zero)) Â· var zero)) Â· var zero)) â·
  Æ Æ Æ ((Ïâ (force (var (suc zero)) Â· â¨â©)) Â· var (suc (suc zero))) â·
  Æ Æ return (var (suc zero) , var zero) â· []

ex-state : [] â¢^c _ â¶ [] â (ð â N)
ex-state = run {Î£â² = State N}{[]} state^Homo state^suc (xsâxs++ys _ _) id Â· #0

test-state : â¦ ex-state â§^c tt â¡ â¦ return (â¨â© , #1) â§^c tt
test-state = refl
\end{code}

The booleans.

\begin{code}
â²ð  : Sig
â²ð  = (ð , ð) â· (ð , ð) â· []
ð   = Î¼ â²ð

tru fal : â {Î} â Î â¢^v _ â¶ ð
tru  = con (here refl)          â¨â© (ð-elim (var zero))
fal  = con (there (here refl))  â¨â© (ð-elim (var zero))

cond : â {Î Î£ V} â Î â¢^c _ â¶ ð â V â V â Î£ â V
cond {Î}{Î£}{T} = Æ {-b-} Æ {-t-} Æ {-f-} iter Ï
    (var {-b-} (suc (suc zero)))
  where
  Ï : Î â» ð â» T â» T â¢^cs _ â¶ Alg â²ð (Î£ â T)
  Ï =  Æ Æ return (var {-t-} (suc (suc (suc zero)))) â·
       Æ Æ return (var {-f-} (suc (suc zero))) â· []

if : â {Î C} â Î â¢^c _ â¶ ð â â C â â â C â â C
if {Î}{C} = Æ {-b-} Æ {-t-} Æ {-f-} iter Ï
    (var {-b-} (suc (suc zero)))
  where
  Ï : Î â» ð â» â C â â» â C â â¢^cs _ â¶ Alg â²ð C
  Ï =  Æ Æ force (var {-t-} (suc (suc (suc zero)))) â·
       Æ Æ force (var {-f-} (suc (suc zero))) â· []
\end{code}

\begin{code}
not : â {Î Î£} â Î â¢^c _ â¶ ð â Î£ â ð
not = Æ (cond Â· var zero Â· fal Â· tru)
\end{code}

Possibly aborting computations.

\begin{code}
Abort : Sig
Abort = (ð , ð) â· []

aborting : â {Î V} â Î â¢^c _ â¶ Abort â V
aborting = _to_  (op (here refl) Â· â¨â©)
                 (return (ð-elim (var zero))) id id
\end{code}

\begin{code}
-- postulate
--   weaken^C : â {Î V C c} â Î â¢^c c â¶ C â Î â» V â¢^c c â¶ C
--
-- _<_Â·_>_ : â {Î Î£ Î£â² Î£â³ U V f a} â Î â¢^c f â¶ U â Î£ â V â Î£ â Î£â³ â Î£â² â Î£â³ â
--           Î â¢^c a â¶ Î£â² â U â Î â¢^c _ â¶ Î£â³ â V
-- f < p Â· q > a = _to_ a (weaken^C f Â· var zero) q p
--
-- put-abort : â {Î S} â Î â¢^c _ â¶ (State S ++ Abort) â ð
-- put-abort {S = S} = op put < xsâxs++ys Â· xsâys++xs {xs = State S} > aborting
-- -- (aborting to (op put Â· var zero)) (inrâ² {xs = State S}) inlâ²
--   where
--   put : (S , ð) â State S
--   put = there (here refl)
\end{code}

\begin{code}
Maybe : VType â VType
Maybe X = Î¼ ((ð , ð) â· (X , ð) â· [])

jus : â {Î V v} â Î â¢^v v â¶ V â Î â¢^v _ â¶ Maybe V
jus t = con (there (here refl)) t (ð-elim (var zero))

nothin : â {Î V} â Î â¢^v _ â¶ Maybe V
nothin = con (here refl) â¨â© (ð-elim (var zero))
\end{code}

\begin{code}
abort^Homo : â {Î Î£ X} â Î â¢^cs _ â¶ PHomo Abort X ð Î£ (Maybe X)
abort^Homo =  Æ Æ Æ return nothin â·
              Æ Æ return (jus (var (suc zero))) â· []
\end{code}

\begin{code}
-- if get then put false else aborting
ex : â {Î} â Î â¢^c _ â¶ (State ð ++ Abort) â ð
ex = _to_  (op get Â· â¨â©)
           (if Â· var zero Â· thunk (op put Â· fal) Â· thunk abortingâ²) id id
  where
  get : (ð , ð) â (State ð ++ Abort)
  get = here refl

  put : (ð , ð) â (State ð ++ Abort)
  put = there (here refl)

  abortingâ² : â {Î V} â Î â¢^c _ â¶ (State ð ++ Abort) â V
  abortingâ² = _to_  (op (there (there (here refl))) Â· â¨â©)
                    (return (ð-elim (var zero))) id id
\end{code}

\begin{code}
ex-stateâ² : â {Î} â Î â¢^c _ â¶ ð â Abort â (ð â ð)
ex-stateâ² = run {Î£â² = State ð} state^Homo ex id id

++-comm : â {a}{A : Set a} xs {ys : List A} â xs ++ ys â ys ++ xs
++-comm xs m = to (++â++ xs _) â¨$â© m
  where
  open import Data.List.Relation.Unary.Any.Properties
  open import Function.Inverse
  open import Function.Equality
  open Inverse

ex-abort : â {Î} â Î â¢^c _ â¶ ð â State ð â Maybe ð
ex-abort = run {Î£â² = Abort} abort^Homo ex (++-comm (State ð)) id
\end{code}

\begin{code}
ex-state-abort : â {Î} â Î â¢^c _ â¶ ð â [] â Maybe (ð â ð)
ex-state-abort = Æ  (run {Î£â² = Abort} abort^Homo
                    (ex-stateâ² Â· var zero) id id Â· â¨â©)

ex-abort-state : â {Î} â Î â¢^c _ â¶ ð â [] â (Maybe ð â ð)
ex-abort-state = Æ  (run {Î£â² = State ð} state^Homo
                    (ex-abort Â· â¨â©) id id Â· var zero)

test-state-abort : â¦ ex-state-abort Â· tru â§^c tt â¡
    â¦ return (jus (â¨â© , fal)) â§^c tt
test-state-abort = refl

test-abort-state : â¦ ex-abort-state Â· tru â§^c tt â¡
     â¦ return (jus â¨â© , fal) â§^c tt
test-abort-state = refl -- refl
\end{code}
