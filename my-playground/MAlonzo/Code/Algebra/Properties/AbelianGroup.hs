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

module MAlonzo.Code.Algebra.Properties.AbelianGroup where

import MAlonzo.RTE (coe, erased, AgdaAny, addInt, subInt, mulInt,
                    quotInt, remInt, geqInt, ltInt, eqInt, add64, sub64, mul64, quot64,
                    rem64, lt64, eq64, word64FromNat, word64ToNat)
import qualified MAlonzo.RTE
import qualified Data.Text
import qualified MAlonzo.Code.Agda.Builtin.Sigma
import qualified MAlonzo.Code.Agda.Primitive
import qualified MAlonzo.Code.Algebra.Bundles
import qualified MAlonzo.Code.Algebra.Properties.Group
import qualified MAlonzo.Code.Algebra.Structures
import qualified MAlonzo.Code.Relation.Binary.Bundles
import qualified MAlonzo.Code.Relation.Binary.Reasoning.Base.Single
import qualified MAlonzo.Code.Relation.Binary.Reasoning.Setoid
import qualified MAlonzo.Code.Relation.Binary.Structures

-- Algebra.Properties.AbelianGroup._.identity-unique
d_identity'45'unique_132 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Algebra.Bundles.T_AbelianGroup_990 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> AgdaAny
d_identity'45'unique_132 ~v0 ~v1 v2 = du_identity'45'unique_132 v2
du_identity'45'unique_132 ::
  MAlonzo.Code.Algebra.Bundles.T_AbelianGroup_990 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> AgdaAny
du_identity'45'unique_132 v0
  = coe
      MAlonzo.Code.Algebra.Properties.Group.du_identity'45'unique_282
      (coe MAlonzo.Code.Algebra.Bundles.du_group_1080 (coe v0))
-- Algebra.Properties.AbelianGroup._.identityʳ-unique
d_identity'691''45'unique_134 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Algebra.Bundles.T_AbelianGroup_990 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_identity'691''45'unique_134 ~v0 ~v1 v2
  = du_identity'691''45'unique_134 v2
du_identity'691''45'unique_134 ::
  MAlonzo.Code.Algebra.Bundles.T_AbelianGroup_990 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_identity'691''45'unique_134 v0
  = coe
      MAlonzo.Code.Algebra.Properties.Group.du_identity'691''45'unique_272
      (coe MAlonzo.Code.Algebra.Bundles.du_group_1080 (coe v0))
-- Algebra.Properties.AbelianGroup._.identityˡ-unique
d_identity'737''45'unique_136 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Algebra.Bundles.T_AbelianGroup_990 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_identity'737''45'unique_136 ~v0 ~v1 v2
  = du_identity'737''45'unique_136 v2
du_identity'737''45'unique_136 ::
  MAlonzo.Code.Algebra.Bundles.T_AbelianGroup_990 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_identity'737''45'unique_136 v0
  = coe
      MAlonzo.Code.Algebra.Properties.Group.du_identity'737''45'unique_260
      (coe MAlonzo.Code.Algebra.Bundles.du_group_1080 (coe v0))
-- Algebra.Properties.AbelianGroup._.inverseʳ-unique
d_inverse'691''45'unique_138 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Algebra.Bundles.T_AbelianGroup_990 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_inverse'691''45'unique_138 ~v0 ~v1 v2
  = du_inverse'691''45'unique_138 v2
du_inverse'691''45'unique_138 ::
  MAlonzo.Code.Algebra.Bundles.T_AbelianGroup_990 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_inverse'691''45'unique_138 v0
  = coe
      MAlonzo.Code.Algebra.Properties.Group.du_inverse'691''45'unique_304
      (coe MAlonzo.Code.Algebra.Bundles.du_group_1080 (coe v0))
-- Algebra.Properties.AbelianGroup._.inverseˡ-unique
d_inverse'737''45'unique_140 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Algebra.Bundles.T_AbelianGroup_990 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_inverse'737''45'unique_140 ~v0 ~v1 v2
  = du_inverse'737''45'unique_140 v2
