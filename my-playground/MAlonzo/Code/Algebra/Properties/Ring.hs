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

module MAlonzo.Code.Algebra.Properties.Ring where

import MAlonzo.RTE (coe, erased, AgdaAny, addInt, subInt, mulInt,
                    quotInt, remInt, geqInt, ltInt, eqInt, add64, sub64, mul64, quot64,
                    rem64, lt64, eq64, word64FromNat, word64ToNat)
import qualified MAlonzo.RTE
import qualified Data.Text
import qualified MAlonzo.Code.Agda.Builtin.Sigma
import qualified MAlonzo.Code.Agda.Primitive
import qualified MAlonzo.Code.Algebra.Bundles
import qualified MAlonzo.Code.Algebra.Properties.AbelianGroup
import qualified MAlonzo.Code.Algebra.Properties.Group
import qualified MAlonzo.Code.Algebra.Structures
import qualified MAlonzo.Code.Function.Base
import qualified MAlonzo.Code.Relation.Binary.Bundles
import qualified MAlonzo.Code.Relation.Binary.Reasoning.Base.Single
import qualified MAlonzo.Code.Relation.Binary.Reasoning.Setoid
import qualified MAlonzo.Code.Relation.Binary.Structures

-- Algebra.Properties.Ring._.∙-cancel
d_'8729''45'cancel_198 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Algebra.Bundles.T_Ring_2514 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'8729''45'cancel_198 ~v0 ~v1 v2 = du_'8729''45'cancel_198 v2
du_'8729''45'cancel_198 ::
  MAlonzo.Code.Algebra.Bundles.T_Ring_2514 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_'8729''45'cancel_198 v0
  = let v1
          = coe
              MAlonzo.Code.Algebra.Bundles.du_'43''45'abelianGroup_2654
              (coe v0) in
    coe
      MAlonzo.Code.Algebra.Properties.Group.du_'8729''45'cancel_226
      (coe MAlonzo.Code.Algebra.Bundles.du_group_1080 (coe v1))
-- Algebra.Properties.Ring._.∙-cancelʳ
d_'8729''45'cancel'691'_200 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Algebra.Bundles.T_Ring_2514 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8729''45'cancel'691'_200 ~v0 ~v1 v2
  = du_'8729''45'cancel'691'_200 v2
du_'8729''45'cancel'691'_200 ::
  MAlonzo.Code.Algebra.Bundles.T_Ring_2514 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_'8729''45'cancel'691'_200 v0
  = let v1
          = coe
              MAlonzo.Code.Algebra.Bundles.du_'43''45'abelianGroup_2654
              (coe v0) in
    coe
      MAlonzo.Code.Algebra.Properties.Group.du_'8729''45'cancel'691'_216
      (coe MAlonzo.Code.Algebra.Bundles.du_group_1080 (coe v1))
-- Algebra.Properties.Ring._.∙-cancelˡ
d_'8729''45'cancel'737'_202 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Algebra.Bundles.T_Ring_2514 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8729''45'cancel'737'_202 ~v0 ~v1 v2
  = du_'8729''45'cancel'737'_202 v2
du_'8729''45'cancel'737'_202 ::
  MAlonzo.Code.Algebra.Bundles.T_Ring_2514 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_'8729''45'cancel'737'_202 v0
  = let v1
          = coe
              MAlonzo.Code.Algebra.Bundles.du_'43''45'abelianGroup_2654
              (coe v0) in
    coe
      MAlonzo.Code.Algebra.Properties.Group.du_'8729''45'cancel'737'_206
      (coe MAlonzo.Code.Algebra.Bundles.du_group_1080 (coe v1))
-- Algebra.Properties.Ring._.identity-unique
d_identity'45'unique_204 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Algebra.Bundles.T_Ring_2514 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> AgdaAny
d_identity'45'unique_204 ~v0 ~v1 v2 = du_identity'45'unique_204 v2
du_identity'45'unique_204 ::
  MAlonzo.Code.Algebra.Bundles.T_Ring_2514 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> AgdaAny
du_identity'45'unique_204 v0
  = let v1
          = coe
              MAlonzo.Code.Algebra.Bundles.du_'43''45'abelianGroup_2654
              (coe v0) in
    coe
      MAlonzo.Code.Algebra.Properties.Group.du_identity'45'unique_282
      (coe MAlonzo.Code.Algebra.Bundles.du_group_1080 (coe v1))
-- Algebra.Properties.Ring._.identityʳ-unique
d_identity'691''45'unique_206 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Algebra.Bundles.T_Ring_2514 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_identity'691''45'unique_206 ~v0 ~v1 v2
  = du_identity'691''45'unique_206 v2
du_identity'691''45'unique_206 ::
  MAlonzo.Code.Algebra.Bundles.T_Ring_2514 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_identity'691''45'unique_206 v0
  = let v1
          = coe
              MAlonzo.Code.Algebra.Bundles.du_'43''45'abelianGroup_2654
              (coe v0) in
    coe
      MAlonzo.Code.Algebra.Properties.Group.du_identity'691''45'unique_272
      (coe MAlonzo.Code.Algebra.Bundles.du_group_1080 (coe v1))
-- Algebra.Properties.Ring._.identityˡ-unique
d_identity'737''45'unique_208 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Algebra.Bundles.T_Ring_2514 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_identity'737''45'unique_208 ~v0 ~v1 v2
  = du_identity'737''45'unique_208 v2
du_identity'737''45'unique_208 ::
  MAlonzo.Code.Algebra.Bundles.T_Ring_2514 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_identity'737''45'unique_208 v0
  = let v1
          = coe
              MAlonzo.Code.Algebra.Bundles.du_'43''45'abelianGroup_2654
              (coe v0) in
    coe
      MAlonzo.Code.Algebra.Properties.Group.du_identity'737''45'unique_260
      (coe MAlonzo.Code.Algebra.Bundles.du_group_1080 (coe v1))
-- Algebra.Properties.Ring._.inverseʳ-unique
d_inverse'691''45'unique_210 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Algebra.Bundles.T_Ring_2514 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_inverse'691''45'unique_210 ~v0 ~v1 v2
  = du_inverse'691''45'unique_210 v2
du_inverse'691''45'unique_210 ::
  MAlonzo.Code.Algebra.Bundles.T_Ring_2514 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_inverse'691''45'unique_210 v0
  = let v1
          = coe
              MAlonzo.Code.Algebra.Bundles.du_'43''45'abelianGroup_2654
              (coe v0) in
    coe
      MAlonzo.Code.Algebra.Properties.Group.du_inverse'691''45'unique_304
      (coe MAlonzo.Code.Algebra.Bundles.du_group_1080 (coe v1))
-- Algebra.Properties.Ring._.inverseˡ-unique
d_inverse'737''45'unique_212 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Algebra.Bundles.T_Ring_2514 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_inverse'737''45'unique_212 ~v0 ~v1 v2
  = du_inverse'737''45'unique_212 v2
du_inverse'737''45'unique_212 ::
  MAlonzo.Code.Algebra.Bundles.T_Ring_2514 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_inverse'737''45'unique_212 v0
  = let v1
          = coe
              MAlonzo.Code.Algebra.Bundles.du_'43''45'abelianGroup_2654
              (coe v0) in
    coe
      MAlonzo.Code.Algebra.Properties.Group.du_inverse'737''45'unique_292
      (coe MAlonzo.Code.Algebra.Bundles.du_group_1080 (coe v1))
-- Algebra.Properties.Ring._.left-identity-unique
d_left'45'identity'45'unique_214 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Algebra.Bundles.T_Ring_2514 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_left'45'identity'45'unique_214 ~v0 ~v1 v2
  = du_left'45'identity'45'unique_214 v2
du_left'45'identity'45'unique_214 ::
  MAlonzo.Code.Algebra.Bundles.T_Ring_2514 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_left'45'identity'45'unique_214 v0
  = let v1
          = coe
              MAlonzo.Code.Algebra.Bundles.du_'43''45'abelianGroup_2654
              (coe v0) in
    coe
      MAlonzo.Code.Algebra.Properties.Group.du_left'45'identity'45'unique_312
      (coe MAlonzo.Code.Algebra.Bundles.du_group_1080 (coe v1))
-- Algebra.Properties.Ring._.left-inverse-unique
d_left'45'inverse'45'unique_216 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Algebra.Bundles.T_Ring_2514 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_left'45'inverse'45'unique_216 ~v0 ~v1 v2
  = du_left'45'inverse'45'unique_216 v2
du_left'45'inverse'45'unique_216 ::
  MAlonzo.Code.Algebra.Bundles.T_Ring_2514 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_left'45'inverse'45'unique_216 v0
  = let v1
          = coe
              MAlonzo.Code.Algebra.Bundles.du_'43''45'abelianGroup_2654
              (coe v0) in
    coe
      MAlonzo.Code.Algebra.Properties.Group.du_left'45'inverse'45'unique_316
      (coe MAlonzo.Code.Algebra.Bundles.du_group_1080 (coe v1))
-- Algebra.Properties.Ring._.right-identity-unique
d_right'45'identity'45'unique_218 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Algebra.Bundles.T_Ring_2514 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_right'45'identity'45'unique_218 ~v0 ~v1 v2
  = du_right'45'identity'45'unique_218 v2
du_right'45'identity'45'unique_218 ::
  MAlonzo.Code.Algebra.Bundles.T_Ring_2514 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_right'45'identity'45'unique_218 v0
  = let v1
          = coe
              MAlonzo.Code.Algebra.Bundles.du_'43''45'abelianGroup_2654
              (coe v0) in
    coe
      MAlonzo.Code.Algebra.Properties.Group.du_right'45'identity'45'unique_314
      (coe MAlonzo.Code.Algebra.Bundles.du_group_1080 (coe v1))
-- Algebra.Properties.Ring._.right-inverse-unique
d_right'45'inverse'45'unique_220 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Algebra.Bundles.T_Ring_2514 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_right'45'inverse'45'unique_220 ~v0 ~v1 v2
  = du_right'45'inverse'45'unique_220 v2
du_right'45'inverse'45'unique_220 ::
  MAlonzo.Code.Algebra.Bundles.T_Ring_2514 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_right'45'inverse'45'unique_220 v0
  = let v1
          = coe
              MAlonzo.Code.Algebra.Bundles.du_'43''45'abelianGroup_2654
              (coe v0) in
    coe
      MAlonzo.Code.Algebra.Properties.Group.du_right'45'inverse'45'unique_318
      (coe MAlonzo.Code.Algebra.Bundles.du_group_1080 (coe v1))
-- Algebra.Properties.Ring._.ε⁻¹≈ε
d_ε'8315''185''8776'ε_222 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Algebra.Bundles.T_Ring_2514 -> AgdaAny
d_ε'8315''185''8776'ε_222 ~v0 ~v1 v2
  = du_ε'8315''185''8776'ε_222 v2
du_ε'8315''185''8776'ε_222 ::
  MAlonzo.Code.Algebra.Bundles.T_Ring_2514 -> AgdaAny
du_ε'8315''185''8776'ε_222 v0
  = let v1
          = coe
              MAlonzo.Code.Algebra.Bundles.du_'43''45'abelianGroup_2654
              (coe v0) in
    coe
      MAlonzo.Code.Algebra.Properties.Group.du_ε'8315''185''8776'ε_184
      (coe MAlonzo.Code.Algebra.Bundles.du_group_1080 (coe v1))
