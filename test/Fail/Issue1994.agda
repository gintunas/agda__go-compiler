{- Example by Andrew Pitts, 2016-05-23 -}

{-# OPTIONS --rewriting --without-K #-}

open import Agda.Builtin.Equality public

infix 6 Iā_
postulate
  š     : Set
  O     : š
  I     : š
  Iā_   : š ā š

{-# BUILTIN REWRITE _ā”_ #-}

postulate
  IāOā”I   :           Iā O     ā” I

{-# REWRITE IāOā”I   #-}

data Pth (A : Set) : A ā A ā Set where
  path : (f : š ā A) ā Pth A (f O) (f I)

infix 6 _at_
_at_ : {A : Set}{x y : A} ā Pth A x y ā š ā A
path f at i = f i

record Path (A : Set)(x y : A) : Set where
  field
    pth : Pth A x y
    feq : pth at O ā” x
    seq : pth at I ā” y

open Path public

{-# REWRITE feq #-}
{-# REWRITE seq #-}

infix 6 _ā²_
_ā²_ : {A : Set}{x y : A} ā Path A x y ā š ā A
p ā² i = pth p at i

fun2path : {A : Set}(f : š ā A) ā Path A (f O) (f I)
pth (fun2path f) = path f
feq (fun2path f) = refl
seq (fun2path f) = refl

inv : {A : Set}{x y : A} ā Path A x y ā Path A y x
inv p = fun2path (Ī» i ā p ā² (Iā i))