du_inverse'737''45'unique_140 ::
  MAlonzo.Code.Algebra.Bundles.T_AbelianGroup_990 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_inverse'737''45'unique_140 v0
  = coe
      MAlonzo.Code.Algebra.Properties.Group.du_inverse'737''45'unique_292
      (coe MAlonzo.Code.Algebra.Bundles.du_group_1080 (coe v0))
-- Algebra.Properties.AbelianGroup._.left-identity-unique
d_left'45'identity'45'unique_142 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Algebra.Bundles.T_AbelianGroup_990 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_left'45'identity'45'unique_142 ~v0 ~v1 v2
  = du_left'45'identity'45'unique_142 v2
du_left'45'identity'45'unique_142 ::
  MAlonzo.Code.Algebra.Bundles.T_AbelianGroup_990 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_left'45'identity'45'unique_142 v0
  = coe
      MAlonzo.Code.Algebra.Properties.Group.du_left'45'identity'45'unique_312
      (coe MAlonzo.Code.Algebra.Bundles.du_group_1080 (coe v0))
-- Algebra.Properties.AbelianGroup._.left-inverse-unique
d_left'45'inverse'45'unique_144 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Algebra.Bundles.T_AbelianGroup_990 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_left'45'inverse'45'unique_144 ~v0 ~v1 v2
  = du_left'45'inverse'45'unique_144 v2
du_left'45'inverse'45'unique_144 ::
  MAlonzo.Code.Algebra.Bundles.T_AbelianGroup_990 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_left'45'inverse'45'unique_144 v0
  = coe
      MAlonzo.Code.Algebra.Properties.Group.du_left'45'inverse'45'unique_316
      (coe MAlonzo.Code.Algebra.Bundles.du_group_1080 (coe v0))
-- Algebra.Properties.AbelianGroup._.right-identity-unique
d_right'45'identity'45'unique_146 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Algebra.Bundles.T_AbelianGroup_990 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_right'45'identity'45'unique_146 ~v0 ~v1 v2
  = du_right'45'identity'45'unique_146 v2
du_right'45'identity'45'unique_146 ::
  MAlonzo.Code.Algebra.Bundles.T_AbelianGroup_990 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_right'45'identity'45'unique_146 v0
  = coe
      MAlonzo.Code.Algebra.Properties.Group.du_right'45'identity'45'unique_314
      (coe MAlonzo.Code.Algebra.Bundles.du_group_1080 (coe v0))
-- Algebra.Properties.AbelianGroup._.right-inverse-unique
d_right'45'inverse'45'unique_148 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Algebra.Bundles.T_AbelianGroup_990 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_right'45'inverse'45'unique_148 ~v0 ~v1 v2
  = du_right'45'inverse'45'unique_148 v2
du_right'45'inverse'45'unique_148 ::
  MAlonzo.Code.Algebra.Bundles.T_AbelianGroup_990 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_right'45'inverse'45'unique_148 v0
  = coe
      MAlonzo.Code.Algebra.Properties.Group.du_right'45'inverse'45'unique_318
      (coe MAlonzo.Code.Algebra.Bundles.du_group_1080 (coe v0))
-- Algebra.Properties.AbelianGroup._.ε⁻¹≈ε
d_ε'8315''185''8776'ε_150 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Algebra.Bundles.T_AbelianGroup_990 -> AgdaAny
d_ε'8315''185''8776'ε_150 ~v0 ~v1 v2
  = du_ε'8315''185''8776'ε_150 v2
du_ε'8315''185''8776'ε_150 ::
  MAlonzo.Code.Algebra.Bundles.T_AbelianGroup_990 -> AgdaAny
du_ε'8315''185''8776'ε_150 v0
  = coe
      MAlonzo.Code.Algebra.Properties.Group.du_ε'8315''185''8776'ε_184
      (coe MAlonzo.Code.Algebra.Bundles.du_group_1080 (coe v0))
-- Algebra.Properties.AbelianGroup._.⁻¹-anti-homo-∙
d_'8315''185''45'anti'45'homo'45''8729'_152 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Algebra.Bundles.T_AbelianGroup_990 ->
  AgdaAny -> AgdaAny -> AgdaAny