-- Algebra.Properties.Ring._.⁻¹-∙-comm
d_'8315''185''45''8729''45'comm_224 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Algebra.Bundles.T_Ring_2514 ->
  AgdaAny -> AgdaAny -> AgdaAny
d_'8315''185''45''8729''45'comm_224 ~v0 ~v1 v2
  = du_'8315''185''45''8729''45'comm_224 v2
du_'8315''185''45''8729''45'comm_224 ::
  MAlonzo.Code.Algebra.Bundles.T_Ring_2514 ->
  AgdaAny -> AgdaAny -> AgdaAny
du_'8315''185''45''8729''45'comm_224 v0
  = coe
      MAlonzo.Code.Algebra.Properties.AbelianGroup.du_'8315''185''45''8729''45'comm_178
      (coe
         MAlonzo.Code.Algebra.Bundles.du_'43''45'abelianGroup_2654 (coe v0))
-- Algebra.Properties.Ring._.⁻¹-anti-homo-∙
d_'8315''185''45'anti'45'homo'45''8729'_226 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Algebra.Bundles.T_Ring_2514 ->
  AgdaAny -> AgdaAny -> AgdaAny
d_'8315''185''45'anti'45'homo'45''8729'_226 ~v0 ~v1 v2
  = du_'8315''185''45'anti'45'homo'45''8729'_226 v2
du_'8315''185''45'anti'45'homo'45''8729'_226 ::
  MAlonzo.Code.Algebra.Bundles.T_Ring_2514 ->
  AgdaAny -> AgdaAny -> AgdaAny
du_'8315''185''45'anti'45'homo'45''8729'_226 v0
  = let v1
          = coe
              MAlonzo.Code.Algebra.Bundles.du_'43''45'abelianGroup_2654
              (coe v0) in
    coe
      MAlonzo.Code.Algebra.Properties.Group.du_'8315''185''45'anti'45'homo'45''8729'_250
      (coe MAlonzo.Code.Algebra.Bundles.du_group_1080 (coe v1))
-- Algebra.Properties.Ring._.⁻¹-injective
d_'8315''185''45'injective_228 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Algebra.Bundles.T_Ring_2514 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8315''185''45'injective_228 ~v0 ~v1 v2
  = du_'8315''185''45'injective_228 v2
du_'8315''185''45'injective_228 ::
  MAlonzo.Code.Algebra.Bundles.T_Ring_2514 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_'8315''185''45'injective_228 v0
  = let v1
          = coe
              MAlonzo.Code.Algebra.Bundles.du_'43''45'abelianGroup_2654
              (coe v0) in
    coe
      MAlonzo.Code.Algebra.Properties.Group.du_'8315''185''45'injective_238
      (coe MAlonzo.Code.Algebra.Bundles.du_group_1080 (coe v1))
-- Algebra.Properties.Ring._.⁻¹-involutive
d_'8315''185''45'involutive_230 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Algebra.Bundles.T_Ring_2514 -> AgdaAny -> AgdaAny
d_'8315''185''45'involutive_230 ~v0 ~v1 v2
  = du_'8315''185''45'involutive_230 v2
du_'8315''185''45'involutive_230 ::
  MAlonzo.Code.Algebra.Bundles.T_Ring_2514 -> AgdaAny -> AgdaAny
du_'8315''185''45'involutive_230 v0
  = let v1
          = coe
              MAlonzo.Code.Algebra.Bundles.du_'43''45'abelianGroup_2654
              (coe v0) in
    coe
      MAlonzo.Code.Algebra.Properties.Group.du_'8315''185''45'involutive_230
      (coe MAlonzo.Code.Algebra.Bundles.du_group_1080 (coe v1))
-- Algebra.Properties.Ring._.xyx⁻¹≈y
d_xyx'8315''185''8776'y_232 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Algebra.Bundles.T_Ring_2514 ->
  AgdaAny -> AgdaAny -> AgdaAny
d_xyx'8315''185''8776'y_232 ~v0 ~v1 v2
  = du_xyx'8315''185''8776'y_232 v2
du_xyx'8315''185''8776'y_232 ::
  MAlonzo.Code.Algebra.Bundles.T_Ring_2514 ->
  AgdaAny -> AgdaAny -> AgdaAny
du_xyx'8315''185''8776'y_232 v0
  = coe
      MAlonzo.Code.Algebra.Properties.AbelianGroup.du_xyx'8315''185''8776'y_168
      (coe
         MAlonzo.Code.Algebra.Bundles.du_'43''45'abelianGroup_2654 (coe v0))
-- Algebra.Properties.Ring.-‿distribˡ-*
d_'45''8255'distrib'737''45''42'_238 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Algebra.Bundles.T_Ring_2514 ->
  AgdaAny -> AgdaAny -> AgdaAny
d_'45''8255'distrib'737''45''42'_238 ~v0 ~v1 v2 v3 v4
  = du_'45''8255'distrib'737''45''42'_238 v2 v3 v4
du_'45''8255'distrib'737''45''42'_238 ::
  MAlonzo.Code.Algebra.Bundles.T_Ring_2514 ->
  AgdaAny -> AgdaAny -> AgdaAny
