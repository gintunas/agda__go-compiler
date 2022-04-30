-- Jesper, 2015-12-18: the helper function shouldn't be accepted, since it
-- matches on a heterogeneous equality and the equation between the types
-- Box A and Box B cannot be solved without injective type constructors.

data Box (A : Set) : Set where
  [_] : A → Box A

data _≡_ (A : Set) : Set → Set₁ where
  refl : A ≡ A

data _≅_ {A : Set₁} (x : A) : {B : Set₁} → B → Set₂ where
  refl : x ≅ x

data C : Set → Set₁ where
  c₁ c₂ : (A : Set) → C (Box A)

data D : {A : Set} → C A → Set₂ where
  d₁ : (A : Set) → D (c₁ A)
  d₂ : (A : Set) → D (c₂ A)

D-elim-c₁-helper :
  (P : {A B : Set} {c : C A} →
       D c → A ≡ Box B → c ≅ c₁ B → Set₂) →
  ((A : Set) → P (d₁ A) refl refl) →
  {A B : Set} {c : C A}
  (x : D c) (eq₂ : c ≅ c₁ B) (eq₁ : A ≡ Box B) → P x eq₁ eq₂
D-elim-c₁-helper P p (d₂ A) ()   _
D-elim-c₁-helper P p (d₁ A) refl refl = p A