d_'8315''185''45'anti'45'homo'45''8729'_152 ~v0 ~v1 v2
  = du_'8315''185''45'anti'45'homo'45''8729'_152 v2
du_'8315''185''45'anti'45'homo'45''8729'_152 ::
  MAlonzo.Code.Algebra.Bundles.T_AbelianGroup_990 ->
  AgdaAny -> AgdaAny -> AgdaAny
du_'8315''185''45'anti'45'homo'45''8729'_152 v0
  = coe
      MAlonzo.Code.Algebra.Properties.Group.du_'8315''185''45'anti'45'homo'45''8729'_250
      (coe MAlonzo.Code.Algebra.Bundles.du_group_1080 (coe v0))
-- Algebra.Properties.AbelianGroup._.⁻¹-injective
d_'8315''185''45'injective_154 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Algebra.Bundles.T_AbelianGroup_990 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8315''185''45'injective_154 ~v0 ~v1 v2
  = du_'8315''185''45'injective_154 v2
du_'8315''185''45'injective_154 ::
  MAlonzo.Code.Algebra.Bundles.T_AbelianGroup_990 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_'8315''185''45'injective_154 v0
  = coe
      MAlonzo.Code.Algebra.Properties.Group.du_'8315''185''45'injective_238
      (coe MAlonzo.Code.Algebra.Bundles.du_group_1080 (coe v0))
-- Algebra.Properties.AbelianGroup._.⁻¹-involutive
d_'8315''185''45'involutive_156 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Algebra.Bundles.T_AbelianGroup_990 ->
  AgdaAny -> AgdaAny
d_'8315''185''45'involutive_156 ~v0 ~v1 v2
  = du_'8315''185''45'involutive_156 v2
du_'8315''185''45'involutive_156 ::
  MAlonzo.Code.Algebra.Bundles.T_AbelianGroup_990 ->
  AgdaAny -> AgdaAny
du_'8315''185''45'involutive_156 v0
  = coe
      MAlonzo.Code.Algebra.Properties.Group.du_'8315''185''45'involutive_230
      (coe MAlonzo.Code.Algebra.Bundles.du_group_1080 (coe v0))
-- Algebra.Properties.AbelianGroup._.∙-cancel
d_'8729''45'cancel_158 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Algebra.Bundles.T_AbelianGroup_990 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'8729''45'cancel_158 ~v0 ~v1 v2 = du_'8729''45'cancel_158 v2
du_'8729''45'cancel_158 ::
  MAlonzo.Code.Algebra.Bundles.T_AbelianGroup_990 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_'8729''45'cancel_158 v0
  = coe
      MAlonzo.Code.Algebra.Properties.Group.du_'8729''45'cancel_226
      (coe MAlonzo.Code.Algebra.Bundles.du_group_1080 (coe v0))
-- Algebra.Properties.AbelianGroup._.∙-cancelʳ
d_'8729''45'cancel'691'_160 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Algebra.Bundles.T_AbelianGroup_990 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8729''45'cancel'691'_160 ~v0 ~v1 v2
  = du_'8729''45'cancel'691'_160 v2
du_'8729''45'cancel'691'_160 ::
  MAlonzo.Code.Algebra.Bundles.T_AbelianGroup_990 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_'8729''45'cancel'691'_160 v0
  = coe
      MAlonzo.Code.Algebra.Properties.Group.du_'8729''45'cancel'691'_216
      (coe MAlonzo.Code.Algebra.Bundles.du_group_1080 (coe v0))
-- Algebra.Properties.AbelianGroup._.∙-cancelˡ
d_'8729''45'cancel'737'_162 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Algebra.Bundles.T_AbelianGroup_990 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8729''45'cancel'737'_162 ~v0 ~v1 v2
  = du_'8729''45'cancel'737'_162 v2