du_'45''8255'distrib'737''45''42'_238 v0 v1 v2
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d_sym_36
      (MAlonzo.Code.Algebra.Structures.d_isEquivalence_94
         (coe
            MAlonzo.Code.Algebra.Structures.d_isMagma_202
            (coe
               MAlonzo.Code.Algebra.Structures.d_isSemigroup_368
               (coe
                  MAlonzo.Code.Algebra.Structures.d_isMonoid_594
                  (coe
                     MAlonzo.Code.Algebra.Structures.d_isGroup_674
                     (coe
                        MAlonzo.Code.Algebra.Structures.d_'43''45'isAbelianGroup_1604
                        (coe MAlonzo.Code.Algebra.Bundles.d_isRing_2550 (coe v0))))))))
      (coe
         MAlonzo.Code.Algebra.Bundles.d__'42'__2542 v0
         (coe MAlonzo.Code.Algebra.Bundles.d_'45'__2544 v0 v1) v2)
      (coe
         MAlonzo.Code.Algebra.Bundles.d_'45'__2544 v0
         (coe MAlonzo.Code.Algebra.Bundles.d__'42'__2542 v0 v1 v2))
      (MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.d_begin__40
         (coe
            MAlonzo.Code.Relation.Binary.Reasoning.Setoid.du_step'45''8776'_58
            (let v3 = MAlonzo.Code.Algebra.Bundles.d_isRing_2550 (coe v0) in
             let v4
                   = MAlonzo.Code.Algebra.Structures.d_'43''45'isAbelianGroup_1604
                       (coe v3) in
             let v5 = MAlonzo.Code.Algebra.Structures.d_isGroup_674 (coe v4) in
             let v6 = MAlonzo.Code.Algebra.Structures.d_isMonoid_594 (coe v5) in
             let v7
                   = MAlonzo.Code.Algebra.Structures.d_isSemigroup_368 (coe v6) in
             coe
               MAlonzo.Code.Algebra.Structures.du_setoid_110
               (coe MAlonzo.Code.Algebra.Structures.d_isMagma_202 (coe v7)))
            (coe
               MAlonzo.Code.Algebra.Bundles.d__'42'__2542 v0
               (coe MAlonzo.Code.Algebra.Bundles.d_'45'__2544 v0 v1) v2)
            (coe
               MAlonzo.Code.Algebra.Bundles.d__'43'__2540 v0
               (coe
                  MAlonzo.Code.Algebra.Bundles.d__'42'__2542 v0
                  (coe MAlonzo.Code.Algebra.Bundles.d_'45'__2544 v0 v1) v2)
               (MAlonzo.Code.Algebra.Bundles.d_0'35'_2546 (coe v0)))
            (coe
               MAlonzo.Code.Algebra.Bundles.d_'45'__2544 v0
               (coe MAlonzo.Code.Algebra.Bundles.d__'42'__2542 v0 v1 v2))
            (coe
               MAlonzo.Code.Relation.Binary.Reasoning.Setoid.du_step'45''8776'_58
               (let v3 = MAlonzo.Code.Algebra.Bundles.d_isRing_2550 (coe v0) in
                let v4
                      = MAlonzo.Code.Algebra.Structures.d_'43''45'isAbelianGroup_1604
                          (coe v3) in
                let v5 = MAlonzo.Code.Algebra.Structures.d_isGroup_674 (coe v4) in
                let v6 = MAlonzo.Code.Algebra.Structures.d_isMonoid_594 (coe v5) in
                let v7
                      = MAlonzo.Code.Algebra.Structures.d_isSemigroup_368 (coe v6) in
                coe
                  MAlonzo.Code.Algebra.Structures.du_setoid_110
                  (coe MAlonzo.Code.Algebra.Structures.d_isMagma_202 (coe v7)))
               (coe
                  MAlonzo.Code.Algebra.Bundles.d__'43'__2540 v0
                  (coe
                     MAlonzo.Code.Algebra.Bundles.d__'42'__2542 v0
                     (coe MAlonzo.Code.Algebra.Bundles.d_'45'__2544 v0 v1) v2)
                  (MAlonzo.Code.Algebra.Bundles.d_0'35'_2546 (coe v0)))
               (coe
                  MAlonzo.Code.Algebra.Bundles.d__'43'__2540 v0
                  (coe
                     MAlonzo.Code.Algebra.Bundles.d__'42'__2542 v0
                     (coe MAlonzo.Code.Algebra.Bundles.d_'45'__2544 v0 v1) v2)
                  (coe
                     MAlonzo.Code.Algebra.Bundles.d__'43'__2540 v0
                     (coe MAlonzo.Code.Algebra.Bundles.d__'42'__2542 v0 v1 v2)
                     (coe
                        MAlonzo.Code.Algebra.Bundles.d_'45'__2544 v0
                        (coe MAlonzo.Code.Algebra.Bundles.d__'42'__2542 v0 v1 v2))))
               (coe
                  MAlonzo.Code.Algebra.Bundles.d_'45'__2544 v0
                  (coe MAlonzo.Code.Algebra.Bundles.d__'42'__2542 v0 v1 v2))
               (coe
                  MAlonzo.Code.Relation.Binary.Reasoning.Setoid.du_step'45''8776'_58
                  (let v3 = MAlonzo.Code.Algebra.Bundles.d_isRing_2550 (coe v0) in
                   let v4
                         = MAlonzo.Code.Algebra.Structures.d_'43''45'isAbelianGroup_1604
                             (coe v3) in
                   let v5 = MAlonzo.Code.Algebra.Structures.d_isGroup_674 (coe v4) in
                   let v6 = MAlonzo.Code.Algebra.Structures.d_isMonoid_594 (coe v5) in
                   let v7
                         = MAlonzo.Code.Algebra.Structures.d_isSemigroup_368 (coe v6) in
                   coe
                     MAlonzo.Code.Algebra.Structures.du_setoid_110
                     (coe MAlonzo.Code.Algebra.Structures.d_isMagma_202 (coe v7)))
                  (coe
                     MAlonzo.Code.Algebra.Bundles.d__'43'__2540 v0
                     (coe
                        MAlonzo.Code.Algebra.Bundles.d__'42'__2542 v0
                        (coe MAlonzo.Code.Algebra.Bundles.d_'45'__2544 v0 v1) v2)
                     (coe
                        MAlonzo.Code.Algebra.Bundles.d__'43'__2540 v0
                        (coe MAlonzo.Code.Algebra.Bundles.d__'42'__2542 v0 v1 v2)
                        (coe
                           MAlonzo.Code.Algebra.Bundles.d_'45'__2544 v0
                           (coe MAlonzo.Code.Algebra.Bundles.d__'42'__2542 v0 v1 v2))))
                  (coe
                     MAlonzo.Code.Algebra.Bundles.d__'43'__2540 v0
                     (coe
                        MAlonzo.Code.Algebra.Bundles.d__'43'__2540 v0
                        (coe
                           MAlonzo.Code.Algebra.Bundles.d__'42'__2542 v0
                           (coe MAlonzo.Code.Algebra.Bundles.d_'45'__2544 v0 v1) v2)
                        (coe MAlonzo.Code.Algebra.Bundles.d__'42'__2542 v0 v1 v2))
                     (coe
                        MAlonzo.Code.Algebra.Bundles.d_'45'__2544 v0
                        (coe MAlonzo.Code.Algebra.Bundles.d__'42'__2542 v0 v1 v2)))
                  (coe
                     MAlonzo.Code.Algebra.Bundles.d_'45'__2544 v0
                     (coe MAlonzo.Code.Algebra.Bundles.d__'42'__2542 v0 v1 v2))
                  (coe
                     MAlonzo.Code.Relation.Binary.Reasoning.Setoid.du_step'45''8776'_58
                     (let v3 = MAlonzo.Code.Algebra.Bundles.d_isRing_2550 (coe v0) in
                      let v4
                            = MAlonzo.Code.Algebra.Structures.d_'43''45'isAbelianGroup_1604
                                (coe v3) in
                      let v5 = MAlonzo.Code.Algebra.Structures.d_isGroup_674 (coe v4) in
                      let v6 = MAlonzo.Code.Algebra.Structures.d_isMonoid_594 (coe v5) in
                      let v7
                            = MAlonzo.Code.Algebra.Structures.d_isSemigroup_368 (coe v6) in
                      coe
                        MAlonzo.Code.Algebra.Structures.du_setoid_110
                        (coe MAlonzo.Code.Algebra.Structures.d_isMagma_202 (coe v7)))
                     (coe
                        MAlonzo.Code.Algebra.Bundles.d__'43'__2540 v0
                        (coe
                           MAlonzo.Code.Algebra.Bundles.d__'43'__2540 v0
                           (coe
                              MAlonzo.Code.Algebra.Bundles.d__'42'__2542 v0
                              (coe MAlonzo.Code.Algebra.Bundles.d_'45'__2544 v0 v1) v2)
                           (coe MAlonzo.Code.Algebra.Bundles.d__'42'__2542 v0 v1 v2))
                        (coe
                           MAlonzo.Code.Algebra.Bundles.d_'45'__2544 v0
                           (coe MAlonzo.Code.Algebra.Bundles.d__'42'__2542 v0 v1 v2)))
                     (coe
                        MAlonzo.Code.Algebra.Bundles.d__'43'__2540 v0
                        (coe
                           MAlonzo.Code.Algebra.Bundles.d__'42'__2542 v0
                           (coe
                              MAlonzo.Code.Algebra.Bundles.d__'43'__2540 v0
                              (coe MAlonzo.Code.Algebra.Bundles.d_'45'__2544 v0 v1) v1)
                           v2)
                        (coe
                           MAlonzo.Code.Algebra.Bundles.d_'45'__2544 v0
                           (coe MAlonzo.Code.Algebra.Bundles.d__'42'__2542 v0 v1 v2)))
                     (coe
                        MAlonzo.Code.Algebra.Bundles.d_'45'__2544 v0
                        (coe MAlonzo.Code.Algebra.Bundles.d__'42'__2542 v0 v1 v2))
                     (coe
                        MAlonzo.Code.Relation.Binary.Reasoning.Setoid.du_step'45''8776'_58
                        (let v3 = MAlonzo.Code.Algebra.Bundles.d_isRing_2550 (coe v0) in
                         let v4
                               = MAlonzo.Code.Algebra.Structures.d_'43''45'isAbelianGroup_1604
                                   (coe v3) in
                         let v5 = MAlonzo.Code.Algebra.Structures.d_isGroup_674 (coe v4) in
                         let v6 = MAlonzo.Code.Algebra.Structures.d_isMonoid_594 (coe v5) in
                         let v7
                               = MAlonzo.Code.Algebra.Structures.d_isSemigroup_368 (coe v6) in
                         coe
                           MAlonzo.Code.Algebra.Structures.du_setoid_110
                           (coe MAlonzo.Code.Algebra.Structures.d_isMagma_202 (coe v7)))
                        (coe
                           MAlonzo.Code.Algebra.Bundles.d__'43'__2540 v0
                           (coe
                              MAlonzo.Code.Algebra.Bundles.d__'42'__2542 v0
                              (coe
                                 MAlonzo.Code.Algebra.Bundles.d__'43'__2540 v0
                                 (coe MAlonzo.Code.Algebra.Bundles.d_'45'__2544 v0 v1) v1)
                              v2)
                           (coe
                              MAlonzo.Code.Algebra.Bundles.d_'45'__2544 v0
                              (coe MAlonzo.Code.Algebra.Bundles.d__'42'__2542 v0 v1 v2)))
                        (coe
                           MAlonzo.Code.Algebra.Bundles.d__'43'__2540 v0
                           (coe
                              MAlonzo.Code.Algebra.Bundles.d__'42'__2542 v0
                              (MAlonzo.Code.Algebra.Bundles.d_0'35'_2546 (coe v0)) v2)
                           (coe
                              MAlonzo.Code.Algebra.Bundles.d_'45'__2544 v0
                              (coe MAlonzo.Code.Algebra.Bundles.d__'42'__2542 v0 v1 v2)))
                        (coe
                           MAlonzo.Code.Algebra.Bundles.d_'45'__2544 v0
                           (coe MAlonzo.Code.Algebra.Bundles.d__'42'__2542 v0 v1 v2))
                        (coe
                           MAlonzo.Code.Relation.Binary.Reasoning.Setoid.du_step'45''8776'_58
                           (let v3 = MAlonzo.Code.Algebra.Bundles.d_isRing_2550 (coe v0) in
                            let v4
                                  = MAlonzo.Code.Algebra.Structures.d_'43''45'isAbelianGroup_1604
                                      (coe v3) in
                            let v5 = MAlonzo.Code.Algebra.Structures.d_isGroup_674 (coe v4) in
                            let v6 = MAlonzo.Code.Algebra.Structures.d_isMonoid_594 (coe v5) in
                            let v7
                                  = MAlonzo.Code.Algebra.Structures.d_isSemigroup_368 (coe v6) in
                            coe
                              MAlonzo.Code.Algebra.Structures.du_setoid_110
                              (coe MAlonzo.Code.Algebra.Structures.d_isMagma_202 (coe v7)))
                           (coe
                              MAlonzo.Code.Algebra.Bundles.d__'43'__2540 v0
                              (coe
                                 MAlonzo.Code.Algebra.Bundles.d__'42'__2542 v0
                                 (MAlonzo.Code.Algebra.Bundles.d_0'35'_2546 (coe v0)) v2)
                              (coe
                                 MAlonzo.Code.Algebra.Bundles.d_'45'__2544 v0
                                 (coe MAlonzo.Code.Algebra.Bundles.d__'42'__2542 v0 v1 v2)))
                           (coe
                              MAlonzo.Code.Algebra.Bundles.d__'43'__2540 v0
                              (MAlonzo.Code.Algebra.Bundles.d_0'35'_2546 (coe v0))
                              (coe
                                 MAlonzo.Code.Algebra.Bundles.d_'45'__2544 v0
                                 (coe MAlonzo.Code.Algebra.Bundles.d__'42'__2542 v0 v1 v2)))
                           (coe
                              MAlonzo.Code.Algebra.Bundles.d_'45'__2544 v0
                              (coe MAlonzo.Code.Algebra.Bundles.d__'42'__2542 v0 v1 v2))
                           (coe
                              MAlonzo.Code.Relation.Binary.Reasoning.Setoid.du_step'45''8776'_58
                              (let v3 = MAlonzo.Code.Algebra.Bundles.d_isRing_2550 (coe v0) in
                               let v4
                                     = MAlonzo.Code.Algebra.Structures.d_'43''45'isAbelianGroup_1604
                                         (coe v3) in
                               let v5 = MAlonzo.Code.Algebra.Structures.d_isGroup_674 (coe v4) in
                               let v6 = MAlonzo.Code.Algebra.Structures.d_isMonoid_594 (coe v5) in
                               let v7
                                     = MAlonzo.Code.Algebra.Structures.d_isSemigroup_368 (coe v6) in
                               coe
                                 MAlonzo.Code.Algebra.Structures.du_setoid_110
                                 (coe MAlonzo.Code.Algebra.Structures.d_isMagma_202 (coe v7)))
                              (coe
                                 MAlonzo.Code.Algebra.Bundles.d__'43'__2540 v0
                                 (MAlonzo.Code.Algebra.Bundles.d_0'35'_2546 (coe v0))
                                 (coe
                                    MAlonzo.Code.Algebra.Bundles.d_'45'__2544 v0
                                    (coe MAlonzo.Code.Algebra.Bundles.d__'42'__2542 v0 v1 v2)))
                              (coe
                                 MAlonzo.Code.Algebra.Bundles.d_'45'__2544 v0
                                 (coe MAlonzo.Code.Algebra.Bundles.d__'42'__2542 v0 v1 v2))
                              (coe
                                 MAlonzo.Code.Algebra.Bundles.d_'45'__2544 v0
                                 (coe MAlonzo.Code.Algebra.Bundles.d__'42'__2542 v0 v1 v2))
                              (coe
                                 MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du__'8718'_86
                                 (coe
                                    MAlonzo.Code.Relation.Binary.Structures.d_refl_34
                                    (coe
                                       MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_60
                                       (let v3
                                              = MAlonzo.Code.Algebra.Bundles.d_isRing_2550
                                                  (coe v0) in
                                        let v4
                                              = MAlonzo.Code.Algebra.Structures.d_'43''45'isAbelianGroup_1604
                                                  (coe v3) in
                                        let v5
                                              = MAlonzo.Code.Algebra.Structures.d_isGroup_674
                                                  (coe v4) in
                                        let v6
                                              = MAlonzo.Code.Algebra.Structures.d_isMonoid_594
                                                  (coe v5) in
                                        let v7
                                              = MAlonzo.Code.Algebra.Structures.d_isSemigroup_368
                                                  (coe v6) in
                                        coe
                                          MAlonzo.Code.Algebra.Structures.du_setoid_110
                                          (coe
                                             MAlonzo.Code.Algebra.Structures.d_isMagma_202
                                             (coe v7)))))
                                 (coe
                                    MAlonzo.Code.Algebra.Bundles.d_'45'__2544 v0
                                    (coe MAlonzo.Code.Algebra.Bundles.d__'42'__2542 v0 v1 v2)))
                              (let v3 = MAlonzo.Code.Algebra.Bundles.d_isRing_2550 (coe v0) in
                               let v4
                                     = MAlonzo.Code.Algebra.Structures.d_'43''45'isAbelianGroup_1604
                                         (coe v3) in
                               let v5 = MAlonzo.Code.Algebra.Structures.d_isGroup_674 (coe v4) in
                               coe
                                 MAlonzo.Code.Algebra.Structures.du_identity'737'_398
                                 (MAlonzo.Code.Algebra.Structures.d_isMonoid_594 (coe v5))
                                 (coe
                                    MAlonzo.Code.Algebra.Bundles.d_'45'__2544 v0
                                    (coe MAlonzo.Code.Algebra.Bundles.d__'42'__2542 v0 v1 v2))))
                           (let v3
                                  = MAlonzo.Code.Algebra.Structures.d_'43''45'isAbelianGroup_1604
                                      (coe MAlonzo.Code.Algebra.Bundles.d_isRing_2550 (coe v0)) in
                            let v4 = MAlonzo.Code.Algebra.Structures.d_isGroup_674 (coe v3) in
                            let v5 = MAlonzo.Code.Algebra.Structures.d_isMonoid_594 (coe v4) in
                            let v6
                                  = MAlonzo.Code.Algebra.Structures.d_isSemigroup_368 (coe v5) in
                            coe
                              MAlonzo.Code.Algebra.Structures.du_'8729''45'cong'691'_116
                              (coe MAlonzo.Code.Algebra.Structures.d_isMagma_202 (coe v6))
                              (coe
                                 MAlonzo.Code.Algebra.Bundles.d_'45'__2544 v0
                                 (coe MAlonzo.Code.Algebra.Bundles.d__'42'__2542 v0 v1 v2))
                              (coe
                                 MAlonzo.Code.Algebra.Bundles.d__'42'__2542 v0
                                 (MAlonzo.Code.Algebra.Bundles.d_0'35'_2546 (coe v0)) v2)
                              (coe MAlonzo.Code.Algebra.Bundles.d_0'35'_2546 (coe v0))
                              (coe
                                 MAlonzo.Code.Algebra.Structures.du_zero'737'_1692
                                 (MAlonzo.Code.Algebra.Bundles.d_isRing_2550 (coe v0)) v2)))
                        (let v3
                               = MAlonzo.Code.Algebra.Structures.d_'43''45'isAbelianGroup_1604
                                   (coe MAlonzo.Code.Algebra.Bundles.d_isRing_2550 (coe v0)) in
                         let v4 = MAlonzo.Code.Algebra.Structures.d_isGroup_674 (coe v3) in
                         let v5 = MAlonzo.Code.Algebra.Structures.d_isMonoid_594 (coe v4) in
                         let v6
                               = MAlonzo.Code.Algebra.Structures.d_isSemigroup_368 (coe v5) in
                         coe
                           MAlonzo.Code.Algebra.Structures.du_'8729''45'cong'691'_116
                           (coe MAlonzo.Code.Algebra.Structures.d_isMagma_202 (coe v6))
                           (coe
                              MAlonzo.Code.Algebra.Bundles.d_'45'__2544 v0
                              (coe MAlonzo.Code.Algebra.Bundles.d__'42'__2542 v0 v1 v2))
                           (coe
                              MAlonzo.Code.Function.Base.du__'45''10216'_'8739'_302
                              (\ v7 -> coe MAlonzo.Code.Algebra.Bundles.d__'42'__2542 v0 v7 v2)
                              (\ v7 v8 -> v7)
                              (coe
                                 MAlonzo.Code.Algebra.Bundles.d__'43'__2540 v0
                                 (coe MAlonzo.Code.Algebra.Bundles.d_'45'__2544 v0 v1) v1)
                              (MAlonzo.Code.Algebra.Bundles.d_0'35'_2546 (coe v0)))
                           (coe
                              MAlonzo.Code.Function.Base.du_'8739'_'10217''45'__308
                              (\ v7 v8 -> v8)
                              (\ v7 -> coe MAlonzo.Code.Algebra.Bundles.d__'42'__2542 v0 v7 v2)
                              (coe
                                 MAlonzo.Code.Algebra.Bundles.d__'43'__2540 v0
                                 (coe MAlonzo.Code.Algebra.Bundles.d_'45'__2544 v0 v1) v1)
                              (MAlonzo.Code.Algebra.Bundles.d_0'35'_2546 (coe v0)))
                           (let v7
                                  = MAlonzo.Code.Algebra.Structures.d_'42''45'isMonoid_1606
                                      (coe MAlonzo.Code.Algebra.Bundles.d_isRing_2550 (coe v0)) in
                            let v8
                                  = MAlonzo.Code.Algebra.Structures.d_isSemigroup_368 (coe v7) in
                            coe
                              MAlonzo.Code.Algebra.Structures.du_'8729''45'cong'691'_116
                              (coe MAlonzo.Code.Algebra.Structures.d_isMagma_202 (coe v8))
                              (coe v2)
                              (coe
                                 MAlonzo.Code.Algebra.Bundles.d__'43'__2540 v0
                                 (coe MAlonzo.Code.Algebra.Bundles.d_'45'__2544 v0 v1) v1)
                              (coe MAlonzo.Code.Algebra.Bundles.d_0'35'_2546 (coe v0))
                              (let v9 = MAlonzo.Code.Algebra.Bundles.d_isRing_2550 (coe v0) in
                               let v10
                                     = MAlonzo.Code.Algebra.Structures.d_'43''45'isAbelianGroup_1604
                                         (coe v9) in
                               coe
                                 MAlonzo.Code.Algebra.Structures.du_inverse'737'_640
                                 (MAlonzo.Code.Algebra.Structures.d_isGroup_674 (coe v10)) v1))))
                     (let v3
                            = MAlonzo.Code.Algebra.Structures.d_'43''45'isAbelianGroup_1604
                                (coe MAlonzo.Code.Algebra.Bundles.d_isRing_2550 (coe v0)) in
                      let v4 = MAlonzo.Code.Algebra.Structures.d_isGroup_674 (coe v3) in
                      let v5 = MAlonzo.Code.Algebra.Structures.d_isMonoid_594 (coe v4) in
                      let v6
                            = MAlonzo.Code.Algebra.Structures.d_isSemigroup_368 (coe v5) in
                      coe
                        MAlonzo.Code.Algebra.Structures.du_'8729''45'cong'691'_116
                        (coe MAlonzo.Code.Algebra.Structures.d_isMagma_202 (coe v6))
                        (coe
                           MAlonzo.Code.Algebra.Bundles.d_'45'__2544 v0
                           (coe MAlonzo.Code.Algebra.Bundles.d__'42'__2542 v0 v1 v2))
                        (coe
                           MAlonzo.Code.Algebra.Bundles.d__'43'__2540 v0
                           (coe
                              MAlonzo.Code.Algebra.Bundles.d__'42'__2542 v0
                              (coe MAlonzo.Code.Algebra.Bundles.d_'45'__2544 v0 v1) v2)
                           (coe MAlonzo.Code.Algebra.Bundles.d__'42'__2542 v0 v1 v2))
                        (coe
                           MAlonzo.Code.Algebra.Bundles.d__'42'__2542 v0
                           (coe
                              MAlonzo.Code.Algebra.Bundles.d__'43'__2540 v0
                              (coe MAlonzo.Code.Algebra.Bundles.d_'45'__2544 v0 v1) v1)
                           v2)
                        (coe
                           MAlonzo.Code.Relation.Binary.Structures.d_sym_36
                           (MAlonzo.Code.Algebra.Structures.d_isEquivalence_94
                              (coe
                                 MAlonzo.Code.Algebra.Structures.d_isMagma_202
                                 (coe
                                    MAlonzo.Code.Algebra.Structures.d_isSemigroup_368
                                    (coe
                                       MAlonzo.Code.Algebra.Structures.d_isMonoid_594
                                       (coe
                                          MAlonzo.Code.Algebra.Structures.d_isGroup_674
                                          (coe
                                             MAlonzo.Code.Algebra.Structures.d_'43''45'isAbelianGroup_1604
                                             (coe
                                                MAlonzo.Code.Algebra.Bundles.d_isRing_2550
                                                (coe v0))))))))
                           (coe
                              MAlonzo.Code.Algebra.Bundles.d__'42'__2542 v0
                              (coe
                                 MAlonzo.Code.Algebra.Bundles.d__'43'__2540 v0
                                 (coe MAlonzo.Code.Algebra.Bundles.d_'45'__2544 v0 v1) v1)
                              v2)
                           (coe
                              MAlonzo.Code.Algebra.Bundles.d__'43'__2540 v0
                              (coe
                                 MAlonzo.Code.Algebra.Bundles.d__'42'__2542 v0
                                 (coe MAlonzo.Code.Algebra.Bundles.d_'45'__2544 v0 v1) v2)
                              (coe MAlonzo.Code.Algebra.Bundles.d__'42'__2542 v0 v1 v2))
                           (let v7 = MAlonzo.Code.Algebra.Bundles.d_isRing_2550 (coe v0) in
                            let v8
                                  = coe
                                      MAlonzo.Code.Algebra.Structures.du_isSemiring_1698 (coe v7) in
                            coe
                              MAlonzo.Code.Algebra.Structures.du_distrib'691'_1166
                              (MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1252
                                 (coe v8))
                              v2 (coe MAlonzo.Code.Algebra.Bundles.d_'45'__2544 v0 v1) v1))))
                  (coe
                     MAlonzo.Code.Relation.Binary.Structures.d_sym_36
                     (MAlonzo.Code.Algebra.Structures.d_isEquivalence_94
                        (coe
                           MAlonzo.Code.Algebra.Structures.d_isMagma_202
                           (coe
                              MAlonzo.Code.Algebra.Structures.d_isSemigroup_368
                              (coe
                                 MAlonzo.Code.Algebra.Structures.d_isMonoid_594
                                 (coe
                                    MAlonzo.Code.Algebra.Structures.d_isGroup_674
                                    (coe
                                       MAlonzo.Code.Algebra.Structures.d_'43''45'isAbelianGroup_1604
                                       (coe
                                          MAlonzo.Code.Algebra.Bundles.d_isRing_2550 (coe v0))))))))
                     (coe
                        MAlonzo.Code.Algebra.Bundles.d__'43'__2540 v0
                        (coe
                           MAlonzo.Code.Algebra.Bundles.d__'43'__2540 v0
                           (coe
                              MAlonzo.Code.Algebra.Bundles.d__'42'__2542 v0
                              (coe MAlonzo.Code.Algebra.Bundles.d_'45'__2544 v0 v1) v2)
                           (coe MAlonzo.Code.Algebra.Bundles.d__'42'__2542 v0 v1 v2))
                        (coe
                           MAlonzo.Code.Algebra.Bundles.d_'45'__2544 v0
                           (coe MAlonzo.Code.Algebra.Bundles.d__'42'__2542 v0 v1 v2)))
                     (coe
                        MAlonzo.Code.Algebra.Bundles.d__'43'__2540 v0
                        (coe
                           MAlonzo.Code.Algebra.Bundles.d__'42'__2542 v0
                           (coe MAlonzo.Code.Algebra.Bundles.d_'45'__2544 v0 v1) v2)
                        (coe
                           MAlonzo.Code.Algebra.Bundles.d__'43'__2540 v0
                           (coe MAlonzo.Code.Algebra.Bundles.d__'42'__2542 v0 v1 v2)
                           (coe
                              MAlonzo.Code.Algebra.Bundles.d_'45'__2544 v0
                              (coe MAlonzo.Code.Algebra.Bundles.d__'42'__2542 v0 v1 v2))))
                     (coe
                        MAlonzo.Code.Algebra.Structures.d_assoc_204
                        (MAlonzo.Code.Algebra.Structures.d_isSemigroup_368
                           (coe
                              MAlonzo.Code.Algebra.Structures.d_isMonoid_594
                              (coe
                                 MAlonzo.Code.Algebra.Structures.d_isGroup_674
                                 (coe
                                    MAlonzo.Code.Algebra.Structures.d_'43''45'isAbelianGroup_1604
                                    (coe MAlonzo.Code.Algebra.Bundles.d_isRing_2550 (coe v0))))))
                        (coe
                           MAlonzo.Code.Algebra.Bundles.d__'42'__2542 v0
                           (coe MAlonzo.Code.Algebra.Bundles.d_'45'__2544 v0 v1) v2)
                        (coe MAlonzo.Code.Algebra.Bundles.d__'42'__2542 v0 v1 v2)
                        (coe
                           MAlonzo.Code.Algebra.Bundles.d_'45'__2544 v0
                           (coe MAlonzo.Code.Algebra.Bundles.d__'42'__2542 v0 v1 v2)))))
               (let v3
                      = MAlonzo.Code.Algebra.Structures.d_'43''45'isAbelianGroup_1604
                          (coe MAlonzo.Code.Algebra.Bundles.d_isRing_2550 (coe v0)) in
                let v4 = MAlonzo.Code.Algebra.Structures.d_isGroup_674 (coe v3) in
                let v5 = MAlonzo.Code.Algebra.Structures.d_isMonoid_594 (coe v4) in
                let v6
                      = MAlonzo.Code.Algebra.Structures.d_isSemigroup_368 (coe v5) in
                coe
                  MAlonzo.Code.Algebra.Structures.du_'8729''45'cong'737'_112
                  (coe MAlonzo.Code.Algebra.Structures.d_isMagma_202 (coe v6))
                  (coe
                     MAlonzo.Code.Algebra.Bundles.d__'42'__2542 v0
                     (coe MAlonzo.Code.Algebra.Bundles.d_'45'__2544 v0 v1) v2)
                  (coe MAlonzo.Code.Algebra.Bundles.d_0'35'_2546 (coe v0))
                  (coe
                     MAlonzo.Code.Algebra.Bundles.d__'43'__2540 v0
                     (coe MAlonzo.Code.Algebra.Bundles.d__'42'__2542 v0 v1 v2)
                     (coe
                        MAlonzo.Code.Algebra.Bundles.d_'45'__2544 v0
                        (coe MAlonzo.Code.Algebra.Bundles.d__'42'__2542 v0 v1 v2)))
                  (coe
                     MAlonzo.Code.Relation.Binary.Structures.d_sym_36
                     (MAlonzo.Code.Algebra.Structures.d_isEquivalence_94
                        (coe
                           MAlonzo.Code.Algebra.Structures.d_isMagma_202
                           (coe
                              MAlonzo.Code.Algebra.Structures.d_isSemigroup_368
                              (coe
                                 MAlonzo.Code.Algebra.Structures.d_isMonoid_594
                                 (coe
                                    MAlonzo.Code.Algebra.Structures.d_isGroup_674
                                    (coe
                                       MAlonzo.Code.Algebra.Structures.d_'43''45'isAbelianGroup_1604
                                       (coe
                                          MAlonzo.Code.Algebra.Bundles.d_isRing_2550 (coe v0))))))))
                     (coe
                        MAlonzo.Code.Algebra.Bundles.d__'43'__2540 v0
                        (coe MAlonzo.Code.Algebra.Bundles.d__'42'__2542 v0 v1 v2)
                        (coe
                           MAlonzo.Code.Algebra.Bundles.d_'45'__2544 v0
                           (coe MAlonzo.Code.Algebra.Bundles.d__'42'__2542 v0 v1 v2)))
                     (MAlonzo.Code.Algebra.Bundles.d_0'35'_2546 (coe v0))
                     (let v7 = MAlonzo.Code.Algebra.Bundles.d_isRing_2550 (coe v0) in
                      let v8
                            = MAlonzo.Code.Algebra.Structures.d_'43''45'isAbelianGroup_1604
                                (coe v7) in
                      coe
                        MAlonzo.Code.Algebra.Structures.du_inverse'691'_642
                        (MAlonzo.Code.Algebra.Structures.d_isGroup_674 (coe v8))
                        (coe MAlonzo.Code.Algebra.Bundles.d__'42'__2542 v0 v1 v2)))))
            (coe
               MAlonzo.Code.Relation.Binary.Structures.d_sym_36
               (MAlonzo.Code.Algebra.Structures.d_isEquivalence_94
                  (coe
                     MAlonzo.Code.Algebra.Structures.d_isMagma_202
                     (coe
                        MAlonzo.Code.Algebra.Structures.d_isSemigroup_368
                        (coe
                           MAlonzo.Code.Algebra.Structures.d_isMonoid_594
                           (coe
                              MAlonzo.Code.Algebra.Structures.d_isGroup_674
                              (coe
                                 MAlonzo.Code.Algebra.Structures.d_'43''45'isAbelianGroup_1604
                                 (coe MAlonzo.Code.Algebra.Bundles.d_isRing_2550 (coe v0))))))))
               (coe
                  MAlonzo.Code.Algebra.Bundles.d__'43'__2540 v0
                  (coe
                     MAlonzo.Code.Algebra.Bundles.d__'42'__2542 v0
                     (coe MAlonzo.Code.Algebra.Bundles.d_'45'__2544 v0 v1) v2)
                  (MAlonzo.Code.Algebra.Bundles.d_0'35'_2546 (coe v0)))
               (coe
                  MAlonzo.Code.Algebra.Bundles.d__'42'__2542 v0
                  (coe MAlonzo.Code.Algebra.Bundles.d_'45'__2544 v0 v1) v2)
               (let v3 = MAlonzo.Code.Algebra.Bundles.d_isRing_2550 (coe v0) in
                let v4
                      = MAlonzo.Code.Algebra.Structures.d_'43''45'isAbelianGroup_1604
                          (coe v3) in
                let v5 = MAlonzo.Code.Algebra.Structures.d_isGroup_674 (coe v4) in
                coe
                  MAlonzo.Code.Algebra.Structures.du_identity'691'_400
                  (MAlonzo.Code.Algebra.Structures.d_isMonoid_594 (coe v5))
                  (coe
                     MAlonzo.Code.Algebra.Bundles.d__'42'__2542 v0
                     (coe MAlonzo.Code.Algebra.Bundles.d_'45'__2544 v0 v1) v2)))))
