% Andreas, Bug filed by Stevan Andjelkovic, June 2013

\subsection{Examples}
\label{examples}

\AgdaHide{
\begin{code}
{-# OPTIONS --sized-types #-}

module Issue854 where

open import Function
open import Data.Unit
open import Data.Product
open import Data.List
open import Data.List.Relation.Unary.Any
open import Data.List.Relation.Binary.Pointwise hiding (refl)
open import Data.Container.FreeMonad using (rawMonad)
open import Relation.Binary.PropositionalEquality
open import Category.Monad

open import Data.List.Relation.Binary.Subset.Propositional
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

#0 #1 : â {Î} â Î â¢^v _ â¶ N

#0 = ze
#1 = su #0

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

private
  -- XXX: Move to std-lib?
  inl-++ : â {A : Set}{xs ys : List A} â xs â (xs ++ ys)
  inl-++ {xs = []}      ()
  inl-++ {xs = x â· xs}  (here refl)  = here refl
  inl-++ {xs = x â· xs}  (there p)    = there (inl-++ p)

  inr-++ : â {A : Set}{xs ys : List A} â ys â (xs ++ ys)
  inr-++ {xs = []}      p = p
  inr-++ {xs = x â· xs}  p = there (inr-++ {xs = xs} p)

ex-state : [] â¢^c _ â¶ [] â (ð â N)
ex-state = run {Î£â² = State N}{[]} state^Homo state^suc inl-++ id Â· #0

test-state : â¦ ex-state â§^c tt â¡ â¦ return (â¨â© , #1) â§^c tt
test-state = refl
\end{code}