du_'8729''45'cancel'737'_162 ::
  MAlonzo.Code.Algebra.Bundles.T_AbelianGroup_990 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_'8729''45'cancel'737'_162 v0
  = coe
      MAlonzo.Code.Algebra.Properties.Group.du_'8729''45'cancel'737'_206
      (coe MAlonzo.Code.Algebra.Bundles.du_group_1080 (coe v0))
-- Algebra.Properties.AbelianGroup.xyx⁻¹≈y
d_xyx'8315''185''8776'y_168 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Algebra.Bundles.T_AbelianGroup_990 ->
  AgdaAny -> AgdaAny -> AgdaAny
d_xyx'8315''185''8776'y_168 ~v0 ~v1 v2 v3 v4
  = du_xyx'8315''185''8776'y_168 v2 v3 v4
du_xyx'8315''185''8776'y_168 ::
  MAlonzo.Code.Algebra.Bundles.T_AbelianGroup_990 ->
  AgdaAny -> AgdaAny -> AgdaAny
du_xyx'8315''185''8776'y_168 v0 v1 v2
  = coe
      MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.d_begin__40
      (coe
         MAlonzo.Code.Relation.Binary.Reasoning.Setoid.du_step'45''8776'_58
         (let v3
                = MAlonzo.Code.Algebra.Bundles.d_isAbelianGroup_1018 (coe v0) in
          let v4 = MAlonzo.Code.Algebra.Structures.d_isGroup_674 (coe v3) in
          let v5 = MAlonzo.Code.Algebra.Structures.d_isMonoid_594 (coe v4) in
          let v6
                = MAlonzo.Code.Algebra.Structures.d_isSemigroup_368 (coe v5) in
          coe
            MAlonzo.Code.Algebra.Structures.du_setoid_110
            (coe MAlonzo.Code.Algebra.Structures.d_isMagma_202 (coe v6)))
         (coe
            MAlonzo.Code.Algebra.Bundles.d__'8729'__1012 v0
            (coe MAlonzo.Code.Algebra.Bundles.d__'8729'__1012 v0 v1 v2)
            (coe MAlonzo.Code.Algebra.Bundles.d__'8315''185'_1016 v0 v1))
         (coe
            MAlonzo.Code.Algebra.Bundles.d__'8729'__1012 v0
            (coe MAlonzo.Code.Algebra.Bundles.d__'8729'__1012 v0 v2 v1)
            (coe MAlonzo.Code.Algebra.Bundles.d__'8315''185'_1016 v0 v1))
         v2
         (coe
            MAlonzo.Code.Relation.Binary.Reasoning.Setoid.du_step'45''8776'_58
            (let v3
                   = MAlonzo.Code.Algebra.Bundles.d_isAbelianGroup_1018 (coe v0) in
             let v4 = MAlonzo.Code.Algebra.Structures.d_isGroup_674 (coe v3) in
             let v5 = MAlonzo.Code.Algebra.Structures.d_isMonoid_594 (coe v4) in
             let v6
                   = MAlonzo.Code.Algebra.Structures.d_isSemigroup_368 (coe v5) in
             coe
               MAlonzo.Code.Algebra.Structures.du_setoid_110
               (coe MAlonzo.Code.Algebra.Structures.d_isMagma_202 (coe v6)))
            (coe
               MAlonzo.Code.Algebra.Bundles.d__'8729'__1012 v0
               (coe MAlonzo.Code.Algebra.Bundles.d__'8729'__1012 v0 v2 v1)
               (coe MAlonzo.Code.Algebra.Bundles.d__'8315''185'_1016 v0 v1))
            (coe
               MAlonzo.Code.Algebra.Bundles.d__'8729'__1012 v0 v2
               (coe
                  MAlonzo.Code.Algebra.Bundles.d__'8729'__1012 v0 v1
                  (coe MAlonzo.Code.Algebra.Bundles.d__'8315''185'_1016 v0 v1)))
            v2
            (coe
               MAlonzo.Code.Relation.Binary.Reasoning.Setoid.du_step'45''8776'_58
               (let v3
                      = MAlonzo.Code.Algebra.Bundles.d_isAbelianGroup_1018 (coe v0) in
                let v4 = MAlonzo.Code.Algebra.Structures.d_isGroup_674 (coe v3) in
                let v5 = MAlonzo.Code.Algebra.Structures.d_isMonoid_594 (coe v4) in
                let v6
                      = MAlonzo.Code.Algebra.Structures.d_isSemigroup_368 (coe v5) in
                coe
                  MAlonzo.Code.Algebra.Structures.du_setoid_110
                  (coe MAlonzo.Code.Algebra.Structures.d_isMagma_202 (coe v6)))
               (coe
                  MAlonzo.Code.Algebra.Bundles.d__'8729'__1012 v0 v2
                  (coe
                     MAlonzo.Code.Algebra.Bundles.d__'8729'__1012 v0 v1
                     (coe MAlonzo.Code.Algebra.Bundles.d__'8315''185'_1016 v0 v1)))
               (coe
                  MAlonzo.Code.Algebra.Bundles.d__'8729'__1012 v0 v2
                  (MAlonzo.Code.Algebra.Bundles.d_ε_1014 (coe v0)))
               v2
               (coe
                  MAlonzo.Code.Relation.Binary.Reasoning.Setoid.du_step'45''8776'_58
                  (let v3
                         = MAlonzo.Code.Algebra.Bundles.d_isAbelianGroup_1018 (coe v0) in
                   let v4 = MAlonzo.Code.Algebra.Structures.d_isGroup_674 (coe v3) in
                   let v5 = MAlonzo.Code.Algebra.Structures.d_isMonoid_594 (coe v4) in
                   let v6
                         = MAlonzo.Code.Algebra.Structures.d_isSemigroup_368 (coe v5) in
                   coe
                     MAlonzo.Code.Algebra.Structures.du_setoid_110
                     (coe MAlonzo.Code.Algebra.Structures.d_isMagma_202 (coe v6)))
                  (coe
                     MAlonzo.Code.Algebra.Bundles.d__'8729'__1012 v0 v2
                     (MAlonzo.Code.Algebra.Bundles.d_ε_1014 (coe v0)))
                  v2 v2
                  (coe
                     MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du__'8718'_86
                     (coe
                        MAlonzo.Code.Relation.Binary.Structures.d_refl_34
                        (coe
                           MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_60
                           (let v3
                                  = MAlonzo.Code.Algebra.Bundles.d_isAbelianGroup_1018 (coe v0) in
                            let v4 = MAlonzo.Code.Algebra.Structures.d_isGroup_674 (coe v3) in
                            let v5 = MAlonzo.Code.Algebra.Structures.d_isMonoid_594 (coe v4) in
                            let v6
                                  = MAlonzo.Code.Algebra.Structures.d_isSemigroup_368 (coe v5) in
                            coe
                              MAlonzo.Code.Algebra.Structures.du_setoid_110
                              (coe MAlonzo.Code.Algebra.Structures.d_isMagma_202 (coe v6)))))
                     (coe v2))
                  (let v3
                         = MAlonzo.Code.Algebra.Bundles.d_isAbelianGroup_1018 (coe v0) in
                   let v4 = MAlonzo.Code.Algebra.Structures.d_isGroup_674 (coe v3) in
                   coe
                     MAlonzo.Code.Algebra.Structures.du_identity'691'_400
                     (MAlonzo.Code.Algebra.Structures.d_isMonoid_594 (coe v4)) v2))
               (let v3
                      = MAlonzo.Code.Algebra.Structures.d_isGroup_674
                          (coe
                             MAlonzo.Code.Algebra.Bundles.d_isAbelianGroup_1018 (coe v0)) in
                let v4 = MAlonzo.Code.Algebra.Structures.d_isMonoid_594 (coe v3) in
                let v5
                      = MAlonzo.Code.Algebra.Structures.d_isSemigroup_368 (coe v4) in
                coe
                  MAlonzo.Code.Algebra.Structures.du_'8729''45'cong'737'_112
                  (coe MAlonzo.Code.Algebra.Structures.d_isMagma_202 (coe v5))
                  (coe v2)
                  (coe
                     MAlonzo.Code.Algebra.Bundles.d__'8729'__1012 v0 v1
                     (coe MAlonzo.Code.Algebra.Bundles.d__'8315''185'_1016 v0 v1))
                  (coe MAlonzo.Code.Algebra.Bundles.d_ε_1014 (coe v0))
                  (let v6
                         = MAlonzo.Code.Algebra.Bundles.d_isAbelianGroup_1018 (coe v0) in
                   coe
                     MAlonzo.Code.Algebra.Structures.du_inverse'691'_642
                     (MAlonzo.Code.Algebra.Structures.d_isGroup_674 (coe v6)) v1)))
            (coe
               MAlonzo.Code.Algebra.Structures.d_assoc_204
               (MAlonzo.Code.Algebra.Structures.d_isSemigroup_368
                  (coe
                     MAlonzo.Code.Algebra.Structures.d_isMonoid_594
                     (coe
                        MAlonzo.Code.Algebra.Structures.d_isGroup_674
                        (coe
                           MAlonzo.Code.Algebra.Bundles.d_isAbelianGroup_1018 (coe v0)))))
               v2 v1
               (coe MAlonzo.Code.Algebra.Bundles.d__'8315''185'_1016 v0 v1)))
         (let v3
                = MAlonzo.Code.Algebra.Structures.d_isGroup_674
                    (coe
                       MAlonzo.Code.Algebra.Bundles.d_isAbelianGroup_1018 (coe v0)) in
          let v4 = MAlonzo.Code.Algebra.Structures.d_isMonoid_594 (coe v3) in
          let v5
                = MAlonzo.Code.Algebra.Structures.d_isSemigroup_368 (coe v4) in
          coe
            MAlonzo.Code.Algebra.Structures.du_'8729''45'cong'691'_116
            (coe MAlonzo.Code.Algebra.Structures.d_isMagma_202 (coe v5))
            (coe MAlonzo.Code.Algebra.Bundles.d__'8315''185'_1016 v0 v1)
            (coe MAlonzo.Code.Algebra.Bundles.d__'8729'__1012 v0 v1 v2)
            (coe MAlonzo.Code.Algebra.Bundles.d__'8729'__1012 v0 v2 v1)
            (coe
               MAlonzo.Code.Algebra.Structures.d_comm_676
               (MAlonzo.Code.Algebra.Bundles.d_isAbelianGroup_1018 (coe v0)) v1
               v2)))