-- Algebra.Properties.Ring.-‿distribʳ-*
d_'45''8255'distrib'691''45''42'_248 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Algebra.Bundles.T_Ring_2514 ->
  AgdaAny -> AgdaAny -> AgdaAny
d_'45''8255'distrib'691''45''42'_248 ~v0 ~v1 v2 v3 v4
  = du_'45''8255'distrib'691''45''42'_248 v2 v3 v4
du_'45''8255'distrib'691''45''42'_248 ::
  MAlonzo.Code.Algebra.Bundles.T_Ring_2514 ->
  AgdaAny -> AgdaAny -> AgdaAny
du_'45''8255'distrib'691''45''42'_248 v0 v1 v2
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d_sym_36
      (MAlonzo.Code.Algebra.Structures.d_isEquivalence_94
         (coe
            MAlonzo.Code.Algebra.Structures.d_isMagma_202
            (coe
               MAlonzo.Code.Algebra.Structures.d_isSemigroup_368
               (coe
                  MAlonzo.Code.Algebra.Structures.d_isMonoid_594
                  (coe
                     MAlonzo.Code.Algebra.Structures.d_isGroup_674
                     (coe
                        MAlonzo.Code.Algebra.Structures.d_'43''45'isAbelianGroup_1604
                        (coe MAlonzo.Code.Algebra.Bundles.d_isRing_2550 (coe v0))))))))
      (coe
         MAlonzo.Code.Algebra.Bundles.d__'42'__2542 v0 v1
         (coe MAlonzo.Code.Algebra.Bundles.d_'45'__2544 v0 v2))
      (coe
         MAlonzo.Code.Algebra.Bundles.d_'45'__2544 v0
         (coe MAlonzo.Code.Algebra.Bundles.d__'42'__2542 v0 v1 v2))
      (MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.d_begin__40
         (coe
            MAlonzo.Code.Relation.Binary.Reasoning.Setoid.du_step'45''8776'_58
            (let v3 = MAlonzo.Code.Algebra.Bundles.d_isRing_2550 (coe v0) in
             let v4
                   = MAlonzo.Code.Algebra.Structures.d_'43''45'isAbelianGroup_1604
                       (coe v3) in
             let v5 = MAlonzo.Code.Algebra.Structures.d_isGroup_674 (coe v4) in
             let v6 = MAlonzo.Code.Algebra.Structures.d_isMonoid_594 (coe v5) in
             let v7
                   = MAlonzo.Code.Algebra.Structures.d_isSemigroup_368 (coe v6) in
             coe
               MAlonzo.Code.Algebra.Structures.du_setoid_110
               (coe MAlonzo.Code.Algebra.Structures.d_isMagma_202 (coe v7)))
            (coe
               MAlonzo.Code.Algebra.Bundles.d__'42'__2542 v0 v1
               (coe MAlonzo.Code.Algebra.Bundles.d_'45'__2544 v0 v2))
            (coe
               MAlonzo.Code.Algebra.Bundles.d__'43'__2540 v0
               (MAlonzo.Code.Algebra.Bundles.d_0'35'_2546 (coe v0))
               (coe
                  MAlonzo.Code.Algebra.Bundles.d__'42'__2542 v0 v1
                  (coe MAlonzo.Code.Algebra.Bundles.d_'45'__2544 v0 v2)))
            (coe
               MAlonzo.Code.Algebra.Bundles.d_'45'__2544 v0
               (coe MAlonzo.Code.Algebra.Bundles.d__'42'__2542 v0 v1 v2))
            (coe
               MAlonzo.Code.Relation.Binary.Reasoning.Setoid.du_step'45''8776'_58
               (let v3 = MAlonzo.Code.Algebra.Bundles.d_isRing_2550 (coe v0) in
                let v4
                      = MAlonzo.Code.Algebra.Structures.d_'43''45'isAbelianGroup_1604
                          (coe v3) in
                let v5 = MAlonzo.Code.Algebra.Structures.d_isGroup_674 (coe v4) in
                let v6 = MAlonzo.Code.Algebra.Structures.d_isMonoid_594 (coe v5) in
                let v7
                      = MAlonzo.Code.Algebra.Structures.d_isSemigroup_368 (coe v6) in
                coe
                  MAlonzo.Code.Algebra.Structures.du_setoid_110
                  (coe MAlonzo.Code.Algebra.Structures.d_isMagma_202 (coe v7)))
               (coe
                  MAlonzo.Code.Algebra.Bundles.d__'43'__2540 v0
                  (MAlonzo.Code.Algebra.Bundles.d_0'35'_2546 (coe v0))
                  (coe
                     MAlonzo.Code.Algebra.Bundles.d__'42'__2542 v0 v1
                     (coe MAlonzo.Code.Algebra.Bundles.d_'45'__2544 v0 v2)))
               (coe
                  MAlonzo.Code.Algebra.Bundles.d__'43'__2540 v0
                  (coe
                     MAlonzo.Code.Algebra.Bundles.d__'43'__2540 v0
                     (coe
                        MAlonzo.Code.Algebra.Bundles.d_'45'__2544 v0
                        (coe MAlonzo.Code.Algebra.Bundles.d__'42'__2542 v0 v1 v2))
                     (coe MAlonzo.Code.Algebra.Bundles.d__'42'__2542 v0 v1 v2))
                  (coe
                     MAlonzo.Code.Algebra.Bundles.d__'42'__2542 v0 v1
                     (coe MAlonzo.Code.Algebra.Bundles.d_'45'__2544 v0 v2)))
               (coe
                  MAlonzo.Code.Algebra.Bundles.d_'45'__2544 v0
                  (coe MAlonzo.Code.Algebra.Bundles.d__'42'__2542 v0 v1 v2))
               (coe
                  MAlonzo.Code.Relation.Binary.Reasoning.Setoid.du_step'45''8776'_58
                  (let v3 = MAlonzo.Code.Algebra.Bundles.d_isRing_2550 (coe v0) in
                   let v4
                         = MAlonzo.Code.Algebra.Structures.d_'43''45'isAbelianGroup_1604
                             (coe v3) in
                   let v5 = MAlonzo.Code.Algebra.Structures.d_isGroup_674 (coe v4) in
                   let v6 = MAlonzo.Code.Algebra.Structures.d_isMonoid_594 (coe v5) in
                   let v7
                         = MAlonzo.Code.Algebra.Structures.d_isSemigroup_368 (coe v6) in
                   coe
                     MAlonzo.Code.Algebra.Structures.du_setoid_110
                     (coe MAlonzo.Code.Algebra.Structures.d_isMagma_202 (coe v7)))
                  (coe
                     MAlonzo.Code.Algebra.Bundles.d__'43'__2540 v0
                     (coe
                        MAlonzo.Code.Algebra.Bundles.d__'43'__2540 v0
                        (coe
                           MAlonzo.Code.Algebra.Bundles.d_'45'__2544 v0
                           (coe MAlonzo.Code.Algebra.Bundles.d__'42'__2542 v0 v1 v2))
                        (coe MAlonzo.Code.Algebra.Bundles.d__'42'__2542 v0 v1 v2))
                     (coe
                        MAlonzo.Code.Algebra.Bundles.d__'42'__2542 v0 v1
                        (coe MAlonzo.Code.Algebra.Bundles.d_'45'__2544 v0 v2)))
                  (coe
                     MAlonzo.Code.Algebra.Bundles.d__'43'__2540 v0
                     (coe
                        MAlonzo.Code.Algebra.Bundles.d_'45'__2544 v0
                        (coe MAlonzo.Code.Algebra.Bundles.d__'42'__2542 v0 v1 v2))
                     (coe
                        MAlonzo.Code.Algebra.Bundles.d__'43'__2540 v0
                        (coe MAlonzo.Code.Algebra.Bundles.d__'42'__2542 v0 v1 v2)
                        (coe
                           MAlonzo.Code.Algebra.Bundles.d__'42'__2542 v0 v1
                           (coe MAlonzo.Code.Algebra.Bundles.d_'45'__2544 v0 v2))))
                  (coe
                     MAlonzo.Code.Algebra.Bundles.d_'45'__2544 v0
                     (coe MAlonzo.Code.Algebra.Bundles.d__'42'__2542 v0 v1 v2))
                  (coe
                     MAlonzo.Code.Relation.Binary.Reasoning.Setoid.du_step'45''8776'_58
                     (let v3 = MAlonzo.Code.Algebra.Bundles.d_isRing_2550 (coe v0) in
                      let v4
                            = MAlonzo.Code.Algebra.Structures.d_'43''45'isAbelianGroup_1604
                                (coe v3) in
                      let v5 = MAlonzo.Code.Algebra.Structures.d_isGroup_674 (coe v4) in
                      let v6 = MAlonzo.Code.Algebra.Structures.d_isMonoid_594 (coe v5) in
                      let v7
                            = MAlonzo.Code.Algebra.Structures.d_isSemigroup_368 (coe v6) in
                      coe
                        MAlonzo.Code.Algebra.Structures.du_setoid_110
                        (coe MAlonzo.Code.Algebra.Structures.d_isMagma_202 (coe v7)))
                     (coe
                        MAlonzo.Code.Algebra.Bundles.d__'43'__2540 v0
                        (coe
                           MAlonzo.Code.Algebra.Bundles.d_'45'__2544 v0
                           (coe MAlonzo.Code.Algebra.Bundles.d__'42'__2542 v0 v1 v2))
                        (coe
                           MAlonzo.Code.Algebra.Bundles.d__'43'__2540 v0
                           (coe MAlonzo.Code.Algebra.Bundles.d__'42'__2542 v0 v1 v2)
                           (coe
                              MAlonzo.Code.Algebra.Bundles.d__'42'__2542 v0 v1
                              (coe MAlonzo.Code.Algebra.Bundles.d_'45'__2544 v0 v2))))
                     (coe
                        MAlonzo.Code.Algebra.Bundles.d__'43'__2540 v0
                        (coe
                           MAlonzo.Code.Algebra.Bundles.d_'45'__2544 v0
                           (coe MAlonzo.Code.Algebra.Bundles.d__'42'__2542 v0 v1 v2))
                        (coe
                           MAlonzo.Code.Algebra.Bundles.d__'42'__2542 v0 v1
                           (coe
                              MAlonzo.Code.Algebra.Bundles.d__'43'__2540 v0 v2
                              (coe MAlonzo.Code.Algebra.Bundles.d_'45'__2544 v0 v2))))
                     (coe
                        MAlonzo.Code.Algebra.Bundles.d_'45'__2544 v0
                        (coe MAlonzo.Code.Algebra.Bundles.d__'42'__2542 v0 v1 v2))
                     (coe
                        MAlonzo.Code.Relation.Binary.Reasoning.Setoid.du_step'45''8776'_58
                        (let v3 = MAlonzo.Code.Algebra.Bundles.d_isRing_2550 (coe v0) in
                         let v4
                               = MAlonzo.Code.Algebra.Structures.d_'43''45'isAbelianGroup_1604
                                   (coe v3) in
                         let v5 = MAlonzo.Code.Algebra.Structures.d_isGroup_674 (coe v4) in
                         let v6 = MAlonzo.Code.Algebra.Structures.d_isMonoid_594 (coe v5) in
                         let v7
                               = MAlonzo.Code.Algebra.Structures.d_isSemigroup_368 (coe v6) in
                         coe
                           MAlonzo.Code.Algebra.Structures.du_setoid_110
                           (coe MAlonzo.Code.Algebra.Structures.d_isMagma_202 (coe v7)))
                        (coe
                           MAlonzo.Code.Algebra.Bundles.d__'43'__2540 v0
                           (coe
                              MAlonzo.Code.Algebra.Bundles.d_'45'__2544 v0
                              (coe MAlonzo.Code.Algebra.Bundles.d__'42'__2542 v0 v1 v2))
                           (coe
                              MAlonzo.Code.Algebra.Bundles.d__'42'__2542 v0 v1
                              (coe
                                 MAlonzo.Code.Algebra.Bundles.d__'43'__2540 v0 v2
                                 (coe MAlonzo.Code.Algebra.Bundles.d_'45'__2544 v0 v2))))
                        (coe
                           MAlonzo.Code.Algebra.Bundles.d__'43'__2540 v0
                           (coe
                              MAlonzo.Code.Algebra.Bundles.d_'45'__2544 v0
                              (coe MAlonzo.Code.Algebra.Bundles.d__'42'__2542 v0 v1 v2))
                           (coe
                              MAlonzo.Code.Algebra.Bundles.d__'42'__2542 v0 v1
                              (MAlonzo.Code.Algebra.Bundles.d_0'35'_2546 (coe v0))))
                        (coe
                           MAlonzo.Code.Algebra.Bundles.d_'45'__2544 v0
                           (coe MAlonzo.Code.Algebra.Bundles.d__'42'__2542 v0 v1 v2))
                        (coe
                           MAlonzo.Code.Relation.Binary.Reasoning.Setoid.du_step'45''8776'_58
                           (let v3 = MAlonzo.Code.Algebra.Bundles.d_isRing_2550 (coe v0) in
                            let v4
                                  = MAlonzo.Code.Algebra.Structures.d_'43''45'isAbelianGroup_1604
                                      (coe v3) in
                            let v5 = MAlonzo.Code.Algebra.Structures.d_isGroup_674 (coe v4) in
                            let v6 = MAlonzo.Code.Algebra.Structures.d_isMonoid_594 (coe v5) in
                            let v7
                                  = MAlonzo.Code.Algebra.Structures.d_isSemigroup_368 (coe v6) in
                            coe
                              MAlonzo.Code.Algebra.Structures.du_setoid_110
                              (coe MAlonzo.Code.Algebra.Structures.d_isMagma_202 (coe v7)))
                           (coe
                              MAlonzo.Code.Algebra.Bundles.d__'43'__2540 v0
                              (coe
                                 MAlonzo.Code.Algebra.Bundles.d_'45'__2544 v0
                                 (coe MAlonzo.Code.Algebra.Bundles.d__'42'__2542 v0 v1 v2))
                              (coe
                                 MAlonzo.Code.Algebra.Bundles.d__'42'__2542 v0 v1
                                 (MAlonzo.Code.Algebra.Bundles.d_0'35'_2546 (coe v0))))
                           (coe
                              MAlonzo.Code.Algebra.Bundles.d__'43'__2540 v0
                              (coe
                                 MAlonzo.Code.Algebra.Bundles.d_'45'__2544 v0
                                 (coe MAlonzo.Code.Algebra.Bundles.d__'42'__2542 v0 v1 v2))
                              (MAlonzo.Code.Algebra.Bundles.d_0'35'_2546 (coe v0)))
                           (coe
                              MAlonzo.Code.Algebra.Bundles.d_'45'__2544 v0
                              (coe MAlonzo.Code.Algebra.Bundles.d__'42'__2542 v0 v1 v2))
                           (coe
                              MAlonzo.Code.Relation.Binary.Reasoning.Setoid.du_step'45''8776'_58
                              (let v3 = MAlonzo.Code.Algebra.Bundles.d_isRing_2550 (coe v0) in
                               let v4
                                     = MAlonzo.Code.Algebra.Structures.d_'43''45'isAbelianGroup_1604
                                         (coe v3) in
                               let v5 = MAlonzo.Code.Algebra.Structures.d_isGroup_674 (coe v4) in
                               let v6 = MAlonzo.Code.Algebra.Structures.d_isMonoid_594 (coe v5) in
                               let v7
                                     = MAlonzo.Code.Algebra.Structures.d_isSemigroup_368 (coe v6) in
                               coe
                                 MAlonzo.Code.Algebra.Structures.du_setoid_110
                                 (coe MAlonzo.Code.Algebra.Structures.d_isMagma_202 (coe v7)))
                              (coe
                                 MAlonzo.Code.Algebra.Bundles.d__'43'__2540 v0
                                 (coe
                                    MAlonzo.Code.Algebra.Bundles.d_'45'__2544 v0
                                    (coe MAlonzo.Code.Algebra.Bundles.d__'42'__2542 v0 v1 v2))
                                 (MAlonzo.Code.Algebra.Bundles.d_0'35'_2546 (coe v0)))
                              (coe
                                 MAlonzo.Code.Algebra.Bundles.d_'45'__2544 v0
                                 (coe MAlonzo.Code.Algebra.Bundles.d__'42'__2542 v0 v1 v2))
                              (coe
                                 MAlonzo.Code.Algebra.Bundles.d_'45'__2544 v0
                                 (coe MAlonzo.Code.Algebra.Bundles.d__'42'__2542 v0 v1 v2))
                              (coe
                                 MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du__'8718'_86
                                 (coe
                                    MAlonzo.Code.Relation.Binary.Structures.d_refl_34
                                    (coe
                                       MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_60
                                       (let v3
                                              = MAlonzo.Code.Algebra.Bundles.d_isRing_2550
                                                  (coe v0) in
                                        let v4
                                              = MAlonzo.Code.Algebra.Structures.d_'43''45'isAbelianGroup_1604
                                                  (coe v3) in
                                        let v5
                                              = MAlonzo.Code.Algebra.Structures.d_isGroup_674
                                                  (coe v4) in
                                        let v6
                                              = MAlonzo.Code.Algebra.Structures.d_isMonoid_594
                                                  (coe v5) in
                                        let v7
                                              = MAlonzo.Code.Algebra.Structures.d_isSemigroup_368
                                                  (coe v6) in
                                        coe
                                          MAlonzo.Code.Algebra.Structures.du_setoid_110
                                          (coe
                                             MAlonzo.Code.Algebra.Structures.d_isMagma_202
                                             (coe v7)))))
                                 (coe
                                    MAlonzo.Code.Algebra.Bundles.d_'45'__2544 v0
                                    (coe MAlonzo.Code.Algebra.Bundles.d__'42'__2542 v0 v1 v2)))
                              (let v3 = MAlonzo.Code.Algebra.Bundles.d_isRing_2550 (coe v0) in
                               let v4
                                     = MAlonzo.Code.Algebra.Structures.d_'43''45'isAbelianGroup_1604
                                         (coe v3) in
                               let v5 = MAlonzo.Code.Algebra.Structures.d_isGroup_674 (coe v4) in
                               coe
                                 MAlonzo.Code.Algebra.Structures.du_identity'691'_400
                                 (MAlonzo.Code.Algebra.Structures.d_isMonoid_594 (coe v5))
                                 (coe
                                    MAlonzo.Code.Algebra.Bundles.d_'45'__2544 v0
                                    (coe MAlonzo.Code.Algebra.Bundles.d__'42'__2542 v0 v1 v2))))
                           (let v3
                                  = MAlonzo.Code.Algebra.Structures.d_'43''45'isAbelianGroup_1604
                                      (coe MAlonzo.Code.Algebra.Bundles.d_isRing_2550 (coe v0)) in
                            let v4 = MAlonzo.Code.Algebra.Structures.d_isGroup_674 (coe v3) in
                            let v5 = MAlonzo.Code.Algebra.Structures.d_isMonoid_594 (coe v4) in
                            let v6
                                  = MAlonzo.Code.Algebra.Structures.d_isSemigroup_368 (coe v5) in
                            coe
                              MAlonzo.Code.Algebra.Structures.du_'8729''45'cong'737'_112
                              (coe MAlonzo.Code.Algebra.Structures.d_isMagma_202 (coe v6))
                              (coe
                                 MAlonzo.Code.Algebra.Bundles.d_'45'__2544 v0
                                 (coe MAlonzo.Code.Algebra.Bundles.d__'42'__2542 v0 v1 v2))
                              (coe
                                 MAlonzo.Code.Algebra.Bundles.d__'42'__2542 v0 v1
                                 (MAlonzo.Code.Algebra.Bundles.d_0'35'_2546 (coe v0)))
                              (coe MAlonzo.Code.Algebra.Bundles.d_0'35'_2546 (coe v0))
                              (coe
                                 MAlonzo.Code.Algebra.Structures.du_zero'691'_1694
                                 (MAlonzo.Code.Algebra.Bundles.d_isRing_2550 (coe v0)) v1)))
                        (let v3
                               = MAlonzo.Code.Algebra.Structures.d_'43''45'isAbelianGroup_1604
                                   (coe MAlonzo.Code.Algebra.Bundles.d_isRing_2550 (coe v0)) in
                         let v4 = MAlonzo.Code.Algebra.Structures.d_isGroup_674 (coe v3) in
                         let v5 = MAlonzo.Code.Algebra.Structures.d_isMonoid_594 (coe v4) in
                         let v6
                               = MAlonzo.Code.Algebra.Structures.d_isSemigroup_368 (coe v5) in
                         coe
                           MAlonzo.Code.Algebra.Structures.du_'8729''45'cong'737'_112
                           (coe MAlonzo.Code.Algebra.Structures.d_isMagma_202 (coe v6))
                           (coe
                              MAlonzo.Code.Algebra.Bundles.d_'45'__2544 v0
                              (coe MAlonzo.Code.Algebra.Bundles.d__'42'__2542 v0 v1 v2))
                           (coe
                              MAlonzo.Code.Function.Base.du__'45''10216'_'8739'_302
                              (coe MAlonzo.Code.Algebra.Bundles.d__'42'__2542 v0 v1)
                              (\ v7 v8 -> v7)
                              (coe
                                 MAlonzo.Code.Algebra.Bundles.d__'43'__2540 v0 v2
                                 (coe MAlonzo.Code.Algebra.Bundles.d_'45'__2544 v0 v2))
                              (MAlonzo.Code.Algebra.Bundles.d_0'35'_2546 (coe v0)))
                           (coe
                              MAlonzo.Code.Function.Base.du_'8739'_'10217''45'__308
                              (\ v7 v8 -> v8)
                              (coe MAlonzo.Code.Algebra.Bundles.d__'42'__2542 v0 v1)
                              (coe
                                 MAlonzo.Code.Algebra.Bundles.d__'43'__2540 v0 v2
                                 (coe MAlonzo.Code.Algebra.Bundles.d_'45'__2544 v0 v2))
                              (MAlonzo.Code.Algebra.Bundles.d_0'35'_2546 (coe v0)))
                           (let v7
                                  = MAlonzo.Code.Algebra.Structures.d_'42''45'isMonoid_1606
                                      (coe MAlonzo.Code.Algebra.Bundles.d_isRing_2550 (coe v0)) in
                            let v8
                                  = MAlonzo.Code.Algebra.Structures.d_isSemigroup_368 (coe v7) in
                            coe
                              MAlonzo.Code.Algebra.Structures.du_'8729''45'cong'737'_112
                              (coe MAlonzo.Code.Algebra.Structures.d_isMagma_202 (coe v8))
                              (coe v1)
                              (coe
                                 MAlonzo.Code.Algebra.Bundles.d__'43'__2540 v0 v2
                                 (coe MAlonzo.Code.Algebra.Bundles.d_'45'__2544 v0 v2))
                              (coe MAlonzo.Code.Algebra.Bundles.d_0'35'_2546 (coe v0))
                              (let v9 = MAlonzo.Code.Algebra.Bundles.d_isRing_2550 (coe v0) in
                               let v10
                                     = MAlonzo.Code.Algebra.Structures.d_'43''45'isAbelianGroup_1604
                                         (coe v9) in
                               coe
                                 MAlonzo.Code.Algebra.Structures.du_inverse'691'_642
                                 (MAlonzo.Code.Algebra.Structures.d_isGroup_674 (coe v10)) v2))))
                     (let v3
                            = MAlonzo.Code.Algebra.Structures.d_'43''45'isAbelianGroup_1604
                                (coe MAlonzo.Code.Algebra.Bundles.d_isRing_2550 (coe v0)) in
                      let v4 = MAlonzo.Code.Algebra.Structures.d_isGroup_674 (coe v3) in
                      let v5 = MAlonzo.Code.Algebra.Structures.d_isMonoid_594 (coe v4) in
                      let v6
                            = MAlonzo.Code.Algebra.Structures.d_isSemigroup_368 (coe v5) in
                      coe
                        MAlonzo.Code.Algebra.Structures.du_'8729''45'cong'737'_112
                        (coe MAlonzo.Code.Algebra.Structures.d_isMagma_202 (coe v6))
                        (coe
                           MAlonzo.Code.Algebra.Bundles.d_'45'__2544 v0
                           (coe MAlonzo.Code.Algebra.Bundles.d__'42'__2542 v0 v1 v2))
                        (coe
                           MAlonzo.Code.Algebra.Bundles.d__'43'__2540 v0
                           (coe MAlonzo.Code.Algebra.Bundles.d__'42'__2542 v0 v1 v2)
                           (coe
                              MAlonzo.Code.Algebra.Bundles.d__'42'__2542 v0 v1
                              (coe MAlonzo.Code.Algebra.Bundles.d_'45'__2544 v0 v2)))
                        (coe
                           MAlonzo.Code.Algebra.Bundles.d__'42'__2542 v0 v1
                           (coe
                              MAlonzo.Code.Algebra.Bundles.d__'43'__2540 v0 v2
                              (coe MAlonzo.Code.Algebra.Bundles.d_'45'__2544 v0 v2)))
                        (coe
                           MAlonzo.Code.Relation.Binary.Structures.d_sym_36
                           (MAlonzo.Code.Algebra.Structures.d_isEquivalence_94
                              (coe
                                 MAlonzo.Code.Algebra.Structures.d_isMagma_202
                                 (coe
                                    MAlonzo.Code.Algebra.Structures.d_isSemigroup_368
                                    (coe
                                       MAlonzo.Code.Algebra.Structures.d_isMonoid_594
                                       (coe
                                          MAlonzo.Code.Algebra.Structures.d_isGroup_674
                                          (coe
                                             MAlonzo.Code.Algebra.Structures.d_'43''45'isAbelianGroup_1604
                                             (coe
                                                MAlonzo.Code.Algebra.Bundles.d_isRing_2550
                                                (coe v0))))))))
                           (coe
                              MAlonzo.Code.Algebra.Bundles.d__'42'__2542 v0 v1
                              (coe
                                 MAlonzo.Code.Algebra.Bundles.d__'43'__2540 v0 v2
                                 (coe MAlonzo.Code.Algebra.Bundles.d_'45'__2544 v0 v2)))
                           (coe
                              MAlonzo.Code.Algebra.Bundles.d__'43'__2540 v0
                              (coe MAlonzo.Code.Algebra.Bundles.d__'42'__2542 v0 v1 v2)
                              (coe
                                 MAlonzo.Code.Algebra.Bundles.d__'42'__2542 v0 v1
                                 (coe MAlonzo.Code.Algebra.Bundles.d_'45'__2544 v0 v2)))
                           (let v7 = MAlonzo.Code.Algebra.Bundles.d_isRing_2550 (coe v0) in
                            let v8
                                  = coe
                                      MAlonzo.Code.Algebra.Structures.du_isSemiring_1698 (coe v7) in
                            coe
                              MAlonzo.Code.Algebra.Structures.du_distrib'737'_1164
                              (MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1252
                                 (coe v8))
                              v1 v2 (coe MAlonzo.Code.Algebra.Bundles.d_'45'__2544 v0 v2)))))
                  (coe
                     MAlonzo.Code.Algebra.Structures.d_assoc_204
                     (MAlonzo.Code.Algebra.Structures.d_isSemigroup_368
                        (coe
                           MAlonzo.Code.Algebra.Structures.d_isMonoid_594
                           (coe
                              MAlonzo.Code.Algebra.Structures.d_isGroup_674
                              (coe
                                 MAlonzo.Code.Algebra.Structures.d_'43''45'isAbelianGroup_1604
                                 (coe MAlonzo.Code.Algebra.Bundles.d_isRing_2550 (coe v0))))))
                     (coe
                        MAlonzo.Code.Algebra.Bundles.d_'45'__2544 v0
                        (coe MAlonzo.Code.Algebra.Bundles.d__'42'__2542 v0 v1 v2))
                     (coe MAlonzo.Code.Algebra.Bundles.d__'42'__2542 v0 v1 v2)
                     (coe
                        MAlonzo.Code.Algebra.Bundles.d__'42'__2542 v0 v1
                        (coe MAlonzo.Code.Algebra.Bundles.d_'45'__2544 v0 v2))))
               (let v3
                      = MAlonzo.Code.Algebra.Structures.d_'43''45'isAbelianGroup_1604
                          (coe MAlonzo.Code.Algebra.Bundles.d_isRing_2550 (coe v0)) in
                let v4 = MAlonzo.Code.Algebra.Structures.d_isGroup_674 (coe v3) in
                let v5 = MAlonzo.Code.Algebra.Structures.d_isMonoid_594 (coe v4) in
                let v6
                      = MAlonzo.Code.Algebra.Structures.d_isSemigroup_368 (coe v5) in
                coe
                  MAlonzo.Code.Algebra.Structures.du_'8729''45'cong'691'_116
                  (coe MAlonzo.Code.Algebra.Structures.d_isMagma_202 (coe v6))
                  (coe
                     MAlonzo.Code.Algebra.Bundles.d__'42'__2542 v0 v1
                     (coe MAlonzo.Code.Algebra.Bundles.d_'45'__2544 v0 v2))
                  (coe MAlonzo.Code.Algebra.Bundles.d_0'35'_2546 (coe v0))
                  (coe
                     MAlonzo.Code.Algebra.Bundles.d__'43'__2540 v0
                     (coe
                        MAlonzo.Code.Algebra.Bundles.d_'45'__2544 v0
                        (coe MAlonzo.Code.Algebra.Bundles.d__'42'__2542 v0 v1 v2))
                     (coe MAlonzo.Code.Algebra.Bundles.d__'42'__2542 v0 v1 v2))
                  (coe
                     MAlonzo.Code.Relation.Binary.Structures.d_sym_36
                     (MAlonzo.Code.Algebra.Structures.d_isEquivalence_94
                        (coe
                           MAlonzo.Code.Algebra.Structures.d_isMagma_202
                           (coe
                              MAlonzo.Code.Algebra.Structures.d_isSemigroup_368
                              (coe
                                 MAlonzo.Code.Algebra.Structures.d_isMonoid_594
                                 (coe
                                    MAlonzo.Code.Algebra.Structures.d_isGroup_674
                                    (coe
                                       MAlonzo.Code.Algebra.Structures.d_'43''45'isAbelianGroup_1604
                                       (coe
                                          MAlonzo.Code.Algebra.Bundles.d_isRing_2550 (coe v0))))))))
                     (coe
                        MAlonzo.Code.Algebra.Bundles.d__'43'__2540 v0
                        (coe
                           MAlonzo.Code.Algebra.Bundles.d_'45'__2544 v0
                           (coe MAlonzo.Code.Algebra.Bundles.d__'42'__2542 v0 v1 v2))
                        (coe MAlonzo.Code.Algebra.Bundles.d__'42'__2542 v0 v1 v2))
                     (MAlonzo.Code.Algebra.Bundles.d_0'35'_2546 (coe v0))
                     (let v7 = MAlonzo.Code.Algebra.Bundles.d_isRing_2550 (coe v0) in
                      let v8
                            = MAlonzo.Code.Algebra.Structures.d_'43''45'isAbelianGroup_1604
                                (coe v7) in
                      coe
                        MAlonzo.Code.Algebra.Structures.du_inverse'737'_640
                        (MAlonzo.Code.Algebra.Structures.d_isGroup_674 (coe v8))
                        (coe MAlonzo.Code.Algebra.Bundles.d__'42'__2542 v0 v1 v2)))))
            (coe
               MAlonzo.Code.Relation.Binary.Structures.d_sym_36
               (MAlonzo.Code.Algebra.Structures.d_isEquivalence_94
                  (coe
                     MAlonzo.Code.Algebra.Structures.d_isMagma_202
                     (coe
                        MAlonzo.Code.Algebra.Structures.d_isSemigroup_368
                        (coe
                           MAlonzo.Code.Algebra.Structures.d_isMonoid_594
                           (coe
                              MAlonzo.Code.Algebra.Structures.d_isGroup_674
                              (coe
                                 MAlonzo.Code.Algebra.Structures.d_'43''45'isAbelianGroup_1604
                                 (coe MAlonzo.Code.Algebra.Bundles.d_isRing_2550 (coe v0))))))))
               (coe
                  MAlonzo.Code.Algebra.Bundles.d__'43'__2540 v0
                  (MAlonzo.Code.Algebra.Bundles.d_0'35'_2546 (coe v0))
                  (coe
                     MAlonzo.Code.Algebra.Bundles.d__'42'__2542 v0 v1
                     (coe MAlonzo.Code.Algebra.Bundles.d_'45'__2544 v0 v2)))
               (coe
                  MAlonzo.Code.Algebra.Bundles.d__'42'__2542 v0 v1
                  (coe MAlonzo.Code.Algebra.Bundles.d_'45'__2544 v0 v2))
               (let v3 = MAlonzo.Code.Algebra.Bundles.d_isRing_2550 (coe v0) in
                let v4
                      = MAlonzo.Code.Algebra.Structures.d_'43''45'isAbelianGroup_1604
                          (coe v3) in
                let v5 = MAlonzo.Code.Algebra.Structures.d_isGroup_674 (coe v4) in
                coe
                  MAlonzo.Code.Algebra.Structures.du_identity'737'_398
                  (MAlonzo.Code.Algebra.Structures.d_isMonoid_594 (coe v5))
                  (coe
                     MAlonzo.Code.Algebra.Bundles.d__'42'__2542 v0 v1
                     (coe MAlonzo.Code.Algebra.Bundles.d_'45'__2544 v0 v2))))))
