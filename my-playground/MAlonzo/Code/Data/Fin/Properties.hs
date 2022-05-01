{-# LANGUAGE BangPatterns #-}
{-# LANGUAGE EmptyCase #-}
{-# LANGUAGE EmptyDataDecls #-}
{-# LANGUAGE ExistentialQuantification #-}
{-# LANGUAGE NoMonomorphismRestriction #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE RankNTypes #-}
{-# LANGUAGE ScopedTypeVariables #-}

{-# OPTIONS_GHC -Wno-overlapping-patterns #-}

module MAlonzo.Code.Data.Fin.Properties where

import MAlonzo.RTE (coe, erased, AgdaAny, addInt, subInt, mulInt,
                    quotInt, remInt, geqInt, ltInt, eqInt, add64, sub64, mul64, quot64,
                    rem64, lt64, eq64, word64FromNat, word64ToNat)
import qualified MAlonzo.RTE
import qualified Data.Text
import qualified MAlonzo.Code.Agda.Builtin.Bool
import qualified MAlonzo.Code.Agda.Builtin.Equality
import qualified MAlonzo.Code.Agda.Builtin.Sigma
import qualified MAlonzo.Code.Agda.Builtin.Unit
import qualified MAlonzo.Code.Agda.Primitive
import qualified MAlonzo.Code.Category.Applicative.Indexed
import qualified MAlonzo.Code.Category.Functor
import qualified MAlonzo.Code.Data.Empty
import qualified MAlonzo.Code.Data.Fin.Base
import qualified MAlonzo.Code.Data.Nat.Base
import qualified MAlonzo.Code.Data.Nat.Properties
import qualified MAlonzo.Code.Data.Nat.Properties.Core
import qualified MAlonzo.Code.Data.Product
import qualified MAlonzo.Code.Data.Sum.Base
import qualified MAlonzo.Code.Function.Base
import qualified MAlonzo.Code.Function.Bundles
import qualified MAlonzo.Code.Function.Equivalence
import qualified MAlonzo.Code.Function.Injection
import qualified MAlonzo.Code.Relation.Binary.Bundles
import qualified MAlonzo.Code.Relation.Binary.Definitions
import qualified MAlonzo.Code.Relation.Binary.PropositionalEquality.Properties
import qualified MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple
import qualified MAlonzo.Code.Relation.Binary.Structures
import qualified MAlonzo.Code.Relation.Nullary
import qualified MAlonzo.Code.Relation.Nullary.Decidable
import qualified MAlonzo.Code.Relation.Nullary.Decidable.Core
import qualified MAlonzo.Code.Relation.Nullary.Negation.Core
import qualified MAlonzo.Code.Relation.Nullary.Product
import qualified MAlonzo.Code.Relation.Nullary.Reflects
import qualified MAlonzo.Code.Relation.Nullary.Sum
import qualified MAlonzo.Code.Relation.Unary.Properties

-- Data.Fin.Properties.¬Fin0
d_'172'Fin0_6 ::
  MAlonzo.Code.Data.Fin.Base.T_Fin_6 ->
  MAlonzo.Code.Data.Empty.T_'8869'_4
d_'172'Fin0_6 = erased
-- Data.Fin.Properties.Fin0↔⊥
d_Fin0'8596''8869'_8 ::
  MAlonzo.Code.Function.Bundles.T_Inverse_1048
d_Fin0'8596''8869'_8
  = coe
      MAlonzo.Code.Function.Bundles.du_mk'8596''8242'_1382 erased erased
      erased erased
-- Data.Fin.Properties.suc-injective
d_suc'45'injective_16 ::
  Integer ->
  MAlonzo.Code.Data.Fin.Base.T_Fin_6 ->
  MAlonzo.Code.Data.Fin.Base.T_Fin_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_suc'45'injective_16 = erased
-- Data.Fin.Properties._≟_
d__'8799'__20 ::
  Integer ->
  MAlonzo.Code.Data.Fin.Base.T_Fin_6 ->
  MAlonzo.Code.Data.Fin.Base.T_Fin_6 ->
  MAlonzo.Code.Relation.Nullary.T_Dec_32
d__'8799'__20 ~v0 v1 v2 = du__'8799'__20 v1 v2
du__'8799'__20 ::
  MAlonzo.Code.Data.Fin.Base.T_Fin_6 ->
  MAlonzo.Code.Data.Fin.Base.T_Fin_6 ->
  MAlonzo.Code.Relation.Nullary.T_Dec_32
du__'8799'__20 v0 v1
  = case coe v0 of
      MAlonzo.Code.Data.Fin.Base.C_zero_10
        -> case coe v1 of
             MAlonzo.Code.Data.Fin.Base.C_zero_10
               -> coe
                    MAlonzo.Code.Relation.Nullary.C__because__46
                    (coe MAlonzo.Code.Agda.Builtin.Bool.C_true_10)
                    (coe MAlonzo.Code.Relation.Nullary.C_of'696'_22 erased)
             MAlonzo.Code.Data.Fin.Base.C_suc_16 v4
               -> coe
                    MAlonzo.Code.Relation.Nullary.C__because__46
                    (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                    (coe MAlonzo.Code.Relation.Nullary.C_of'8319'_26)
             _ -> MAlonzo.RTE.mazUnreachableError
      MAlonzo.Code.Data.Fin.Base.C_suc_16 v3
        -> case coe v1 of
             MAlonzo.Code.Data.Fin.Base.C_zero_10
               -> coe
                    MAlonzo.Code.Relation.Nullary.C__because__46
                    (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                    (coe MAlonzo.Code.Relation.Nullary.C_of'8319'_26)
             MAlonzo.Code.Data.Fin.Base.C_suc_16 v5
               -> coe
                    MAlonzo.Code.Relation.Nullary.Decidable.Core.du_map'8242'_168
                    erased (coe du__'8799'__20 (coe v3) (coe v5))
             _ -> MAlonzo.RTE.mazUnreachableError
      _ -> MAlonzo.RTE.mazUnreachableError
-- Data.Fin.Properties.≡-isDecEquivalence
d_'8801''45'isDecEquivalence_32 ::
  Integer ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsDecEquivalence_44
d_'8801''45'isDecEquivalence_32 ~v0
  = du_'8801''45'isDecEquivalence_32
du_'8801''45'isDecEquivalence_32 ::
  MAlonzo.Code.Relation.Binary.Structures.T_IsDecEquivalence_44
du_'8801''45'isDecEquivalence_32
  = coe
      MAlonzo.Code.Relation.Binary.Structures.C_IsDecEquivalence'46'constructor_1689
      (coe
         MAlonzo.Code.Relation.Binary.PropositionalEquality.Properties.du_isEquivalence_242)
      (coe du__'8799'__20)
-- Data.Fin.Properties.≡-preorder
d_'8801''45'preorder_34 ::
  Integer -> MAlonzo.Code.Relation.Binary.Bundles.T_Preorder_132
d_'8801''45'preorder_34 ~v0 = du_'8801''45'preorder_34
du_'8801''45'preorder_34 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_Preorder_132
du_'8801''45'preorder_34
  = coe
      MAlonzo.Code.Relation.Binary.PropositionalEquality.Properties.du_preorder_258
-- Data.Fin.Properties.≡-setoid
d_'8801''45'setoid_38 ::
  Integer -> MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44
d_'8801''45'setoid_38 ~v0 = du_'8801''45'setoid_38
du_'8801''45'setoid_38 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44
du_'8801''45'setoid_38
  = coe
      MAlonzo.Code.Relation.Binary.PropositionalEquality.Properties.du_setoid_250
-- Data.Fin.Properties.≡-decSetoid
d_'8801''45'decSetoid_42 ::
  Integer -> MAlonzo.Code.Relation.Binary.Bundles.T_DecSetoid_84
d_'8801''45'decSetoid_42 ~v0 = du_'8801''45'decSetoid_42
du_'8801''45'decSetoid_42 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_DecSetoid_84
du_'8801''45'decSetoid_42
  = coe
      MAlonzo.Code.Relation.Binary.Bundles.C_DecSetoid'46'constructor_1131
      (coe du_'8801''45'isDecEquivalence_32)
-- Data.Fin.Properties.toℕ-injective
d_toℕ'45'injective_52 ::
  Integer ->
  MAlonzo.Code.Data.Fin.Base.T_Fin_6 ->
  MAlonzo.Code.Data.Fin.Base.T_Fin_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_toℕ'45'injective_52 = erased
-- Data.Fin.Properties.toℕ-strengthen
d_toℕ'45'strengthen_70 ::
  Integer ->
  MAlonzo.Code.Data.Fin.Base.T_Fin_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_toℕ'45'strengthen_70 = erased
-- Data.Fin.Properties.toℕ-raise
d_toℕ'45'raise_80 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Fin.Base.T_Fin_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_toℕ'45'raise_80 = erased
-- Data.Fin.Properties.toℕ<n
d_toℕ'60'n_92 ::
  Integer ->
  MAlonzo.Code.Data.Fin.Base.T_Fin_6 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__18
d_toℕ'60'n_92 ~v0 v1 = du_toℕ'60'n_92 v1
du_toℕ'60'n_92 ::
  MAlonzo.Code.Data.Fin.Base.T_Fin_6 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__18
du_toℕ'60'n_92 v0
  = case coe v0 of
      MAlonzo.Code.Data.Fin.Base.C_zero_10
        -> coe
             MAlonzo.Code.Data.Nat.Base.C_s'8804's_30
             (coe MAlonzo.Code.Data.Nat.Base.C_z'8804'n_22)
      MAlonzo.Code.Data.Fin.Base.C_suc_16 v2
        -> coe
             MAlonzo.Code.Data.Nat.Base.C_s'8804's_30
             (coe du_toℕ'60'n_92 (coe v2))
      _ -> MAlonzo.RTE.mazUnreachableError
-- Data.Fin.Properties.toℕ≤n
d_toℕ'8804'n_100 ::
  Integer ->
  MAlonzo.Code.Data.Fin.Base.T_Fin_6 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__18
d_toℕ'8804'n_100 v0 v1
  = coe
      MAlonzo.Code.Data.Nat.Properties.du_'60''8658''8804'_1736 (coe v0)
      (coe du_toℕ'60'n_92 (coe v1))
-- Data.Fin.Properties.toℕ≤pred[n]
d_toℕ'8804'pred'91'n'93'_106 ::
  Integer ->
  MAlonzo.Code.Data.Fin.Base.T_Fin_6 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__18
d_toℕ'8804'pred'91'n'93'_106 ~v0 v1
  = du_toℕ'8804'pred'91'n'93'_106 v1
du_toℕ'8804'pred'91'n'93'_106 ::
  MAlonzo.Code.Data.Fin.Base.T_Fin_6 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__18
du_toℕ'8804'pred'91'n'93'_106 v0
  = case coe v0 of
      MAlonzo.Code.Data.Fin.Base.C_zero_10
        -> coe MAlonzo.Code.Data.Nat.Base.C_z'8804'n_22
      MAlonzo.Code.Data.Fin.Base.C_suc_16 v2
        -> coe
             MAlonzo.Code.Data.Nat.Base.C_s'8804's_30
             (coe du_toℕ'8804'pred'91'n'93'_106 (coe v2))
      _ -> MAlonzo.RTE.mazUnreachableError
-- Data.Fin.Properties.toℕ≤pred[n]′
d_toℕ'8804'pred'91'n'93''8242'_116 ::
  Integer ->
  MAlonzo.Code.Data.Fin.Base.T_Fin_6 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__18
d_toℕ'8804'pred'91'n'93''8242'_116 ~v0 v1
  = du_toℕ'8804'pred'91'n'93''8242'_116 v1
du_toℕ'8804'pred'91'n'93''8242'_116 ::
  MAlonzo.Code.Data.Fin.Base.T_Fin_6 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__18
du_toℕ'8804'pred'91'n'93''8242'_116 v0
  = coe
      MAlonzo.Code.Data.Nat.Properties.du_'60''8658''8804'pred_4242
      (coe du_toℕ'60'n_92 (coe v0))
-- Data.Fin.Properties.toℕ-fromℕ
d_toℕ'45'fromℕ_122 ::
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_toℕ'45'fromℕ_122 = erased
-- Data.Fin.Properties.fromℕ-toℕ
d_fromℕ'45'toℕ_130 ::
  Integer ->
  MAlonzo.Code.Data.Fin.Base.T_Fin_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_fromℕ'45'toℕ_130 = erased
-- Data.Fin.Properties.≤fromℕ
d_'8804'fromℕ_138 ::
  Integer ->
  MAlonzo.Code.Data.Fin.Base.T_Fin_6 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__18
d_'8804'fromℕ_138 ~v0 v1 = du_'8804'fromℕ_138 v1
du_'8804'fromℕ_138 ::
  MAlonzo.Code.Data.Fin.Base.T_Fin_6 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__18
du_'8804'fromℕ_138 v0
  = coe
      MAlonzo.Code.Data.Nat.Properties.Core.du_'8804''45'pred_12
      (coe du_toℕ'60'n_92 (coe v0))
-- Data.Fin.Properties.fromℕ<-toℕ
d_fromℕ'60''45'toℕ_152 ::
  Integer ->
  MAlonzo.Code.Data.Fin.Base.T_Fin_6 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__18 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_fromℕ'60''45'toℕ_152 = erased
-- Data.Fin.Properties.toℕ-fromℕ<
d_toℕ'45'fromℕ'60'_164 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__18 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_toℕ'45'fromℕ'60'_164 = erased
-- Data.Fin.Properties.fromℕ-def
d_fromℕ'45'def_170 ::
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_fromℕ'45'def_170 = erased
-- Data.Fin.Properties.fromℕ<-cong
d_fromℕ'60''45'cong_184 ::
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__18 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__18 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_fromℕ'60''45'cong_184 = erased
-- Data.Fin.Properties.fromℕ<-injective
d_fromℕ'60''45'injective_204 ::
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__18 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__18 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_fromℕ'60''45'injective_204 = erased
-- Data.Fin.Properties.fromℕ<≡fromℕ<″
d_fromℕ'60''8801'fromℕ'60''8243'_222 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__18 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804''8243'__188 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_fromℕ'60''8801'fromℕ'60''8243'_222 = erased
-- Data.Fin.Properties.toℕ-fromℕ<″
d_toℕ'45'fromℕ'60''8243'_232 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T__'8804''8243'__188 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_toℕ'45'fromℕ'60''8243'_232 = erased
-- Data.Fin.Properties.toℕ-cast
d_toℕ'45'cast_252 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Data.Fin.Base.T_Fin_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_toℕ'45'cast_252 = erased
-- Data.Fin.Properties.≤-reflexive
d_'8804''45'reflexive_266 ::
  Integer ->
  MAlonzo.Code.Data.Fin.Base.T_Fin_6 ->
  MAlonzo.Code.Data.Fin.Base.T_Fin_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__18
d_'8804''45'reflexive_266 ~v0 v1 ~v2 ~v3
  = du_'8804''45'reflexive_266 v1
du_'8804''45'reflexive_266 ::
  MAlonzo.Code.Data.Fin.Base.T_Fin_6 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__18
du_'8804''45'reflexive_266 v0
  = coe
      MAlonzo.Code.Data.Nat.Properties.d_'8804''45'refl_1634
      (coe
         MAlonzo.Code.Function.Base.du__'45''10216'_'8739'_302
         (coe MAlonzo.Code.Data.Fin.Base.du_toℕ_20) (\ v1 v2 -> v1) v0 v0)
-- Data.Fin.Properties.≤-refl
d_'8804''45'refl_270 ::
  Integer ->
  MAlonzo.Code.Data.Fin.Base.T_Fin_6 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__18
d_'8804''45'refl_270 ~v0 v1 = du_'8804''45'refl_270 v1
du_'8804''45'refl_270 ::
  MAlonzo.Code.Data.Fin.Base.T_Fin_6 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__18
du_'8804''45'refl_270 v0 = coe du_'8804''45'reflexive_266 (coe v0)
-- Data.Fin.Properties.≤-trans
d_'8804''45'trans_274 ::
  Integer ->
  MAlonzo.Code.Data.Fin.Base.T_Fin_6 ->
  MAlonzo.Code.Data.Fin.Base.T_Fin_6 ->
  MAlonzo.Code.Data.Fin.Base.T_Fin_6 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__18 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__18 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__18
d_'8804''45'trans_274 ~v0 ~v1 ~v2 ~v3 = du_'8804''45'trans_274
du_'8804''45'trans_274 ::
  MAlonzo.Code.Data.Nat.Base.T__'8804'__18 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__18 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__18
du_'8804''45'trans_274
  = coe MAlonzo.Code.Data.Nat.Properties.du_'8804''45'trans_1642
-- Data.Fin.Properties.≤-antisym
d_'8804''45'antisym_278 ::
  Integer ->
  MAlonzo.Code.Data.Fin.Base.T_Fin_6 ->
  MAlonzo.Code.Data.Fin.Base.T_Fin_6 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__18 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__18 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8804''45'antisym_278 = erased
-- Data.Fin.Properties.≤-total
d_'8804''45'total_286 ::
  Integer ->
  MAlonzo.Code.Data.Fin.Base.T_Fin_6 ->
  MAlonzo.Code.Data.Fin.Base.T_Fin_6 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30
d_'8804''45'total_286 ~v0 v1 v2 = du_'8804''45'total_286 v1 v2
du_'8804''45'total_286 ::
  MAlonzo.Code.Data.Fin.Base.T_Fin_6 ->
  MAlonzo.Code.Data.Fin.Base.T_Fin_6 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30
du_'8804''45'total_286 v0 v1
  = coe
      MAlonzo.Code.Data.Nat.Properties.d_'8804''45'total_1648
      (coe MAlonzo.Code.Data.Fin.Base.du_toℕ_20 (coe v0))
      (coe MAlonzo.Code.Data.Fin.Base.du_toℕ_20 (coe v1))
-- Data.Fin.Properties.≤-irrelevant
d_'8804''45'irrelevant_294 ::
  Integer ->
  MAlonzo.Code.Data.Fin.Base.T_Fin_6 ->
  MAlonzo.Code.Data.Fin.Base.T_Fin_6 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__18 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__18 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8804''45'irrelevant_294 = erased
-- Data.Fin.Properties._≤?_
d__'8804''63'__298 ::
  Integer ->
  MAlonzo.Code.Data.Fin.Base.T_Fin_6 ->
  MAlonzo.Code.Data.Fin.Base.T_Fin_6 ->
  MAlonzo.Code.Relation.Nullary.T_Dec_32
d__'8804''63'__298 ~v0 v1 v2 = du__'8804''63'__298 v1 v2
du__'8804''63'__298 ::
  MAlonzo.Code.Data.Fin.Base.T_Fin_6 ->
  MAlonzo.Code.Data.Fin.Base.T_Fin_6 ->
  MAlonzo.Code.Relation.Nullary.T_Dec_32
du__'8804''63'__298 v0 v1
  = coe
      MAlonzo.Code.Data.Nat.Properties.d__'8804''63'__1676
      (coe MAlonzo.Code.Data.Fin.Base.du_toℕ_20 (coe v0))
      (coe MAlonzo.Code.Data.Fin.Base.du_toℕ_20 (coe v1))
-- Data.Fin.Properties._<?_
d__'60''63'__306 ::
  Integer ->
  MAlonzo.Code.Data.Fin.Base.T_Fin_6 ->
  MAlonzo.Code.Data.Fin.Base.T_Fin_6 ->
  MAlonzo.Code.Relation.Nullary.T_Dec_32
d__'60''63'__306 ~v0 v1 v2 = du__'60''63'__306 v1 v2
du__'60''63'__306 ::
  MAlonzo.Code.Data.Fin.Base.T_Fin_6 ->
  MAlonzo.Code.Data.Fin.Base.T_Fin_6 ->
  MAlonzo.Code.Relation.Nullary.T_Dec_32
du__'60''63'__306 v0 v1
  = coe
      MAlonzo.Code.Data.Nat.Properties.d__'8804''63'__1676
      (coe
         addInt (coe (1 :: Integer))
         (coe MAlonzo.Code.Data.Fin.Base.du_toℕ_20 (coe v0)))
      (coe MAlonzo.Code.Data.Fin.Base.du_toℕ_20 (coe v1))
-- Data.Fin.Properties.≤-isPreorder
d_'8804''45'isPreorder_314 ::
  Integer -> MAlonzo.Code.Relation.Binary.Structures.T_IsPreorder_70
d_'8804''45'isPreorder_314 ~v0 = du_'8804''45'isPreorder_314
du_'8804''45'isPreorder_314 ::
  MAlonzo.Code.Relation.Binary.Structures.T_IsPreorder_70
du_'8804''45'isPreorder_314
  = coe
      MAlonzo.Code.Relation.Binary.Structures.C_IsPreorder'46'constructor_2409
      (coe
         MAlonzo.Code.Relation.Binary.PropositionalEquality.Properties.du_isEquivalence_242)
      (\ v0 v1 v2 -> coe du_'8804''45'reflexive_266 v0)
      (\ v0 v1 v2 -> coe du_'8804''45'trans_274)
-- Data.Fin.Properties.≤-isPartialOrder
d_'8804''45'isPartialOrder_318 ::
  Integer ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialOrder_162
d_'8804''45'isPartialOrder_318 ~v0
  = du_'8804''45'isPartialOrder_318
du_'8804''45'isPartialOrder_318 ::
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialOrder_162
du_'8804''45'isPartialOrder_318
  = coe
      MAlonzo.Code.Relation.Binary.Structures.C_IsPartialOrder'46'constructor_6659
      (coe du_'8804''45'isPreorder_314) erased
-- Data.Fin.Properties.≤-isTotalOrder
d_'8804''45'isTotalOrder_322 ::
  Integer ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsTotalOrder_384
d_'8804''45'isTotalOrder_322 ~v0 = du_'8804''45'isTotalOrder_322
du_'8804''45'isTotalOrder_322 ::
  MAlonzo.Code.Relation.Binary.Structures.T_IsTotalOrder_384
du_'8804''45'isTotalOrder_322
  = coe
      MAlonzo.Code.Relation.Binary.Structures.C_IsTotalOrder'46'constructor_15387
      (coe du_'8804''45'isPartialOrder_318) (coe du_'8804''45'total_286)
-- Data.Fin.Properties.≤-isDecTotalOrder
d_'8804''45'isDecTotalOrder_326 ::
  Integer ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsDecTotalOrder_434
d_'8804''45'isDecTotalOrder_326 ~v0
  = du_'8804''45'isDecTotalOrder_326
du_'8804''45'isDecTotalOrder_326 ::
  MAlonzo.Code.Relation.Binary.Structures.T_IsDecTotalOrder_434
du_'8804''45'isDecTotalOrder_326
  = coe
      MAlonzo.Code.Relation.Binary.Structures.C_IsDecTotalOrder'46'constructor_17071
      (coe du_'8804''45'isTotalOrder_322) (coe du__'8799'__20)
      (coe du__'8804''63'__298)
-- Data.Fin.Properties.≤-preorder
d_'8804''45'preorder_328 ::
  Integer -> MAlonzo.Code.Relation.Binary.Bundles.T_Preorder_132
d_'8804''45'preorder_328 ~v0 = du_'8804''45'preorder_328
du_'8804''45'preorder_328 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_Preorder_132
du_'8804''45'preorder_328
  = coe
      MAlonzo.Code.Relation.Binary.Bundles.C_Preorder'46'constructor_1855
      (coe du_'8804''45'isPreorder_314)
-- Data.Fin.Properties.≤-poset
d_'8804''45'poset_332 ::
  Integer -> MAlonzo.Code.Relation.Binary.Bundles.T_Poset_282
d_'8804''45'poset_332 ~v0 = du_'8804''45'poset_332
du_'8804''45'poset_332 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_Poset_282
du_'8804''45'poset_332
  = coe
      MAlonzo.Code.Relation.Binary.Bundles.C_Poset'46'constructor_4405
      (coe du_'8804''45'isPartialOrder_318)
-- Data.Fin.Properties.≤-totalOrder
d_'8804''45'totalOrder_336 ::
  Integer -> MAlonzo.Code.Relation.Binary.Bundles.T_TotalOrder_652
d_'8804''45'totalOrder_336 ~v0 = du_'8804''45'totalOrder_336
du_'8804''45'totalOrder_336 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalOrder_652
du_'8804''45'totalOrder_336
  = coe
      MAlonzo.Code.Relation.Binary.Bundles.C_TotalOrder'46'constructor_10811
      (coe du_'8804''45'isTotalOrder_322)
-- Data.Fin.Properties.≤-decTotalOrder
d_'8804''45'decTotalOrder_340 ::
  Integer -> MAlonzo.Code.Relation.Binary.Bundles.T_DecTotalOrder_740
d_'8804''45'decTotalOrder_340 ~v0 = du_'8804''45'decTotalOrder_340
du_'8804''45'decTotalOrder_340 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_DecTotalOrder_740
du_'8804''45'decTotalOrder_340
  = coe
      MAlonzo.Code.Relation.Binary.Bundles.C_DecTotalOrder'46'constructor_12427
      (coe du_'8804''45'isDecTotalOrder_326)
-- Data.Fin.Properties.<-irrefl
d_'60''45'irrefl_346 ::
  Integer ->
  MAlonzo.Code.Data.Fin.Base.T_Fin_6 ->
  MAlonzo.Code.Data.Fin.Base.T_Fin_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__18 ->
  MAlonzo.Code.Data.Empty.T_'8869'_4
d_'60''45'irrefl_346 = erased
-- Data.Fin.Properties.<-asym
d_'60''45'asym_350 ::
  Integer ->
  MAlonzo.Code.Data.Fin.Base.T_Fin_6 ->
  MAlonzo.Code.Data.Fin.Base.T_Fin_6 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__18 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__18 ->
  MAlonzo.Code.Data.Empty.T_'8869'_4
d_'60''45'asym_350 = erased
-- Data.Fin.Properties.<-trans
d_'60''45'trans_354 ::
  Integer ->
  MAlonzo.Code.Data.Fin.Base.T_Fin_6 ->
  MAlonzo.Code.Data.Fin.Base.T_Fin_6 ->
  MAlonzo.Code.Data.Fin.Base.T_Fin_6 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__18 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__18 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__18
d_'60''45'trans_354 ~v0 v1 v2 ~v3 = du_'60''45'trans_354 v1 v2
du_'60''45'trans_354 ::
  MAlonzo.Code.Data.Fin.Base.T_Fin_6 ->
  MAlonzo.Code.Data.Fin.Base.T_Fin_6 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__18 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__18 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__18
du_'60''45'trans_354 v0 v1
  = coe
      MAlonzo.Code.Data.Nat.Properties.du_'60''45'trans_1862
      (coe
         MAlonzo.Code.Function.Base.du_'8739'_'10217''45'__308
         (\ v2 v3 -> v3) (coe MAlonzo.Code.Data.Fin.Base.du_toℕ_20) v0 v1)
-- Data.Fin.Properties.<-cmp
d_'60''45'cmp_358 ::
  Integer ->
  MAlonzo.Code.Data.Fin.Base.T_Fin_6 ->
  MAlonzo.Code.Data.Fin.Base.T_Fin_6 ->
  MAlonzo.Code.Relation.Binary.Definitions.T_Tri_136
d_'60''45'cmp_358 ~v0 v1 v2 = du_'60''45'cmp_358 v1 v2
du_'60''45'cmp_358 ::
  MAlonzo.Code.Data.Fin.Base.T_Fin_6 ->
  MAlonzo.Code.Data.Fin.Base.T_Fin_6 ->
  MAlonzo.Code.Relation.Binary.Definitions.T_Tri_136
du_'60''45'cmp_358 v0 v1
  = case coe v0 of
      MAlonzo.Code.Data.Fin.Base.C_zero_10
        -> case coe v1 of
             MAlonzo.Code.Data.Fin.Base.C_zero_10
               -> coe
                    MAlonzo.Code.Relation.Binary.Definitions.C_tri'8776'_158 erased
             MAlonzo.Code.Data.Fin.Base.C_suc_16 v4
               -> coe
                    MAlonzo.Code.Relation.Binary.Definitions.C_tri'60'_150
                    (coe
                       MAlonzo.Code.Data.Nat.Base.C_s'8804's_30
                       (coe MAlonzo.Code.Data.Nat.Base.C_z'8804'n_22))
             _ -> MAlonzo.RTE.mazUnreachableError
      MAlonzo.Code.Data.Fin.Base.C_suc_16 v3
        -> case coe v1 of
             MAlonzo.Code.Data.Fin.Base.C_zero_10
               -> coe
                    MAlonzo.Code.Relation.Binary.Definitions.C_tri'62'_166
                    (coe
                       MAlonzo.Code.Data.Nat.Base.C_s'8804's_30
                       (coe MAlonzo.Code.Data.Nat.Base.C_z'8804'n_22))
             MAlonzo.Code.Data.Fin.Base.C_suc_16 v5
               -> let v6 = coe du_'60''45'cmp_358 (coe v3) (coe v5) in
                  case coe v6 of
                    MAlonzo.Code.Relation.Binary.Definitions.C_tri'60'_150 v7
                      -> coe
                           MAlonzo.Code.Relation.Binary.Definitions.C_tri'60'_150
                           (coe MAlonzo.Code.Data.Nat.Base.C_s'8804's_30 v7)
                    MAlonzo.Code.Relation.Binary.Definitions.C_tri'8776'_158 v8
                      -> coe
                           MAlonzo.Code.Relation.Binary.Definitions.C_tri'8776'_158 erased
                    MAlonzo.Code.Relation.Binary.Definitions.C_tri'62'_166 v9
                      -> coe
                           MAlonzo.Code.Relation.Binary.Definitions.C_tri'62'_166
                           (coe MAlonzo.Code.Data.Nat.Base.C_s'8804's_30 v9)
                    _ -> MAlonzo.RTE.mazUnreachableError
             _ -> MAlonzo.RTE.mazUnreachableError
      _ -> MAlonzo.RTE.mazUnreachableError
-- Data.Fin.Properties.<-respˡ-≡
d_'60''45'resp'737''45''8801'_404 ::
  Integer ->
  MAlonzo.Code.Data.Fin.Base.T_Fin_6 ->
  MAlonzo.Code.Data.Fin.Base.T_Fin_6 ->
  MAlonzo.Code.Data.Fin.Base.T_Fin_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__18 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__18
d_'60''45'resp'737''45''8801'_404 ~v0 ~v1 ~v2 ~v3 ~v4 v5
  = du_'60''45'resp'737''45''8801'_404 v5
du_'60''45'resp'737''45''8801'_404 ::
  MAlonzo.Code.Data.Nat.Base.T__'8804'__18 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__18
du_'60''45'resp'737''45''8801'_404 v0 = coe v0
-- Data.Fin.Properties.<-respʳ-≡
d_'60''45'resp'691''45''8801'_410 ::
  Integer ->
  MAlonzo.Code.Data.Fin.Base.T_Fin_6 ->
  MAlonzo.Code.Data.Fin.Base.T_Fin_6 ->
  MAlonzo.Code.Data.Fin.Base.T_Fin_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__18 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__18
d_'60''45'resp'691''45''8801'_410 ~v0 ~v1 ~v2 ~v3 ~v4 v5
  = du_'60''45'resp'691''45''8801'_410 v5
du_'60''45'resp'691''45''8801'_410 ::
  MAlonzo.Code.Data.Nat.Base.T__'8804'__18 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__18
du_'60''45'resp'691''45''8801'_410 v0 = coe v0
-- Data.Fin.Properties.<-resp₂-≡
d_'60''45'resp'8322''45''8801'_416 ::
  Integer -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'60''45'resp'8322''45''8801'_416 ~v0
  = du_'60''45'resp'8322''45''8801'_416
du_'60''45'resp'8322''45''8801'_416 ::
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_'60''45'resp'8322''45''8801'_416
  = coe
      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
      (coe (\ v0 v1 v2 v3 v4 -> v4)) (coe (\ v0 v1 v2 v3 v4 -> v4))
-- Data.Fin.Properties.<-irrelevant
d_'60''45'irrelevant_420 ::
  Integer ->
  MAlonzo.Code.Data.Fin.Base.T_Fin_6 ->
  MAlonzo.Code.Data.Fin.Base.T_Fin_6 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__18 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__18 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'60''45'irrelevant_420 = erased
-- Data.Fin.Properties.<-isStrictPartialOrder
d_'60''45'isStrictPartialOrder_424 ::
  Integer ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsStrictPartialOrder_266
d_'60''45'isStrictPartialOrder_424 ~v0
  = du_'60''45'isStrictPartialOrder_424
du_'60''45'isStrictPartialOrder_424 ::
  MAlonzo.Code.Relation.Binary.Structures.T_IsStrictPartialOrder_266
du_'60''45'isStrictPartialOrder_424
  = coe
      MAlonzo.Code.Relation.Binary.Structures.C_IsStrictPartialOrder'46'constructor_9921
      (coe
         MAlonzo.Code.Relation.Binary.PropositionalEquality.Properties.du_isEquivalence_242)
      (\ v0 v1 v2 -> coe du_'60''45'trans_354 v0 v1)
      (coe du_'60''45'resp'8322''45''8801'_416)
-- Data.Fin.Properties.<-isStrictTotalOrder
d_'60''45'isStrictTotalOrder_428 ::
  Integer ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsStrictTotalOrder_502
d_'60''45'isStrictTotalOrder_428 ~v0
  = du_'60''45'isStrictTotalOrder_428
du_'60''45'isStrictTotalOrder_428 ::
  MAlonzo.Code.Relation.Binary.Structures.T_IsStrictTotalOrder_502
du_'60''45'isStrictTotalOrder_428
  = coe
      MAlonzo.Code.Relation.Binary.Structures.C_IsStrictTotalOrder'46'constructor_19043
      (coe
         MAlonzo.Code.Relation.Binary.PropositionalEquality.Properties.du_isEquivalence_242)
      (\ v0 v1 v2 -> coe du_'60''45'trans_354 v0 v1)
      (coe du_'60''45'cmp_358)
-- Data.Fin.Properties.<-strictPartialOrder
d_'60''45'strictPartialOrder_430 ::
  Integer ->
  MAlonzo.Code.Relation.Binary.Bundles.T_StrictPartialOrder_472
d_'60''45'strictPartialOrder_430 ~v0
  = du_'60''45'strictPartialOrder_430
du_'60''45'strictPartialOrder_430 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_StrictPartialOrder_472
du_'60''45'strictPartialOrder_430
  = coe
      MAlonzo.Code.Relation.Binary.Bundles.C_StrictPartialOrder'46'constructor_7693
      (coe du_'60''45'isStrictPartialOrder_424)
-- Data.Fin.Properties.<-strictTotalOrder
d_'60''45'strictTotalOrder_434 ::
  Integer ->
  MAlonzo.Code.Relation.Binary.Bundles.T_StrictTotalOrder_864
d_'60''45'strictTotalOrder_434 ~v0
  = du_'60''45'strictTotalOrder_434
du_'60''45'strictTotalOrder_434 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_StrictTotalOrder_864
du_'60''45'strictTotalOrder_434
  = coe
      MAlonzo.Code.Relation.Binary.Bundles.C_StrictTotalOrder'46'constructor_14573
      (coe du_'60''45'isStrictTotalOrder_428)
-- Data.Fin.Properties.<⇒≢
d_'60''8658''8802'_444 ::
  Integer ->
  MAlonzo.Code.Data.Fin.Base.T_Fin_6 ->
  MAlonzo.Code.Data.Fin.Base.T_Fin_6 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__18 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Data.Empty.T_'8869'_4
d_'60''8658''8802'_444 = erased
-- Data.Fin.Properties.≤∧≢⇒<
d_'8804''8743''8802''8658''60'_454 ::
  Integer ->
  MAlonzo.Code.Data.Fin.Base.T_Fin_6 ->
  MAlonzo.Code.Data.Fin.Base.T_Fin_6 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__18 ->
  (MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
   MAlonzo.Code.Data.Empty.T_'8869'_4) ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__18
d_'8804''8743''8802''8658''60'_454 ~v0 v1 v2 v3 ~v4
  = du_'8804''8743''8802''8658''60'_454 v1 v2 v3
du_'8804''8743''8802''8658''60'_454 ::
  MAlonzo.Code.Data.Fin.Base.T_Fin_6 ->
  MAlonzo.Code.Data.Fin.Base.T_Fin_6 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__18 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__18
du_'8804''8743''8802''8658''60'_454 v0 v1 v2
  = case coe v0 of
      MAlonzo.Code.Data.Fin.Base.C_zero_10
        -> case coe v1 of
             MAlonzo.Code.Data.Fin.Base.C_zero_10
               -> coe
                    MAlonzo.Code.Relation.Nullary.Negation.Core.du_contradiction_24
             MAlonzo.Code.Data.Fin.Base.C_suc_16 v5
               -> coe
                    MAlonzo.Code.Data.Nat.Base.C_s'8804's_30
                    (coe MAlonzo.Code.Data.Nat.Base.C_z'8804'n_22)
             _ -> MAlonzo.RTE.mazUnreachableError
      MAlonzo.Code.Data.Fin.Base.C_suc_16 v4
        -> case coe v1 of
             MAlonzo.Code.Data.Fin.Base.C_suc_16 v6
               -> case coe v2 of
                    MAlonzo.Code.Data.Nat.Base.C_s'8804's_30 v9
                      -> coe
                           MAlonzo.Code.Data.Nat.Base.C_s'8804's_30
                           (coe
                              du_'8804''8743''8802''8658''60'_454 (coe v4) (coe v6) (coe v9))
                    _ -> MAlonzo.RTE.mazUnreachableError
             _ -> MAlonzo.RTE.mazUnreachableError
      _ -> MAlonzo.RTE.mazUnreachableError
-- Data.Fin.Properties.toℕ-inject
d_toℕ'45'inject_474 ::
  Integer ->
  MAlonzo.Code.Data.Fin.Base.T_Fin_6 ->
  MAlonzo.Code.Data.Fin.Base.T_Fin_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_toℕ'45'inject_474 = erased
-- Data.Fin.Properties.toℕ-inject+
d_toℕ'45'inject'43'_488 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Fin.Base.T_Fin_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_toℕ'45'inject'43'_488 = erased
-- Data.Fin.Properties.inject₁-injective
d_inject'8321''45'injective_502 ::
  Integer ->
  MAlonzo.Code.Data.Fin.Base.T_Fin_6 ->
  MAlonzo.Code.Data.Fin.Base.T_Fin_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_inject'8321''45'injective_502 = erased
-- Data.Fin.Properties.toℕ-inject₁
d_toℕ'45'inject'8321'_516 ::
  Integer ->
  MAlonzo.Code.Data.Fin.Base.T_Fin_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_toℕ'45'inject'8321'_516 = erased
-- Data.Fin.Properties.toℕ-inject₁-≢
d_toℕ'45'inject'8321''45''8802'_524 ::
  Integer ->
  MAlonzo.Code.Data.Fin.Base.T_Fin_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Data.Empty.T_'8869'_4
d_toℕ'45'inject'8321''45''8802'_524 = erased
-- Data.Fin.Properties.inject₁ℕ<
d_inject'8321'ℕ'60'_532 ::
  Integer ->
  MAlonzo.Code.Data.Fin.Base.T_Fin_6 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__18
d_inject'8321'ℕ'60'_532 ~v0 v1 = du_inject'8321'ℕ'60'_532 v1
du_inject'8321'ℕ'60'_532 ::
  MAlonzo.Code.Data.Fin.Base.T_Fin_6 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__18
du_inject'8321'ℕ'60'_532 v0 = coe du_toℕ'60'n_92 (coe v0)
-- Data.Fin.Properties.inject₁ℕ≤
d_inject'8321'ℕ'8804'_544 ::
  Integer ->
  MAlonzo.Code.Data.Fin.Base.T_Fin_6 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__18
d_inject'8321'ℕ'8804'_544 v0 v1
  = coe
      MAlonzo.Code.Data.Nat.Properties.du_'60''8658''8804'_1736 (coe v0)
      (coe du_inject'8321'ℕ'60'_532 (coe v1))
-- Data.Fin.Properties.≤̄⇒inject₁<
d_'8804''772''8658'inject'8321''60'_552 ::
  Integer ->
  MAlonzo.Code.Data.Fin.Base.T_Fin_6 ->
  MAlonzo.Code.Data.Fin.Base.T_Fin_6 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__18 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__18
d_'8804''772''8658'inject'8321''60'_552 ~v0 ~v1 ~v2 v3
  = du_'8804''772''8658'inject'8321''60'_552 v3
du_'8804''772''8658'inject'8321''60'_552 ::
  MAlonzo.Code.Data.Nat.Base.T__'8804'__18 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__18
du_'8804''772''8658'inject'8321''60'_552 v0
  = coe MAlonzo.Code.Data.Nat.Base.C_s'8804's_30 v0
-- Data.Fin.Properties.ℕ<⇒inject₁<
d_ℕ'60''8658'inject'8321''60'_568 ::
  Integer ->
  MAlonzo.Code.Data.Fin.Base.T_Fin_6 ->
  MAlonzo.Code.Data.Fin.Base.T_Fin_6 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__18 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__18
d_ℕ'60''8658'inject'8321''60'_568 ~v0 v1 ~v2 v3
  = du_ℕ'60''8658'inject'8321''60'_568 v1 v3
du_ℕ'60''8658'inject'8321''60'_568 ::
  MAlonzo.Code.Data.Fin.Base.T_Fin_6 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__18 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__18
du_ℕ'60''8658'inject'8321''60'_568 v0 v1
  = coe
      seq (coe v0)
      (case coe v1 of
         MAlonzo.Code.Data.Nat.Base.C_s'8804's_30 v4
           -> coe du_'8804''772''8658'inject'8321''60'_552 (coe v4)
         _ -> MAlonzo.RTE.mazUnreachableError)
-- Data.Fin.Properties.toℕ-lower₁
d_toℕ'45'lower'8321'_580 ::
  Integer ->
  MAlonzo.Code.Data.Fin.Base.T_Fin_6 ->
  (MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
   MAlonzo.Code.Data.Empty.T_'8869'_4) ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_toℕ'45'lower'8321'_580 = erased
-- Data.Fin.Properties.inject₁-lower₁
d_inject'8321''45'lower'8321'_600 ::
  Integer ->
  MAlonzo.Code.Data.Fin.Base.T_Fin_6 ->
  (MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
   MAlonzo.Code.Data.Empty.T_'8869'_4) ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_inject'8321''45'lower'8321'_600 = erased
-- Data.Fin.Properties.lower₁-inject₁′
d_lower'8321''45'inject'8321''8242'_618 ::
  Integer ->
  MAlonzo.Code.Data.Fin.Base.T_Fin_6 ->
  (MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
   MAlonzo.Code.Data.Empty.T_'8869'_4) ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_lower'8321''45'inject'8321''8242'_618 = erased
-- Data.Fin.Properties.lower₁-inject₁
d_lower'8321''45'inject'8321'_628 ::
  Integer ->
  MAlonzo.Code.Data.Fin.Base.T_Fin_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_lower'8321''45'inject'8321'_628 = erased
-- Data.Fin.Properties.lower₁-irrelevant
d_lower'8321''45'irrelevant_640 ::
  Integer ->
  MAlonzo.Code.Data.Fin.Base.T_Fin_6 ->
  (MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
   MAlonzo.Code.Data.Empty.T_'8869'_4) ->
  (MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
   MAlonzo.Code.Data.Empty.T_'8869'_4) ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_lower'8321''45'irrelevant_640 = erased
-- Data.Fin.Properties.inject₁≡⇒lower₁≡
d_inject'8321''8801''8658'lower'8321''8801'_658 ::
  Integer ->
  MAlonzo.Code.Data.Fin.Base.T_Fin_6 ->
  MAlonzo.Code.Data.Fin.Base.T_Fin_6 ->
  (MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
   MAlonzo.Code.Data.Empty.T_'8869'_4) ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_inject'8321''8801''8658'lower'8321''8801'_658 = erased
-- Data.Fin.Properties.toℕ-inject≤
d_toℕ'45'inject'8804'_672 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Fin.Base.T_Fin_6 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__18 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_toℕ'45'inject'8804'_672 = erased
-- Data.Fin.Properties.inject≤-refl
d_inject'8804''45'refl_688 ::
  Integer ->
  MAlonzo.Code.Data.Fin.Base.T_Fin_6 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__18 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_inject'8804''45'refl_688 = erased
-- Data.Fin.Properties.inject≤-idempotent
d_inject'8804''45'idempotent_712 ::
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Fin.Base.T_Fin_6 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__18 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__18 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__18 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_inject'8804''45'idempotent_712 = erased
-- Data.Fin.Properties.inject≤-injective
d_inject'8804''45'injective_740 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__18 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__18 ->
  MAlonzo.Code.Data.Fin.Base.T_Fin_6 ->
  MAlonzo.Code.Data.Fin.Base.T_Fin_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_inject'8804''45'injective_740 = erased
-- Data.Fin.Properties.pred<
d_pred'60'_762 ::
  Integer ->
  MAlonzo.Code.Data.Fin.Base.T_Fin_6 ->
  (MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
   MAlonzo.Code.Data.Empty.T_'8869'_4) ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__18
d_pred'60'_762 ~v0 v1 ~v2 = du_pred'60'_762 v1
du_pred'60'_762 ::
  MAlonzo.Code.Data.Fin.Base.T_Fin_6 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__18
du_pred'60'_762 v0
  = case coe v0 of
      MAlonzo.Code.Data.Fin.Base.C_zero_10
        -> coe
             MAlonzo.Code.Relation.Nullary.Negation.Core.du_contradiction_24
      MAlonzo.Code.Data.Fin.Base.C_suc_16 v2
        -> coe
             du_'8804''772''8658'inject'8321''60'_552
             (coe
                MAlonzo.Code.Data.Nat.Properties.d_'8804''45'refl_1634
                (coe
                   MAlonzo.Code.Function.Base.du__'45''10216'_'8739'_302
                   (coe MAlonzo.Code.Data.Fin.Base.du_toℕ_20) (\ v3 v4 -> v3) v2 v2))
      _ -> MAlonzo.RTE.mazUnreachableError
-- Data.Fin.Properties.splitAt-inject+
d_splitAt'45'inject'43'_776 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Fin.Base.T_Fin_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_splitAt'45'inject'43'_776 = erased
-- Data.Fin.Properties.splitAt-raise
d_splitAt'45'raise_798 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Fin.Base.T_Fin_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_splitAt'45'raise_798 = erased
-- Data.Fin.Properties.splitAt-join
d_splitAt'45'join_820 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_splitAt'45'join_820 = erased
-- Data.Fin.Properties.join-splitAt
d_join'45'splitAt_840 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Fin.Base.T_Fin_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_join'45'splitAt_840 = erased
-- Data.Fin.Properties.splitAt-<
d_splitAt'45''60'_868 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Fin.Base.T_Fin_6 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__18 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_splitAt'45''60'_868 = erased
-- Data.Fin.Properties.splitAt-≥
d_splitAt'45''8805'_886 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Fin.Base.T_Fin_6 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__18 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_splitAt'45''8805'_886 = erased
-- Data.Fin.Properties.+↔⊎
d_'43''8596''8846'_900 ::
  Integer -> Integer -> MAlonzo.Code.Function.Bundles.T_Inverse_1048
d_'43''8596''8846'_900 v0 ~v1 = du_'43''8596''8846'_900 v0
du_'43''8596''8846'_900 ::
  Integer -> MAlonzo.Code.Function.Bundles.T_Inverse_1048
du_'43''8596''8846'_900 v0
  = coe
      MAlonzo.Code.Function.Bundles.du_mk'8596''8242'_1382
      (coe MAlonzo.Code.Data.Fin.Base.du_splitAt_202 (coe v0))
      (coe MAlonzo.Code.Data.Fin.Base.du_join_216 (coe v0)) erased erased
-- Data.Fin.Properties.remQuot-combine
d_remQuot'45'combine_914 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Fin.Base.T_Fin_6 ->
  MAlonzo.Code.Data.Fin.Base.T_Fin_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_remQuot'45'combine_914 = erased
-- Data.Fin.Properties.combine-remQuot
d_combine'45'remQuot_944 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Fin.Base.T_Fin_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_combine'45'remQuot_944 = erased
-- Data.Fin.Properties.*↔×
d_'42''8596''215'_988 ::
  Integer -> Integer -> MAlonzo.Code.Function.Bundles.T_Inverse_1048
d_'42''8596''215'_988 ~v0 v1 = du_'42''8596''215'_988 v1
du_'42''8596''215'_988 ::
  Integer -> MAlonzo.Code.Function.Bundles.T_Inverse_1048
du_'42''8596''215'_988 v0
  = coe
      MAlonzo.Code.Function.Bundles.du_mk'8596''8242'_1382
      (coe MAlonzo.Code.Data.Fin.Base.du_remQuot_258 (coe v0))
      (coe
         MAlonzo.Code.Data.Product.du_uncurry_264
         (coe MAlonzo.Code.Data.Fin.Base.du_combine_266 (coe v0)))
      erased erased
-- Data.Fin.Properties.lift-injective
d_lift'45'injective_1010 ::
  Integer ->
  Integer ->
  (MAlonzo.Code.Data.Fin.Base.T_Fin_6 ->
   MAlonzo.Code.Data.Fin.Base.T_Fin_6) ->
  (MAlonzo.Code.Data.Fin.Base.T_Fin_6 ->
   MAlonzo.Code.Data.Fin.Base.T_Fin_6 ->
   MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
   MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12) ->
  Integer ->
  MAlonzo.Code.Data.Fin.Base.T_Fin_6 ->
  MAlonzo.Code.Data.Fin.Base.T_Fin_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_lift'45'injective_1010 = erased
-- Data.Fin.Properties.≺⇒<′
d_'8826''8658''60''8242'_1038 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Fin.Base.T__'8826'__494 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804''8242'__154
d_'8826''8658''60''8242'_1038 ~v0 v1 v2
  = du_'8826''8658''60''8242'_1038 v1 v2
du_'8826''8658''60''8242'_1038 ::
  Integer ->
  MAlonzo.Code.Data.Fin.Base.T__'8826'__494 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804''8242'__154
du_'8826''8658''60''8242'_1038 v0 v1
  = case coe v1 of
      MAlonzo.Code.Data.Fin.Base.C__'8827'toℕ__500 v3
        -> coe
             MAlonzo.Code.Data.Nat.Properties.du_'8804''8658''8804''8242'_4640
             (coe v0) (coe du_toℕ'60'n_92 (coe v3))
      _ -> MAlonzo.RTE.mazUnreachableError
-- Data.Fin.Properties.<′⇒≺
d_'60''8242''8658''8826'_1044 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T__'8804''8242'__154 ->
  MAlonzo.Code.Data.Fin.Base.T__'8826'__494
d_'60''8242''8658''8826'_1044 v0 ~v1 v2
  = du_'60''8242''8658''8826'_1044 v0 v2
du_'60''8242''8658''8826'_1044 ::
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T__'8804''8242'__154 ->
  MAlonzo.Code.Data.Fin.Base.T__'8826'__494
du_'60''8242''8658''8826'_1044 v0 v1
  = case coe v1 of
      MAlonzo.Code.Data.Nat.Base.C_'8804''8242''45'refl_158
        -> coe
             MAlonzo.Code.Data.Fin.Base.C__'8827'toℕ__500
             (MAlonzo.Code.Data.Fin.Base.d_fromℕ_58 (coe v0))
      MAlonzo.Code.Data.Nat.Base.C_'8804''8242''45'step_164 v3
        -> coe du_'60''8242''8658''8826'_1044 (coe v0) (coe v3)
      _ -> MAlonzo.RTE.mazUnreachableError
-- Data.Fin.Properties.<⇒≤pred
d_'60''8658''8804'pred_1070 ::
  Integer ->
  MAlonzo.Code.Data.Fin.Base.T_Fin_6 ->
  MAlonzo.Code.Data.Fin.Base.T_Fin_6 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__18 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__18
d_'60''8658''8804'pred_1070 ~v0 v1 v2 v3
  = du_'60''8658''8804'pred_1070 v1 v2 v3
du_'60''8658''8804'pred_1070 ::
  MAlonzo.Code.Data.Fin.Base.T_Fin_6 ->
  MAlonzo.Code.Data.Fin.Base.T_Fin_6 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__18 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__18
du_'60''8658''8804'pred_1070 v0 v1 v2
  = coe
      seq (coe v0)
      (case coe v1 of
         MAlonzo.Code.Data.Fin.Base.C_zero_10
           -> coe MAlonzo.Code.Data.Nat.Base.C_z'8804'n_22
         MAlonzo.Code.Data.Fin.Base.C_suc_16 v4
           -> case coe v2 of
                MAlonzo.Code.Data.Nat.Base.C_s'8804's_30 v7 -> coe v7
                _ -> MAlonzo.RTE.mazUnreachableError
         _ -> MAlonzo.RTE.mazUnreachableError)
-- Data.Fin.Properties.toℕ‿ℕ-
d_toℕ'8255'ℕ'45'_1088 ::
  Integer ->
  MAlonzo.Code.Data.Fin.Base.T_Fin_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_toℕ'8255'ℕ'45'_1088 = erased
-- Data.Fin.Properties.nℕ-ℕi≤n
d_nℕ'45'ℕi'8804'n_1100 ::
  Integer ->
  MAlonzo.Code.Data.Fin.Base.T_Fin_6 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__18
d_nℕ'45'ℕi'8804'n_1100 v0 v1
  = case coe v1 of
      MAlonzo.Code.Data.Fin.Base.C_zero_10
        -> coe
             MAlonzo.Code.Data.Nat.Properties.d_'8804''45'refl_1634
             (coe
                MAlonzo.Code.Data.Fin.Base.d__ℕ'45'ℕ__402 (coe v0)
                (coe MAlonzo.Code.Data.Fin.Base.C_zero_10))
      MAlonzo.Code.Data.Fin.Base.C_suc_16 v3
        -> let v4 = subInt (coe v0) (coe (1 :: Integer)) in
           coe
             MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.du_begin__160
             (coe MAlonzo.Code.Data.Nat.Properties.d_'8804''45'isPreorder_1684)
             (\ v5 v6 v7 ->
                coe
                  MAlonzo.Code.Data.Nat.Properties.du_'60''8658''8804'_1736 v6 v7)
             (coe
                MAlonzo.Code.Data.Fin.Base.d__ℕ'45'ℕ__402 (coe v0)
                (coe MAlonzo.Code.Data.Fin.Base.C_suc_16 v3))
             (coe v0)
             (coe
                MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.du_step'45''8804'_228
                (coe MAlonzo.Code.Data.Nat.Properties.d_'8804''45'isPreorder_1684)
                (\ v5 v6 v7 v8 v9 ->
                   coe
                     MAlonzo.Code.Data.Nat.Properties.du_'60''45'trans'691'_1868 v8 v9)
                (coe MAlonzo.Code.Data.Fin.Base.d__ℕ'45'ℕ__402 (coe v4) (coe v3))
                (coe v4) (coe v0)
                (coe
                   MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.du_step'45''8804'_228
                   (coe MAlonzo.Code.Data.Nat.Properties.d_'8804''45'isPreorder_1684)
                   (\ v5 v6 v7 v8 v9 ->
                      coe
                        MAlonzo.Code.Data.Nat.Properties.du_'60''45'trans'691'_1868 v8 v9)
                   (coe v4) (coe v0) (coe v0)
                   (coe
                      MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.du__'8718'_346
                      (coe MAlonzo.Code.Data.Nat.Properties.d_'8804''45'isPreorder_1684)
                      (coe v0))
                   (coe
                      MAlonzo.Code.Data.Nat.Properties.d_n'8804'1'43'n_1724 (coe v4)))
                (coe d_nℕ'45'ℕi'8804'n_1100 (coe v4) (coe v3)))
      _ -> MAlonzo.RTE.mazUnreachableError
-- Data.Fin.Properties.punchIn-injective
d_punchIn'45'injective_1120 ::
  Integer ->
  MAlonzo.Code.Data.Fin.Base.T_Fin_6 ->
  MAlonzo.Code.Data.Fin.Base.T_Fin_6 ->
  MAlonzo.Code.Data.Fin.Base.T_Fin_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_punchIn'45'injective_1120 = erased
-- Data.Fin.Properties.punchInᵢ≢i
d_punchIn'7522''8802'i_1138 ::
  Integer ->
  MAlonzo.Code.Data.Fin.Base.T_Fin_6 ->
  MAlonzo.Code.Data.Fin.Base.T_Fin_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Data.Empty.T_'8869'_4
d_punchIn'7522''8802'i_1138 = erased
-- Data.Fin.Properties.punchOut-cong
d_punchOut'45'cong_1156 ::
  Integer ->
  MAlonzo.Code.Data.Fin.Base.T_Fin_6 ->
  MAlonzo.Code.Data.Fin.Base.T_Fin_6 ->
  MAlonzo.Code.Data.Fin.Base.T_Fin_6 ->
  (MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
   MAlonzo.Code.Data.Empty.T_'8869'_4) ->
  (MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
   MAlonzo.Code.Data.Empty.T_'8869'_4) ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_punchOut'45'cong_1156 = erased
-- Data.Fin.Properties.punchOut-cong′
d_punchOut'45'cong'8242'_1192 ::
  Integer ->
  MAlonzo.Code.Data.Fin.Base.T_Fin_6 ->
  MAlonzo.Code.Data.Fin.Base.T_Fin_6 ->
  MAlonzo.Code.Data.Fin.Base.T_Fin_6 ->
  (MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
   MAlonzo.Code.Data.Empty.T_'8869'_4) ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_punchOut'45'cong'8242'_1192 = erased
-- Data.Fin.Properties.punchOut-injective
d_punchOut'45'injective_1210 ::
  Integer ->
  MAlonzo.Code.Data.Fin.Base.T_Fin_6 ->
  MAlonzo.Code.Data.Fin.Base.T_Fin_6 ->
  MAlonzo.Code.Data.Fin.Base.T_Fin_6 ->
  (MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
   MAlonzo.Code.Data.Empty.T_'8869'_4) ->
  (MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
   MAlonzo.Code.Data.Empty.T_'8869'_4) ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_punchOut'45'injective_1210 = erased
-- Data.Fin.Properties.punchIn-punchOut
d_punchIn'45'punchOut_1248 ::
  Integer ->
  MAlonzo.Code.Data.Fin.Base.T_Fin_6 ->
  MAlonzo.Code.Data.Fin.Base.T_Fin_6 ->
  (MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
   MAlonzo.Code.Data.Empty.T_'8869'_4) ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_punchIn'45'punchOut_1248 = erased
-- Data.Fin.Properties.punchOut-punchIn
d_punchOut'45'punchIn_1274 ::
  Integer ->
  MAlonzo.Code.Data.Fin.Base.T_Fin_6 ->
  MAlonzo.Code.Data.Fin.Base.T_Fin_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_punchOut'45'punchIn_1274 = erased
-- Data.Fin.Properties.pinch-surjective
d_pinch'45'surjective_1292 ::
  Integer ->
  MAlonzo.Code.Data.Fin.Base.T_Fin_6 ->
  MAlonzo.Code.Data.Fin.Base.T_Fin_6 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_pinch'45'surjective_1292 ~v0 v1 v2
  = du_pinch'45'surjective_1292 v1 v2
du_pinch'45'surjective_1292 ::
  MAlonzo.Code.Data.Fin.Base.T_Fin_6 ->
  MAlonzo.Code.Data.Fin.Base.T_Fin_6 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_pinch'45'surjective_1292 v0 v1
  = case coe v1 of
      MAlonzo.Code.Data.Fin.Base.C_zero_10
        -> coe
             MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
             (coe MAlonzo.Code.Data.Fin.Base.C_zero_10) erased
      MAlonzo.Code.Data.Fin.Base.C_suc_16 v3
        -> case coe v0 of
             MAlonzo.Code.Data.Fin.Base.C_zero_10
               -> coe
                    MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                    (coe
                       MAlonzo.Code.Data.Fin.Base.C_suc_16
                       (coe MAlonzo.Code.Data.Fin.Base.C_suc_16 v3))
                    erased
             MAlonzo.Code.Data.Fin.Base.C_suc_16 v5
               -> coe
                    MAlonzo.Code.Data.Product.du_map_148
                    (coe MAlonzo.Code.Data.Fin.Base.C_suc_16) erased
                    (coe du_pinch'45'surjective_1292 (coe v5) (coe v3))
             _ -> MAlonzo.RTE.mazUnreachableError
      _ -> MAlonzo.RTE.mazUnreachableError
-- Data.Fin.Properties.pinch-mono-≤
d_pinch'45'mono'45''8804'_1304 ::
  Integer ->
  MAlonzo.Code.Data.Fin.Base.T_Fin_6 ->
  MAlonzo.Code.Data.Fin.Base.T_Fin_6 ->
  MAlonzo.Code.Data.Fin.Base.T_Fin_6 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__18 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__18
d_pinch'45'mono'45''8804'_1304 ~v0 v1 v2 v3 v4
  = du_pinch'45'mono'45''8804'_1304 v1 v2 v3 v4
du_pinch'45'mono'45''8804'_1304 ::
  MAlonzo.Code.Data.Fin.Base.T_Fin_6 ->
  MAlonzo.Code.Data.Fin.Base.T_Fin_6 ->
  MAlonzo.Code.Data.Fin.Base.T_Fin_6 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__18 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__18
du_pinch'45'mono'45''8804'_1304 v0 v1 v2 v3
  = case coe v0 of
      MAlonzo.Code.Data.Fin.Base.C_zero_10
        -> case coe v1 of
             MAlonzo.Code.Data.Fin.Base.C_zero_10
               -> coe MAlonzo.Code.Data.Nat.Base.C_z'8804'n_22
             MAlonzo.Code.Data.Fin.Base.C_suc_16 v6
               -> coe
                    seq (coe v2)
                    (case coe v3 of
                       MAlonzo.Code.Data.Nat.Base.C_s'8804's_30 v9 -> coe v9
                       _ -> MAlonzo.RTE.mazUnreachableError)
             _ -> MAlonzo.RTE.mazUnreachableError
      MAlonzo.Code.Data.Fin.Base.C_suc_16 v5
        -> case coe v1 of
             MAlonzo.Code.Data.Fin.Base.C_zero_10
               -> coe MAlonzo.Code.Data.Nat.Base.C_z'8804'n_22
             MAlonzo.Code.Data.Fin.Base.C_suc_16 v7
               -> case coe v2 of
                    MAlonzo.Code.Data.Fin.Base.C_suc_16 v9
                      -> case coe v3 of
                           MAlonzo.Code.Data.Nat.Base.C_s'8804's_30 v12
                             -> coe
                                  MAlonzo.Code.Data.Nat.Base.C_s'8804's_30
                                  (coe
                                     du_pinch'45'mono'45''8804'_1304 (coe v5) (coe v7) (coe v9)
                                     (coe v12))
                           _ -> MAlonzo.RTE.mazUnreachableError
                    _ -> MAlonzo.RTE.mazUnreachableError
             _ -> MAlonzo.RTE.mazUnreachableError
      _ -> MAlonzo.RTE.mazUnreachableError
-- Data.Fin.Properties._.∀-cons
d_'8704''45'cons_1340 ::
  Integer ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  (MAlonzo.Code.Data.Fin.Base.T_Fin_6 -> ()) ->
  AgdaAny ->
  (MAlonzo.Code.Data.Fin.Base.T_Fin_6 -> AgdaAny) ->
  MAlonzo.Code.Data.Fin.Base.T_Fin_6 -> AgdaAny
d_'8704''45'cons_1340 ~v0 ~v1 ~v2 v3 v4 v5
  = du_'8704''45'cons_1340 v3 v4 v5
du_'8704''45'cons_1340 ::
  AgdaAny ->
  (MAlonzo.Code.Data.Fin.Base.T_Fin_6 -> AgdaAny) ->
  MAlonzo.Code.Data.Fin.Base.T_Fin_6 -> AgdaAny
du_'8704''45'cons_1340 v0 v1 v2
  = case coe v2 of
      MAlonzo.Code.Data.Fin.Base.C_zero_10 -> coe v0
      MAlonzo.Code.Data.Fin.Base.C_suc_16 v4 -> coe v1 v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Data.Fin.Properties._.∀-cons-⇔
d_'8704''45'cons'45''8660'_1352 ::
  Integer ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  (MAlonzo.Code.Data.Fin.Base.T_Fin_6 -> ()) ->
  MAlonzo.Code.Function.Equivalence.T_Equivalence_16
d_'8704''45'cons'45''8660'_1352 ~v0 ~v1 ~v2
  = du_'8704''45'cons'45''8660'_1352
du_'8704''45'cons'45''8660'_1352 ::
  MAlonzo.Code.Function.Equivalence.T_Equivalence_16
du_'8704''45'cons'45''8660'_1352
  = coe
      MAlonzo.Code.Function.Equivalence.du_equivalence_56
      (coe
         MAlonzo.Code.Data.Product.du_uncurry_264
         (coe du_'8704''45'cons_1340))
      (coe
         MAlonzo.Code.Data.Product.du_'60'_'44'_'62'_132
         (coe (\ v0 -> coe v0 (coe MAlonzo.Code.Data.Fin.Base.C_zero_10)))
         (coe
            (\ v0 v1 -> coe v0 (coe MAlonzo.Code.Data.Fin.Base.C_suc_16 v1))))
-- Data.Fin.Properties._.∃-here
d_'8707''45'here_1358 ::
  Integer ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  (MAlonzo.Code.Data.Fin.Base.T_Fin_6 -> ()) ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'8707''45'here_1358 ~v0 ~v1 ~v2 v3 = du_'8707''45'here_1358 v3
du_'8707''45'here_1358 ::
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_'8707''45'here_1358 v0
  = coe
      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
      (coe MAlonzo.Code.Data.Fin.Base.C_zero_10) (coe v0)
-- Data.Fin.Properties._.∃-there
d_'8707''45'there_1362 ::
  Integer ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  (MAlonzo.Code.Data.Fin.Base.T_Fin_6 -> ()) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'8707''45'there_1362 ~v0 ~v1 ~v2 = du_'8707''45'there_1362
du_'8707''45'there_1362 ::
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_'8707''45'there_1362
  = coe
      MAlonzo.Code.Data.Product.du_map_148
      (coe MAlonzo.Code.Data.Fin.Base.C_suc_16) (coe (\ v0 v1 -> v1))
-- Data.Fin.Properties._.∃-toSum
d_'8707''45'toSum_1364 ::
  Integer ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  (MAlonzo.Code.Data.Fin.Base.T_Fin_6 -> ()) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30
d_'8707''45'toSum_1364 ~v0 ~v1 ~v2 v3 = du_'8707''45'toSum_1364 v3
du_'8707''45'toSum_1364 ::
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30
du_'8707''45'toSum_1364 v0
  = case coe v0 of
      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v1 v2
        -> case coe v1 of
             MAlonzo.Code.Data.Fin.Base.C_zero_10
               -> coe MAlonzo.Code.Data.Sum.Base.C_inj'8321'_38 (coe v2)
             MAlonzo.Code.Data.Fin.Base.C_suc_16 v4
               -> coe
                    MAlonzo.Code.Data.Sum.Base.C_inj'8322'_42
                    (coe MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 (coe v4) (coe v2))
             _ -> MAlonzo.RTE.mazUnreachableError
      _ -> MAlonzo.RTE.mazUnreachableError
-- Data.Fin.Properties._.⊎⇔∃
d_'8846''8660''8707'_1372 ::
  Integer ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  (MAlonzo.Code.Data.Fin.Base.T_Fin_6 -> ()) ->
  MAlonzo.Code.Function.Equivalence.T_Equivalence_16
d_'8846''8660''8707'_1372 ~v0 ~v1 ~v2 = du_'8846''8660''8707'_1372
du_'8846''8660''8707'_1372 ::
  MAlonzo.Code.Function.Equivalence.T_Equivalence_16
du_'8846''8660''8707'_1372
  = coe
      MAlonzo.Code.Function.Equivalence.du_equivalence_56
      (coe
         MAlonzo.Code.Data.Sum.Base.du_'91'_'44'_'93'_52
         (coe du_'8707''45'here_1358) (coe du_'8707''45'there_1362))
      (coe du_'8707''45'toSum_1364)
-- Data.Fin.Properties.decFinSubset
d_decFinSubset_1386 ::
  Integer ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  (MAlonzo.Code.Data.Fin.Base.T_Fin_6 -> ()) ->
  (MAlonzo.Code.Data.Fin.Base.T_Fin_6 -> ()) ->
  (MAlonzo.Code.Data.Fin.Base.T_Fin_6 ->
   MAlonzo.Code.Relation.Nullary.T_Dec_32) ->
  (MAlonzo.Code.Data.Fin.Base.T_Fin_6 ->
   AgdaAny -> MAlonzo.Code.Relation.Nullary.T_Dec_32) ->
  MAlonzo.Code.Relation.Nullary.T_Dec_32
d_decFinSubset_1386 v0 ~v1 ~v2 ~v3 ~v4 v5 v6
  = du_decFinSubset_1386 v0 v5 v6
du_decFinSubset_1386 ::
  Integer ->
  (MAlonzo.Code.Data.Fin.Base.T_Fin_6 ->
   MAlonzo.Code.Relation.Nullary.T_Dec_32) ->
  (MAlonzo.Code.Data.Fin.Base.T_Fin_6 ->
   AgdaAny -> MAlonzo.Code.Relation.Nullary.T_Dec_32) ->
  MAlonzo.Code.Relation.Nullary.T_Dec_32
du_decFinSubset_1386 v0 v1 v2
  = case coe v0 of
      0 -> coe
             MAlonzo.Code.Relation.Nullary.C__because__46
             (coe MAlonzo.Code.Agda.Builtin.Bool.C_true_10)
             (coe MAlonzo.Code.Relation.Nullary.C_of'696'_22 erased)
      _ -> let v3 = subInt (coe v0) (coe (1 :: Integer)) in
           let v4 = coe v1 (coe MAlonzo.Code.Data.Fin.Base.C_zero_10) in
           let v5 = coe du_'8704''45'cons_1340 in
           case coe v4 of
             MAlonzo.Code.Relation.Nullary.C__because__46 v6 v7
               -> if coe v6
                    then coe
                           MAlonzo.Code.Relation.Nullary.Decidable.Core.du_map'8242'_168
                           (coe
                              MAlonzo.Code.Data.Product.du_uncurry_264
                              (coe
                                 (\ v8 v9 v10 -> coe v5 (\ v11 -> v8) (\ v11 -> coe v9 v11) v10)))
                           (coe
                              MAlonzo.Code.Relation.Nullary.Product.du__'215''45'dec__30
                              (coe
                                 v2 (coe MAlonzo.Code.Data.Fin.Base.C_zero_10)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.du_invert_20 (coe v7)))
                              (coe
                                 du_decFinSubset_1386 (coe v3)
                                 (coe (\ v8 -> coe v1 (coe MAlonzo.Code.Data.Fin.Base.C_suc_16 v8)))
                                 (coe
                                    (\ v8 -> coe v2 (coe MAlonzo.Code.Data.Fin.Base.C_suc_16 v8)))))
                    else coe
                           MAlonzo.Code.Relation.Nullary.Decidable.Core.du_map'8242'_168
                           (coe
                              (\ v8 v9 ->
                                 coe
                                   v5 (\ v10 -> coe MAlonzo.Code.Data.Empty.du_'8869''45'elim_10)
                                   (\ v10 -> coe v8 v10) v9))
                           (coe
                              du_decFinSubset_1386 (coe v3)
                              (coe (\ v8 -> coe v1 (coe MAlonzo.Code.Data.Fin.Base.C_suc_16 v8)))
                              (coe
                                 (\ v8 -> coe v2 (coe MAlonzo.Code.Data.Fin.Base.C_suc_16 v8))))
             _ -> MAlonzo.RTE.mazUnreachableError
-- Data.Fin.Properties.any?
d_any'63'_1468 ::
  Integer ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  (MAlonzo.Code.Data.Fin.Base.T_Fin_6 -> ()) ->
  (MAlonzo.Code.Data.Fin.Base.T_Fin_6 ->
   MAlonzo.Code.Relation.Nullary.T_Dec_32) ->
  MAlonzo.Code.Relation.Nullary.T_Dec_32
d_any'63'_1468 v0 ~v1 ~v2 v3 = du_any'63'_1468 v0 v3
du_any'63'_1468 ::
  Integer ->
  (MAlonzo.Code.Data.Fin.Base.T_Fin_6 ->
   MAlonzo.Code.Relation.Nullary.T_Dec_32) ->
  MAlonzo.Code.Relation.Nullary.T_Dec_32
du_any'63'_1468 v0 v1
  = case coe v0 of
      0 -> coe
             MAlonzo.Code.Relation.Nullary.C__because__46
             (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
             (coe MAlonzo.Code.Relation.Nullary.C_of'8319'_26)
      _ -> let v2 = subInt (coe v0) (coe (1 :: Integer)) in
           coe
             MAlonzo.Code.Relation.Nullary.Decidable.du_map_14
             (coe du_'8846''8660''8707'_1372)
             (coe
                MAlonzo.Code.Relation.Nullary.Sum.du__'8846''45'dec__32
                (coe v1 (coe MAlonzo.Code.Data.Fin.Base.C_zero_10))
                (coe
                   du_any'63'_1468 (coe v2)
                   (coe
                      (\ v3 -> coe v1 (coe MAlonzo.Code.Data.Fin.Base.C_suc_16 v3)))))
-- Data.Fin.Properties.all?
d_all'63'_1488 ::
  Integer ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  (MAlonzo.Code.Data.Fin.Base.T_Fin_6 -> ()) ->
  (MAlonzo.Code.Data.Fin.Base.T_Fin_6 ->
   MAlonzo.Code.Relation.Nullary.T_Dec_32) ->
  MAlonzo.Code.Relation.Nullary.T_Dec_32
d_all'63'_1488 v0 ~v1 ~v2 v3 = du_all'63'_1488 v0 v3
du_all'63'_1488 ::
  Integer ->
  (MAlonzo.Code.Data.Fin.Base.T_Fin_6 ->
   MAlonzo.Code.Relation.Nullary.T_Dec_32) ->
  MAlonzo.Code.Relation.Nullary.T_Dec_32
du_all'63'_1488 v0 v1
  = coe
      MAlonzo.Code.Relation.Nullary.Decidable.Core.du_map'8242'_168
      (coe
         (\ v2 v3 -> coe v2 v3 (coe MAlonzo.Code.Agda.Builtin.Unit.C_tt_8)))
      (coe
         du_decFinSubset_1386 (coe v0)
         (\ v2 -> coe MAlonzo.Code.Relation.Unary.Properties.du_U'63'_32)
         (coe (\ v2 v3 -> coe v1 v2)))
-- Data.Fin.Properties.¬∀⟶∃¬-smallest
d_'172''8704''10230''8707''172''45'smallest_1530 ::
  Integer ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  (MAlonzo.Code.Data.Fin.Base.T_Fin_6 -> ()) ->
  (MAlonzo.Code.Data.Fin.Base.T_Fin_6 ->
   MAlonzo.Code.Relation.Nullary.T_Dec_32) ->
  ((MAlonzo.Code.Data.Fin.Base.T_Fin_6 -> AgdaAny) ->
   MAlonzo.Code.Data.Empty.T_'8869'_4) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'172''8704''10230''8707''172''45'smallest_1530 v0 ~v1 ~v2 v3 ~v4
  = du_'172''8704''10230''8707''172''45'smallest_1530 v0 v3
du_'172''8704''10230''8707''172''45'smallest_1530 ::
  Integer ->
  (MAlonzo.Code.Data.Fin.Base.T_Fin_6 ->
   MAlonzo.Code.Relation.Nullary.T_Dec_32) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_'172''8704''10230''8707''172''45'smallest_1530 v0 v1
  = case coe v0 of
      0 -> coe
             MAlonzo.Code.Relation.Nullary.Negation.Core.du_contradiction_24
      _ -> let v2 = subInt (coe v0) (coe (1 :: Integer)) in
           let v3 = coe v1 (coe MAlonzo.Code.Data.Fin.Base.C_zero_10) in
           case coe v3 of
             MAlonzo.Code.Relation.Nullary.C__because__46 v4 v5
               -> if coe v4
                    then coe
                           MAlonzo.Code.Data.Product.du_map_148
                           (coe MAlonzo.Code.Data.Fin.Base.C_suc_16)
                           (coe
                              (\ v6 ->
                                 coe
                                   MAlonzo.Code.Data.Product.du_map_148 (coe (\ v7 -> v7))
                                   (coe
                                      (\ v7 ->
                                         coe
                                           du_'8704''45'cons_1340
                                           (coe
                                              MAlonzo.Code.Relation.Nullary.Reflects.du_invert_20
                                              (coe v5))))))
                           (coe
                              du_'172''8704''10230''8707''172''45'smallest_1530 (coe v2)
                              (coe
                                 (\ v6 -> coe v1 (coe MAlonzo.Code.Data.Fin.Base.C_suc_16 v6))))
                    else coe
                           MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                           (coe MAlonzo.Code.Data.Fin.Base.C_zero_10)
                           (coe
                              MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                              (coe MAlonzo.Code.Relation.Nullary.Reflects.du_invert_20 (coe v5))
                              erased)
             _ -> MAlonzo.RTE.mazUnreachableError
-- Data.Fin.Properties.¬∀⟶∃¬
d_'172''8704''10230''8707''172'_1580 ::
  Integer ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  (MAlonzo.Code.Data.Fin.Base.T_Fin_6 -> ()) ->
  (MAlonzo.Code.Data.Fin.Base.T_Fin_6 ->
   MAlonzo.Code.Relation.Nullary.T_Dec_32) ->
  ((MAlonzo.Code.Data.Fin.Base.T_Fin_6 -> AgdaAny) ->
   MAlonzo.Code.Data.Empty.T_'8869'_4) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'172''8704''10230''8707''172'_1580 v0 ~v1 ~v2 v3 ~v4
  = du_'172''8704''10230''8707''172'_1580 v0 v3
du_'172''8704''10230''8707''172'_1580 ::
  Integer ->
  (MAlonzo.Code.Data.Fin.Base.T_Fin_6 ->
   MAlonzo.Code.Relation.Nullary.T_Dec_32) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_'172''8704''10230''8707''172'_1580 v0 v1
  = coe
      MAlonzo.Code.Data.Product.du_map_148 (coe (\ v2 -> v2))
      (coe (\ v2 -> MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28))
      (coe
         du_'172''8704''10230''8707''172''45'smallest_1530 (coe v0)
         (coe v1))
-- Data.Fin.Properties.pigeonhole
d_pigeonhole_1600 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__18 ->
  (MAlonzo.Code.Data.Fin.Base.T_Fin_6 ->
   MAlonzo.Code.Data.Fin.Base.T_Fin_6) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_pigeonhole_1600 ~v0 v1 v2 v3 = du_pigeonhole_1600 v1 v2 v3
du_pigeonhole_1600 ::
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__18 ->
  (MAlonzo.Code.Data.Fin.Base.T_Fin_6 ->
   MAlonzo.Code.Data.Fin.Base.T_Fin_6) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_pigeonhole_1600 v0 v1 v2
  = case coe v1 of
      MAlonzo.Code.Data.Nat.Base.C_s'8804's_30 v5
        -> case coe v5 of
             MAlonzo.Code.Data.Nat.Base.C_z'8804'n_22
               -> coe
                    MAlonzo.Code.Relation.Nullary.Negation.Core.du_contradiction_24
             MAlonzo.Code.Data.Nat.Base.C_s'8804's_30 v8
               -> let v9
                        = coe
                            du_any'63'_1468 (coe subInt (coe v0) (coe (1 :: Integer)))
                            (coe
                               (\ v9 ->
                                  coe
                                    du__'8799'__20
                                    (coe v2 (coe MAlonzo.Code.Data.Fin.Base.C_zero_10))
                                    (coe v2 (coe MAlonzo.Code.Data.Fin.Base.C_suc_16 v9)))) in
                  case coe v9 of
                    MAlonzo.Code.Relation.Nullary.C__because__46 v10 v11
                      -> if coe v10
                           then case coe v11 of
                                  MAlonzo.Code.Relation.Nullary.C_of'696'_22 v12
                                    -> case coe v12 of
                                         MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v13 v14
                                           -> coe
                                                MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                (coe MAlonzo.Code.Data.Fin.Base.C_zero_10)
                                                (coe
                                                   MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                   (coe MAlonzo.Code.Data.Fin.Base.C_suc_16 v13)
                                                   (coe
                                                      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                      erased (coe v14)))
                                         _ -> MAlonzo.RTE.mazUnreachableError
                                  _ -> MAlonzo.RTE.mazUnreachableError
                           else coe
                                  seq (coe v11)
                                  (let v12
                                         = coe
                                             du_pigeonhole_1600
                                             (coe subInt (coe v0) (coe (1 :: Integer)))
                                             (coe MAlonzo.Code.Data.Nat.Base.C_s'8804's_30 v8)
                                             (coe
                                                (\ v12 ->
                                                   coe
                                                     MAlonzo.Code.Data.Fin.Base.du_punchOut_432
                                                     (coe
                                                        v2
                                                        (coe MAlonzo.Code.Data.Fin.Base.C_zero_10))
                                                     (coe
                                                        v2
                                                        (coe
                                                           MAlonzo.Code.Data.Fin.Base.C_suc_16
                                                           v12)))) in
                                   case coe v12 of
                                     MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v13 v14
                                       -> case coe v14 of
                                            MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v15 v16
                                              -> case coe v16 of
                                                   MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v17 v18
                                                     -> coe
                                                          MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                          (coe
                                                             MAlonzo.Code.Data.Fin.Base.C_suc_16
                                                             v13)
                                                          (coe
                                                             MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                             (coe
                                                                MAlonzo.Code.Data.Fin.Base.C_suc_16
                                                                v15)
                                                             (coe
                                                                MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                (coe (\ v19 -> coe v17 erased))
                                                                erased))
                                                   _ -> MAlonzo.RTE.mazUnreachableError
                                            _ -> MAlonzo.RTE.mazUnreachableError
                                     _ -> MAlonzo.RTE.mazUnreachableError)
                    _ -> MAlonzo.RTE.mazUnreachableError
             _ -> MAlonzo.RTE.mazUnreachableError
      _ -> MAlonzo.RTE.mazUnreachableError
-- Data.Fin.Properties._.sequence
d_sequence_1694 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  (() -> ()) ->
  MAlonzo.Code.Category.Applicative.Indexed.T_RawIApplicative_38 ->
  Integer ->
  (MAlonzo.Code.Data.Fin.Base.T_Fin_6 -> ()) ->
  (MAlonzo.Code.Data.Fin.Base.T_Fin_6 -> AgdaAny) -> AgdaAny
d_sequence_1694 ~v0 ~v1 v2 v3 ~v4 v5 = du_sequence_1694 v2 v3 v5
du_sequence_1694 ::
  MAlonzo.Code.Category.Applicative.Indexed.T_RawIApplicative_38 ->
  Integer ->
  (MAlonzo.Code.Data.Fin.Base.T_Fin_6 -> AgdaAny) -> AgdaAny
du_sequence_1694 v0 v1 v2
  = case coe v1 of
      0 -> coe
             MAlonzo.Code.Category.Applicative.Indexed.d_pure_58 v0 erased
             (coe MAlonzo.Code.Agda.Builtin.Unit.C_tt_8) erased
      _ -> let v3 = subInt (coe v1) (coe (1 :: Integer)) in
           coe
             MAlonzo.Code.Category.Applicative.Indexed.d__'8859'__66 v0 erased
             erased (coe MAlonzo.Code.Agda.Builtin.Unit.C_tt_8)
             (coe MAlonzo.Code.Agda.Builtin.Unit.C_tt_8)
             (coe MAlonzo.Code.Agda.Builtin.Unit.C_tt_8)
             (let v4 = coe MAlonzo.Code.Agda.Builtin.Unit.C_tt_8 in
              let v5 = coe MAlonzo.Code.Agda.Builtin.Unit.C_tt_8 in
              coe
                MAlonzo.Code.Category.Functor.d__'60''36''62'__30
                (coe
                   MAlonzo.Code.Category.Applicative.Indexed.du_rawFunctor_72 (coe v0)
                   (coe v4) (coe v5))
                erased erased (coe du_'8704''45'cons_1340)
                (coe v2 (coe MAlonzo.Code.Data.Fin.Base.C_zero_10)))
             (coe
                du_sequence_1694 (coe v0) (coe v3)
                (coe
                   (\ v4 -> coe v2 (coe MAlonzo.Code.Data.Fin.Base.C_suc_16 v4))))
-- Data.Fin.Properties._.sequence⁻¹
d_sequence'8315''185'_1728 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  (() -> ()) ->
  MAlonzo.Code.Category.Functor.T_RawFunctor_24 ->
  () -> (AgdaAny -> ()) -> AgdaAny -> AgdaAny -> AgdaAny
d_sequence'8315''185'_1728 ~v0 ~v1 v2 ~v3 ~v4 v5 v6
  = du_sequence'8315''185'_1728 v2 v5 v6
du_sequence'8315''185'_1728 ::
  MAlonzo.Code.Category.Functor.T_RawFunctor_24 ->
  AgdaAny -> AgdaAny -> AgdaAny
du_sequence'8315''185'_1728 v0 v1 v2
  = coe
      MAlonzo.Code.Category.Functor.d__'60''36''62'__30 v0 erased erased
      (\ v3 -> coe v3 v2) v1
-- Data.Fin.Properties._.eq?
d_eq'63'_1746 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  Integer ->
  MAlonzo.Code.Function.Injection.T_Injection_88 ->
  AgdaAny -> AgdaAny -> MAlonzo.Code.Relation.Nullary.T_Dec_32
d_eq'63'_1746 ~v0 ~v1 ~v2 v3 = du_eq'63'_1746 v3
du_eq'63'_1746 ::
  MAlonzo.Code.Function.Injection.T_Injection_88 ->
  AgdaAny -> AgdaAny -> MAlonzo.Code.Relation.Nullary.T_Dec_32
du_eq'63'_1746 v0
  = coe
      MAlonzo.Code.Relation.Nullary.Decidable.du_via'45'injection_68
      (coe v0) (coe du__'8799'__20)
-- Data.Fin.Properties.cmp
d_cmp_1750 ::
  Integer ->
  MAlonzo.Code.Data.Fin.Base.T_Fin_6 ->
  MAlonzo.Code.Data.Fin.Base.T_Fin_6 ->
  MAlonzo.Code.Relation.Binary.Definitions.T_Tri_136
d_cmp_1750 v0 v1 v2 = coe du_'60''45'cmp_358 v1 v2
-- Data.Fin.Properties.strictTotalOrder
d_strictTotalOrder_1752 ::
  Integer ->
  MAlonzo.Code.Relation.Binary.Bundles.T_StrictTotalOrder_864
d_strictTotalOrder_1752 v0 = coe du_'60''45'strictTotalOrder_434
-- Data.Fin.Properties.to-from
d_to'45'from_1754 ::
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_to'45'from_1754 = erased
-- Data.Fin.Properties.from-to
d_from'45'to_1756 ::
  Integer ->
  MAlonzo.Code.Data.Fin.Base.T_Fin_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_from'45'to_1756 = erased
-- Data.Fin.Properties.bounded
d_bounded_1758 ::
  Integer ->
  MAlonzo.Code.Data.Fin.Base.T_Fin_6 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__18
d_bounded_1758 v0 v1 = coe du_toℕ'60'n_92 v1
-- Data.Fin.Properties.prop-toℕ-≤
d_prop'45'toℕ'45''8804'_1760 ::
  Integer ->
  MAlonzo.Code.Data.Fin.Base.T_Fin_6 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__18
d_prop'45'toℕ'45''8804'_1760 v0 v1
  = coe du_toℕ'8804'pred'91'n'93'_106 v1
-- Data.Fin.Properties.prop-toℕ-≤′
d_prop'45'toℕ'45''8804''8242'_1762 ::
  Integer ->
  MAlonzo.Code.Data.Fin.Base.T_Fin_6 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__18
d_prop'45'toℕ'45''8804''8242'_1762 v0 v1
  = coe du_toℕ'8804'pred'91'n'93''8242'_116 v1
-- Data.Fin.Properties.inject-lemma
d_inject'45'lemma_1764 ::
  Integer ->
  MAlonzo.Code.Data.Fin.Base.T_Fin_6 ->
  MAlonzo.Code.Data.Fin.Base.T_Fin_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_inject'45'lemma_1764 = erased
-- Data.Fin.Properties.inject+-lemma
d_inject'43''45'lemma_1766 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Fin.Base.T_Fin_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_inject'43''45'lemma_1766 = erased
-- Data.Fin.Properties.inject₁-lemma
d_inject'8321''45'lemma_1768 ::
  Integer ->
  MAlonzo.Code.Data.Fin.Base.T_Fin_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_inject'8321''45'lemma_1768 = erased
-- Data.Fin.Properties.inject≤-lemma
d_inject'8804''45'lemma_1770 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Fin.Base.T_Fin_6 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__18 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_inject'8804''45'lemma_1770 = erased
-- Data.Fin.Properties.≤+≢⇒<
d_'8804''43''8802''8658''60'_1772 ::
  Integer ->
  MAlonzo.Code.Data.Fin.Base.T_Fin_6 ->
  MAlonzo.Code.Data.Fin.Base.T_Fin_6 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__18 ->
  (MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
   MAlonzo.Code.Data.Empty.T_'8869'_4) ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__18
d_'8804''43''8802''8658''60'_1772 v0 v1 v2 v3 v4
  = coe du_'8804''8743''8802''8658''60'_454 v1 v2 v3
-- Data.Fin.Properties.≤-irrelevance
d_'8804''45'irrelevance_1774 ::
  Integer ->
  MAlonzo.Code.Data.Fin.Base.T_Fin_6 ->
  MAlonzo.Code.Data.Fin.Base.T_Fin_6 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__18 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__18 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8804''45'irrelevance_1774 = erased
-- Data.Fin.Properties.<-irrelevance
d_'60''45'irrelevance_1776 ::
  Integer ->
  MAlonzo.Code.Data.Fin.Base.T_Fin_6 ->
  MAlonzo.Code.Data.Fin.Base.T_Fin_6 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__18 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__18 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'60''45'irrelevance_1776 = erased
-- Data.Fin.Properties._+′_
d__'43''8242'__1786 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Fin.Base.T_Fin_6 ->
  MAlonzo.Code.Data.Fin.Base.T_Fin_6 ->
  MAlonzo.Code.Data.Fin.Base.T_Fin_6
d__'43''8242'__1786 ~v0 ~v1 v2 v3 = du__'43''8242'__1786 v2 v3
du__'43''8242'__1786 ::
  MAlonzo.Code.Data.Fin.Base.T_Fin_6 ->
  MAlonzo.Code.Data.Fin.Base.T_Fin_6 ->
  MAlonzo.Code.Data.Fin.Base.T_Fin_6
du__'43''8242'__1786 v0 v1
  = coe MAlonzo.Code.Data.Fin.Base.du__'43'__366 (coe v0) (coe v1)
-- Data.Fin.Properties.fromℕ≤-toℕ
d_fromℕ'8804''45'toℕ_1792 ::
  Integer ->
  MAlonzo.Code.Data.Fin.Base.T_Fin_6 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__18 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_fromℕ'8804''45'toℕ_1792 = erased
-- Data.Fin.Properties.toℕ-fromℕ≤
d_toℕ'45'fromℕ'8804'_1794 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__18 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_toℕ'45'fromℕ'8804'_1794 = erased
-- Data.Fin.Properties.fromℕ≤≡fromℕ≤″
d_fromℕ'8804''8801'fromℕ'8804''8243'_1796 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__18 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804''8243'__188 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_fromℕ'8804''8801'fromℕ'8804''8243'_1796 = erased
-- Data.Fin.Properties.toℕ-fromℕ≤″
d_toℕ'45'fromℕ'8804''8243'_1798 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T__'8804''8243'__188 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_toℕ'45'fromℕ'8804''8243'_1798 = erased
-- Data.Fin.Properties.isDecEquivalence
d_isDecEquivalence_1800 ::
  Integer ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsDecEquivalence_44
d_isDecEquivalence_1800 v0 = coe du_'8801''45'isDecEquivalence_32
-- Data.Fin.Properties.preorder
d_preorder_1802 ::
  Integer -> MAlonzo.Code.Relation.Binary.Bundles.T_Preorder_132
d_preorder_1802 v0 = coe du_'8801''45'preorder_34
-- Data.Fin.Properties.setoid
d_setoid_1804 ::
  Integer -> MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44
d_setoid_1804 v0 = coe du_'8801''45'setoid_38
-- Data.Fin.Properties.decSetoid
d_decSetoid_1806 ::
  Integer -> MAlonzo.Code.Relation.Binary.Bundles.T_DecSetoid_84
d_decSetoid_1806 v0 = coe du_'8801''45'decSetoid_42
-- Data.Fin.Properties.inject+-raise-splitAt
d_inject'43''45'raise'45'splitAt_1808 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Fin.Base.T_Fin_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_inject'43''45'raise'45'splitAt_1808 = erased