-- Algebra.Properties.AbelianGroup.⁻¹-∙-comm
d_'8315''185''45''8729''45'comm_178 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Algebra.Bundles.T_AbelianGroup_990 ->
  AgdaAny -> AgdaAny -> AgdaAny
d_'8315''185''45''8729''45'comm_178 ~v0 ~v1 v2 v3 v4
  = du_'8315''185''45''8729''45'comm_178 v2 v3 v4
du_'8315''185''45''8729''45'comm_178 ::
  MAlonzo.Code.Algebra.Bundles.T_AbelianGroup_990 ->
  AgdaAny -> AgdaAny -> AgdaAny
du_'8315''185''45''8729''45'comm_178 v0 v1 v2
  = coe
      MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.d_begin__40
      (coe
         MAlonzo.Code.Relation.Binary.Reasoning.Setoid.du_step'45''8776''728'_66
         (let v3
                = MAlonzo.Code.Algebra.Bundles.d_isAbelianGroup_1018 (coe v0) in
          let v4 = MAlonzo.Code.Algebra.Structures.d_isGroup_674 (coe v3) in
          let v5 = MAlonzo.Code.Algebra.Structures.d_isMonoid_594 (coe v4) in
          let v6
                = MAlonzo.Code.Algebra.Structures.d_isSemigroup_368 (coe v5) in
          coe
            MAlonzo.Code.Algebra.Structures.du_setoid_110
            (coe MAlonzo.Code.Algebra.Structures.d_isMagma_202 (coe v6)))
         (coe
            MAlonzo.Code.Algebra.Bundles.d__'8729'__1012 v0
            (coe MAlonzo.Code.Algebra.Bundles.d__'8315''185'_1016 v0 v1)
            (coe MAlonzo.Code.Algebra.Bundles.d__'8315''185'_1016 v0 v2))
         (coe
            MAlonzo.Code.Algebra.Bundles.d__'8315''185'_1016 v0
            (coe MAlonzo.Code.Algebra.Bundles.d__'8729'__1012 v0 v2 v1))
         (coe
            MAlonzo.Code.Algebra.Bundles.d__'8315''185'_1016 v0
            (coe MAlonzo.Code.Algebra.Bundles.d__'8729'__1012 v0 v1 v2))
         (coe
            MAlonzo.Code.Relation.Binary.Reasoning.Setoid.du_step'45''8776'_58
            (let v3
                   = MAlonzo.Code.Algebra.Bundles.d_isAbelianGroup_1018 (coe v0) in
             let v4 = MAlonzo.Code.Algebra.Structures.d_isGroup_674 (coe v3) in
             let v5 = MAlonzo.Code.Algebra.Structures.d_isMonoid_594 (coe v4) in
             let v6
                   = MAlonzo.Code.Algebra.Structures.d_isSemigroup_368 (coe v5) in
             coe
               MAlonzo.Code.Algebra.Structures.du_setoid_110
               (coe MAlonzo.Code.Algebra.Structures.d_isMagma_202 (coe v6)))
            (coe
               MAlonzo.Code.Algebra.Bundles.d__'8315''185'_1016 v0
               (coe MAlonzo.Code.Algebra.Bundles.d__'8729'__1012 v0 v2 v1))
            (coe
               MAlonzo.Code.Algebra.Bundles.d__'8315''185'_1016 v0
               (coe MAlonzo.Code.Algebra.Bundles.d__'8729'__1012 v0 v1 v2))
            (coe
               MAlonzo.Code.Algebra.Bundles.d__'8315''185'_1016 v0
               (coe MAlonzo.Code.Algebra.Bundles.d__'8729'__1012 v0 v1 v2))
            (coe
               MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du__'8718'_86
               (coe
                  MAlonzo.Code.Relation.Binary.Structures.d_refl_34
                  (coe
                     MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_60
                     (let v3
                            = MAlonzo.Code.Algebra.Bundles.d_isAbelianGroup_1018 (coe v0) in
                      let v4 = MAlonzo.Code.Algebra.Structures.d_isGroup_674 (coe v3) in
                      let v5 = MAlonzo.Code.Algebra.Structures.d_isMonoid_594 (coe v4) in
                      let v6
                            = MAlonzo.Code.Algebra.Structures.d_isSemigroup_368 (coe v5) in
                      coe
                        MAlonzo.Code.Algebra.Structures.du_setoid_110
                        (coe MAlonzo.Code.Algebra.Structures.d_isMagma_202 (coe v6)))))
               (coe
                  MAlonzo.Code.Algebra.Bundles.d__'8315''185'_1016 v0
                  (coe MAlonzo.Code.Algebra.Bundles.d__'8729'__1012 v0 v1 v2)))
            (coe
               MAlonzo.Code.Algebra.Structures.d_'8315''185''45'cong_598
               (MAlonzo.Code.Algebra.Structures.d_isGroup_674
                  (coe MAlonzo.Code.Algebra.Bundles.d_isAbelianGroup_1018 (coe v0)))
               (coe MAlonzo.Code.Algebra.Bundles.d__'8729'__1012 v0 v2 v1)
               (coe MAlonzo.Code.Algebra.Bundles.d__'8729'__1012 v0 v1 v2)
               (coe
                  MAlonzo.Code.Algebra.Structures.d_comm_676
                  (MAlonzo.Code.Algebra.Bundles.d_isAbelianGroup_1018 (coe v0)) v2
                  v1)))
         (coe
            MAlonzo.Code.Algebra.Properties.Group.du_'8315''185''45'anti'45'homo'45''8729'_250
            (coe MAlonzo.Code.Algebra.Bundles.du_group_1080 (coe v0)) (coe v2)
            (coe v1)))