-- Algebra.Properties.Ring.-‿*-distribˡ
d_'45''8255''42''45'distrib'737'_258 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Algebra.Bundles.T_Ring_2514 ->
  AgdaAny -> AgdaAny -> AgdaAny
d_'45''8255''42''45'distrib'737'_258 ~v0 ~v1 v2 v3 v4
  = du_'45''8255''42''45'distrib'737'_258 v2 v3 v4
du_'45''8255''42''45'distrib'737'_258 ::
  MAlonzo.Code.Algebra.Bundles.T_Ring_2514 ->
  AgdaAny -> AgdaAny -> AgdaAny
du_'45''8255''42''45'distrib'737'_258 v0 v1 v2
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d_sym_36
      (MAlonzo.Code.Algebra.Structures.d_isEquivalence_94
         (coe
            MAlonzo.Code.Algebra.Structures.d_isMagma_202
            (coe
               MAlonzo.Code.Algebra.Structures.d_isSemigroup_368
               (coe
                  MAlonzo.Code.Algebra.Structures.d_isMonoid_594
                  (coe
                     MAlonzo.Code.Algebra.Structures.d_isGroup_674
                     (coe
                        MAlonzo.Code.Algebra.Structures.d_'43''45'isAbelianGroup_1604
                        (coe MAlonzo.Code.Algebra.Bundles.d_isRing_2550 (coe v0))))))))
      (coe
         MAlonzo.Code.Algebra.Bundles.d_'45'__2544 v0
         (coe MAlonzo.Code.Algebra.Bundles.d__'42'__2542 v0 v1 v2))
      (coe
         MAlonzo.Code.Algebra.Bundles.d__'42'__2542 v0
         (coe MAlonzo.Code.Algebra.Bundles.d_'45'__2544 v0 v1) v2)
      (coe
         du_'45''8255'distrib'737''45''42'_238 (coe v0) (coe v1) (coe v2))
-- Algebra.Properties.Ring.-‿*-distribʳ
d_'45''8255''42''45'distrib'691'_268 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Algebra.Bundles.T_Ring_2514 ->
  AgdaAny -> AgdaAny -> AgdaAny
d_'45''8255''42''45'distrib'691'_268 ~v0 ~v1 v2 v3 v4
  = du_'45''8255''42''45'distrib'691'_268 v2 v3 v4
du_'45''8255''42''45'distrib'691'_268 ::
  MAlonzo.Code.Algebra.Bundles.T_Ring_2514 ->
  AgdaAny -> AgdaAny -> AgdaAny
du_'45''8255''42''45'distrib'691'_268 v0 v1 v2
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d_sym_36
      (MAlonzo.Code.Algebra.Structures.d_isEquivalence_94
         (coe
            MAlonzo.Code.Algebra.Structures.d_isMagma_202
            (coe
               MAlonzo.Code.Algebra.Structures.d_isSemigroup_368
               (coe
                  MAlonzo.Code.Algebra.Structures.d_isMonoid_594
                  (coe
                     MAlonzo.Code.Algebra.Structures.d_isGroup_674
                     (coe
                        MAlonzo.Code.Algebra.Structures.d_'43''45'isAbelianGroup_1604
                        (coe MAlonzo.Code.Algebra.Bundles.d_isRing_2550 (coe v0))))))))
      (coe
         MAlonzo.Code.Algebra.Bundles.d_'45'__2544 v0
         (coe MAlonzo.Code.Algebra.Bundles.d__'42'__2542 v0 v1 v2))
      (coe
         MAlonzo.Code.Algebra.Bundles.d__'42'__2542 v0 v1
         (coe MAlonzo.Code.Algebra.Bundles.d_'45'__2544 v0 v2))
      (coe
         du_'45''8255'distrib'691''45''42'_248 (coe v0) (coe v1) (coe v2))
