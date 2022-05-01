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

module MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing where

import MAlonzo.RTE (coe, erased, AgdaAny, addInt, subInt, mulInt,
                    quotInt, remInt, geqInt, ltInt, eqInt, add64, sub64, mul64, quot64,
                    rem64, lt64, eq64, word64FromNat, word64ToNat)
import qualified MAlonzo.RTE
import qualified Data.Text
import qualified MAlonzo.Code.Agda.Builtin.Equality
import qualified MAlonzo.Code.Agda.Builtin.Sigma
import qualified MAlonzo.Code.Agda.Primitive
import qualified MAlonzo.Code.Algebra.Bundles
import qualified MAlonzo.Code.Algebra.Properties.AbelianGroup
import qualified MAlonzo.Code.Algebra.Properties.Ring
import qualified MAlonzo.Code.Algebra.Structures
import qualified MAlonzo.Code.Relation.Binary.Bundles
import qualified MAlonzo.Code.Relation.Binary.Structures

-- Algebra.Solver.Ring.AlmostCommutativeRing.IsAlmostCommutativeRing
d_IsAlmostCommutativeRing_26 a0 a1 a2 a3 a4 a5 a6 a7 a8 = ()
data T_IsAlmostCommutativeRing_26
  = C_IsAlmostCommutativeRing'46'constructor_587 MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemiring_1344
                                                 (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny)
                                                 (AgdaAny -> AgdaAny -> AgdaAny)
                                                 (AgdaAny -> AgdaAny -> AgdaAny)
-- Algebra.Solver.Ring.AlmostCommutativeRing.IsAlmostCommutativeRing.isCommutativeSemiring
d_isCommutativeSemiring_62 ::
  T_IsAlmostCommutativeRing_26 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemiring_1344
d_isCommutativeSemiring_62 v0
  = case coe v0 of
      C_IsAlmostCommutativeRing'46'constructor_587 v1 v2 v3 v4 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Algebra.Solver.Ring.AlmostCommutativeRing.IsAlmostCommutativeRing.-‿cong
d_'45''8255'cong_64 ::
  T_IsAlmostCommutativeRing_26 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'45''8255'cong_64 v0
  = case coe v0 of
      C_IsAlmostCommutativeRing'46'constructor_587 v1 v2 v3 v4 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Algebra.Solver.Ring.AlmostCommutativeRing.IsAlmostCommutativeRing.-‿*-distribˡ
d_'45''8255''42''45'distrib'737'_70 ::
  T_IsAlmostCommutativeRing_26 -> AgdaAny -> AgdaAny -> AgdaAny
d_'45''8255''42''45'distrib'737'_70 v0
  = case coe v0 of
      C_IsAlmostCommutativeRing'46'constructor_587 v1 v2 v3 v4 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Algebra.Solver.Ring.AlmostCommutativeRing.IsAlmostCommutativeRing.-‿+-comm
d_'45''8255''43''45'comm_76 ::
  T_IsAlmostCommutativeRing_26 -> AgdaAny -> AgdaAny -> AgdaAny
d_'45''8255''43''45'comm_76 v0
  = case coe v0 of
      C_IsAlmostCommutativeRing'46'constructor_587 v1 v2 v3 v4 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Algebra.Solver.Ring.AlmostCommutativeRing.IsAlmostCommutativeRing._.assoc
d_assoc_80 ::
  T_IsAlmostCommutativeRing_26 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_assoc_80 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_assoc_204
      (coe
         MAlonzo.Code.Algebra.Structures.d_isSemigroup_368
         (coe
            MAlonzo.Code.Algebra.Structures.d_'42''45'isMonoid_1160
            (coe
               MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1252
               (coe
                  MAlonzo.Code.Algebra.Structures.d_isSemiring_1358
                  (coe d_isCommutativeSemiring_62 (coe v0))))))
-- Algebra.Solver.Ring.AlmostCommutativeRing.IsAlmostCommutativeRing._.*-comm
d_'42''45'comm_82 ::
  T_IsAlmostCommutativeRing_26 -> AgdaAny -> AgdaAny -> AgdaAny
d_'42''45'comm_82 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_'42''45'comm_1360
      (coe d_isCommutativeSemiring_62 (coe v0))
-- Algebra.Solver.Ring.AlmostCommutativeRing.IsAlmostCommutativeRing._.∙-cong
d_'8729''45'cong_84 ::
  T_IsAlmostCommutativeRing_26 ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8729''45'cong_84 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_'8729''45'cong_96
      (coe
         MAlonzo.Code.Algebra.Structures.d_isMagma_202
         (coe
            MAlonzo.Code.Algebra.Structures.d_isSemigroup_368
            (coe
               MAlonzo.Code.Algebra.Structures.d_'42''45'isMonoid_1160
               (coe
                  MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1252
                  (coe
                     MAlonzo.Code.Algebra.Structures.d_isSemiring_1358
                     (coe d_isCommutativeSemiring_62 (coe v0)))))))
-- Algebra.Solver.Ring.AlmostCommutativeRing.IsAlmostCommutativeRing._.∙-congʳ
d_'8729''45'cong'691'_86 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  T_IsAlmostCommutativeRing_26 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8729''45'cong'691'_86 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 v9
  = du_'8729''45'cong'691'_86 v9
du_'8729''45'cong'691'_86 ::
  T_IsAlmostCommutativeRing_26 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_'8729''45'cong'691'_86 v0
  = let v1 = d_isCommutativeSemiring_62 (coe v0) in
    let v2
          = MAlonzo.Code.Algebra.Structures.d_isSemiring_1358 (coe v1) in
    let v3
          = MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1252
              (coe v2) in
    let v4
          = MAlonzo.Code.Algebra.Structures.d_'42''45'isMonoid_1160
              (coe v3) in
    let v5
          = MAlonzo.Code.Algebra.Structures.d_isSemigroup_368 (coe v4) in
    coe
      MAlonzo.Code.Algebra.Structures.du_'8729''45'cong'691'_116
      (coe MAlonzo.Code.Algebra.Structures.d_isMagma_202 (coe v5))
-- Algebra.Solver.Ring.AlmostCommutativeRing.IsAlmostCommutativeRing._.∙-congˡ
d_'8729''45'cong'737'_88 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  T_IsAlmostCommutativeRing_26 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8729''45'cong'737'_88 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 v9
  = du_'8729''45'cong'737'_88 v9
du_'8729''45'cong'737'_88 ::
  T_IsAlmostCommutativeRing_26 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_'8729''45'cong'737'_88 v0
  = let v1 = d_isCommutativeSemiring_62 (coe v0) in
    let v2
          = MAlonzo.Code.Algebra.Structures.d_isSemiring_1358 (coe v1) in
    let v3
          = MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1252
              (coe v2) in
    let v4
          = MAlonzo.Code.Algebra.Structures.d_'42''45'isMonoid_1160
              (coe v3) in
    let v5
          = MAlonzo.Code.Algebra.Structures.d_isSemigroup_368 (coe v4) in
    coe
      MAlonzo.Code.Algebra.Structures.du_'8729''45'cong'737'_112
      (coe MAlonzo.Code.Algebra.Structures.d_isMagma_202 (coe v5))
-- Algebra.Solver.Ring.AlmostCommutativeRing.IsAlmostCommutativeRing._.identity
d_identity_90 ::
  T_IsAlmostCommutativeRing_26 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_identity_90 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_identity_370
      (coe
         MAlonzo.Code.Algebra.Structures.d_'42''45'isMonoid_1160
         (coe
            MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1252
            (coe
               MAlonzo.Code.Algebra.Structures.d_isSemiring_1358
               (coe d_isCommutativeSemiring_62 (coe v0)))))
-- Algebra.Solver.Ring.AlmostCommutativeRing.IsAlmostCommutativeRing._.identityʳ
d_identity'691'_92 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny -> T_IsAlmostCommutativeRing_26 -> AgdaAny -> AgdaAny
d_identity'691'_92 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 v9
  = du_identity'691'_92 v9
du_identity'691'_92 ::
  T_IsAlmostCommutativeRing_26 -> AgdaAny -> AgdaAny
du_identity'691'_92 v0
  = let v1 = d_isCommutativeSemiring_62 (coe v0) in
    let v2
          = MAlonzo.Code.Algebra.Structures.d_isSemiring_1358 (coe v1) in
    let v3
          = MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1252
              (coe v2) in
    coe
      MAlonzo.Code.Algebra.Structures.du_identity'691'_400
      (coe
         MAlonzo.Code.Algebra.Structures.d_'42''45'isMonoid_1160 (coe v3))
-- Algebra.Solver.Ring.AlmostCommutativeRing.IsAlmostCommutativeRing._.identityˡ
d_identity'737'_94 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny -> T_IsAlmostCommutativeRing_26 -> AgdaAny -> AgdaAny
d_identity'737'_94 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 v9
  = du_identity'737'_94 v9
du_identity'737'_94 ::
  T_IsAlmostCommutativeRing_26 -> AgdaAny -> AgdaAny
du_identity'737'_94 v0
  = let v1 = d_isCommutativeSemiring_62 (coe v0) in
    let v2
          = MAlonzo.Code.Algebra.Structures.d_isSemiring_1358 (coe v1) in
    let v3
          = MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1252
              (coe v2) in
    coe
      MAlonzo.Code.Algebra.Structures.du_identity'737'_398
      (coe
         MAlonzo.Code.Algebra.Structures.d_'42''45'isMonoid_1160 (coe v3))
-- Algebra.Solver.Ring.AlmostCommutativeRing.IsAlmostCommutativeRing._.isCommutativeMagma
d_isCommutativeMagma_96 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  T_IsAlmostCommutativeRing_26 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMagma_122
d_isCommutativeMagma_96 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 v9
  = du_isCommutativeMagma_96 v9
du_isCommutativeMagma_96 ::
  T_IsAlmostCommutativeRing_26 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMagma_122
du_isCommutativeMagma_96 v0
  = let v1 = d_isCommutativeSemiring_62 (coe v0) in
    let v2
          = coe
              MAlonzo.Code.Algebra.Structures.du_isCommutativeSemiringWithoutOne_1444
              (coe v1) in
    coe
      MAlonzo.Code.Algebra.Structures.du_isCommutativeMagma_308
      (coe
         MAlonzo.Code.Algebra.Structures.du_'42''45'isCommutativeSemigroup_1128
         (coe v2))
-- Algebra.Solver.Ring.AlmostCommutativeRing.IsAlmostCommutativeRing._.*-isCommutativeMonoid
d_'42''45'isCommutativeMonoid_98 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  T_IsAlmostCommutativeRing_26 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMonoid_406
d_'42''45'isCommutativeMonoid_98 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7
                                 ~v8 v9
  = du_'42''45'isCommutativeMonoid_98 v9
du_'42''45'isCommutativeMonoid_98 ::
  T_IsAlmostCommutativeRing_26 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMonoid_406
du_'42''45'isCommutativeMonoid_98 v0
  = coe
      MAlonzo.Code.Algebra.Structures.du_'42''45'isCommutativeMonoid_1452
      (coe d_isCommutativeSemiring_62 (coe v0))
-- Algebra.Solver.Ring.AlmostCommutativeRing.IsAlmostCommutativeRing._.*-isCommutativeSemigroup
d_'42''45'isCommutativeSemigroup_100 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  T_IsAlmostCommutativeRing_26 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemigroup_270
d_'42''45'isCommutativeSemigroup_100 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6
                                     ~v7 ~v8 v9
  = du_'42''45'isCommutativeSemigroup_100 v9
du_'42''45'isCommutativeSemigroup_100 ::
  T_IsAlmostCommutativeRing_26 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemigroup_270
du_'42''45'isCommutativeSemigroup_100 v0
  = let v1 = d_isCommutativeSemiring_62 (coe v0) in
    coe
      MAlonzo.Code.Algebra.Structures.du_'42''45'isCommutativeSemigroup_1128
      (coe
         MAlonzo.Code.Algebra.Structures.du_isCommutativeSemiringWithoutOne_1444
         (coe v1))
-- Algebra.Solver.Ring.AlmostCommutativeRing.IsAlmostCommutativeRing._.isMagma
d_isMagma_102 ::
  T_IsAlmostCommutativeRing_26 ->
  MAlonzo.Code.Algebra.Structures.T_IsMagma_86
d_isMagma_102 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isMagma_202
      (coe
         MAlonzo.Code.Algebra.Structures.d_isSemigroup_368
         (coe
            MAlonzo.Code.Algebra.Structures.d_'42''45'isMonoid_1160
            (coe
               MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1252
               (coe
                  MAlonzo.Code.Algebra.Structures.d_isSemiring_1358
                  (coe d_isCommutativeSemiring_62 (coe v0))))))
-- Algebra.Solver.Ring.AlmostCommutativeRing.IsAlmostCommutativeRing._.*-isMonoid
d_'42''45'isMonoid_104 ::
  T_IsAlmostCommutativeRing_26 ->
  MAlonzo.Code.Algebra.Structures.T_IsMonoid_358
d_'42''45'isMonoid_104 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_'42''45'isMonoid_1160
      (coe
         MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1252
         (coe
            MAlonzo.Code.Algebra.Structures.d_isSemiring_1358
            (coe d_isCommutativeSemiring_62 (coe v0))))
-- Algebra.Solver.Ring.AlmostCommutativeRing.IsAlmostCommutativeRing._.isSemigroup
d_isSemigroup_106 ::
  T_IsAlmostCommutativeRing_26 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemigroup_194
d_isSemigroup_106 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isSemigroup_368
      (coe
         MAlonzo.Code.Algebra.Structures.d_'42''45'isMonoid_1160
         (coe
            MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1252
            (coe
               MAlonzo.Code.Algebra.Structures.d_isSemiring_1358
               (coe d_isCommutativeSemiring_62 (coe v0)))))
-- Algebra.Solver.Ring.AlmostCommutativeRing.IsAlmostCommutativeRing._.assoc
d_assoc_108 ::
  T_IsAlmostCommutativeRing_26 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_assoc_108 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_assoc_204
      (coe
         MAlonzo.Code.Algebra.Structures.d_isSemigroup_368
         (coe
            MAlonzo.Code.Algebra.Structures.d_isMonoid_416
            (coe
               MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_1158
               (coe
                  MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1252
                  (coe
                     MAlonzo.Code.Algebra.Structures.d_isSemiring_1358
                     (coe d_isCommutativeSemiring_62 (coe v0)))))))
-- Algebra.Solver.Ring.AlmostCommutativeRing.IsAlmostCommutativeRing._.comm
d_comm_110 ::
  T_IsAlmostCommutativeRing_26 -> AgdaAny -> AgdaAny -> AgdaAny
d_comm_110 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_comm_418
      (coe
         MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_1158
         (coe
            MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1252
            (coe
               MAlonzo.Code.Algebra.Structures.d_isSemiring_1358
               (coe d_isCommutativeSemiring_62 (coe v0)))))
-- Algebra.Solver.Ring.AlmostCommutativeRing.IsAlmostCommutativeRing._.∙-cong
d_'8729''45'cong_112 ::
  T_IsAlmostCommutativeRing_26 ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8729''45'cong_112 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_'8729''45'cong_96
      (coe
         MAlonzo.Code.Algebra.Structures.d_isMagma_202
         (coe
            MAlonzo.Code.Algebra.Structures.d_isSemigroup_368
            (coe
               MAlonzo.Code.Algebra.Structures.d_isMonoid_416
               (coe
                  MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_1158
                  (coe
                     MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1252
                     (coe
                        MAlonzo.Code.Algebra.Structures.d_isSemiring_1358
                        (coe d_isCommutativeSemiring_62 (coe v0))))))))
-- Algebra.Solver.Ring.AlmostCommutativeRing.IsAlmostCommutativeRing._.∙-congʳ
d_'8729''45'cong'691'_114 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  T_IsAlmostCommutativeRing_26 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8729''45'cong'691'_114 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 v9
  = du_'8729''45'cong'691'_114 v9
du_'8729''45'cong'691'_114 ::
  T_IsAlmostCommutativeRing_26 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_'8729''45'cong'691'_114 v0
  = let v1 = d_isCommutativeSemiring_62 (coe v0) in
    let v2
          = MAlonzo.Code.Algebra.Structures.d_isSemiring_1358 (coe v1) in
    let v3
          = MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1252
              (coe v2) in
    let v4
          = MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_1158
              (coe v3) in
    let v5 = MAlonzo.Code.Algebra.Structures.d_isMonoid_416 (coe v4) in
    let v6
          = MAlonzo.Code.Algebra.Structures.d_isSemigroup_368 (coe v5) in
    coe
      MAlonzo.Code.Algebra.Structures.du_'8729''45'cong'691'_116
      (coe MAlonzo.Code.Algebra.Structures.d_isMagma_202 (coe v6))
-- Algebra.Solver.Ring.AlmostCommutativeRing.IsAlmostCommutativeRing._.∙-congˡ
d_'8729''45'cong'737'_116 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  T_IsAlmostCommutativeRing_26 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8729''45'cong'737'_116 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 v9
  = du_'8729''45'cong'737'_116 v9
du_'8729''45'cong'737'_116 ::
  T_IsAlmostCommutativeRing_26 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_'8729''45'cong'737'_116 v0
  = let v1 = d_isCommutativeSemiring_62 (coe v0) in
    let v2
          = MAlonzo.Code.Algebra.Structures.d_isSemiring_1358 (coe v1) in
    let v3
          = MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1252
              (coe v2) in
    let v4
          = MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_1158
              (coe v3) in
    let v5 = MAlonzo.Code.Algebra.Structures.d_isMonoid_416 (coe v4) in
    let v6
          = MAlonzo.Code.Algebra.Structures.d_isSemigroup_368 (coe v5) in
    coe
      MAlonzo.Code.Algebra.Structures.du_'8729''45'cong'737'_112
      (coe MAlonzo.Code.Algebra.Structures.d_isMagma_202 (coe v6))
-- Algebra.Solver.Ring.AlmostCommutativeRing.IsAlmostCommutativeRing._.identity
d_identity_118 ::
  T_IsAlmostCommutativeRing_26 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_identity_118 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_identity_370
      (coe
         MAlonzo.Code.Algebra.Structures.d_isMonoid_416
         (coe
            MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_1158
            (coe
               MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1252
               (coe
                  MAlonzo.Code.Algebra.Structures.d_isSemiring_1358
                  (coe d_isCommutativeSemiring_62 (coe v0))))))
-- Algebra.Solver.Ring.AlmostCommutativeRing.IsAlmostCommutativeRing._.identityʳ
d_identity'691'_120 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny -> T_IsAlmostCommutativeRing_26 -> AgdaAny -> AgdaAny
d_identity'691'_120 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 v9
  = du_identity'691'_120 v9
du_identity'691'_120 ::
  T_IsAlmostCommutativeRing_26 -> AgdaAny -> AgdaAny
du_identity'691'_120 v0
  = let v1 = d_isCommutativeSemiring_62 (coe v0) in
    let v2
          = MAlonzo.Code.Algebra.Structures.d_isSemiring_1358 (coe v1) in
    let v3
          = MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1252
              (coe v2) in
    let v4
          = MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_1158
              (coe v3) in
    coe
      MAlonzo.Code.Algebra.Structures.du_identity'691'_400
      (coe MAlonzo.Code.Algebra.Structures.d_isMonoid_416 (coe v4))
-- Algebra.Solver.Ring.AlmostCommutativeRing.IsAlmostCommutativeRing._.identityˡ
d_identity'737'_122 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny -> T_IsAlmostCommutativeRing_26 -> AgdaAny -> AgdaAny
d_identity'737'_122 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 v9
  = du_identity'737'_122 v9
du_identity'737'_122 ::
  T_IsAlmostCommutativeRing_26 -> AgdaAny -> AgdaAny
du_identity'737'_122 v0
  = let v1 = d_isCommutativeSemiring_62 (coe v0) in
    let v2
          = MAlonzo.Code.Algebra.Structures.d_isSemiring_1358 (coe v1) in
    let v3
          = MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1252
              (coe v2) in
    let v4
          = MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_1158
              (coe v3) in
    coe
      MAlonzo.Code.Algebra.Structures.du_identity'737'_398
      (coe MAlonzo.Code.Algebra.Structures.d_isMonoid_416 (coe v4))
-- Algebra.Solver.Ring.AlmostCommutativeRing.IsAlmostCommutativeRing._.isCommutativeMagma
d_isCommutativeMagma_124 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  T_IsAlmostCommutativeRing_26 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMagma_122
d_isCommutativeMagma_124 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 v9
  = du_isCommutativeMagma_124 v9
du_isCommutativeMagma_124 ::
  T_IsAlmostCommutativeRing_26 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMagma_122
du_isCommutativeMagma_124 v0
  = let v1 = d_isCommutativeSemiring_62 (coe v0) in
    let v2
          = MAlonzo.Code.Algebra.Structures.d_isSemiring_1358 (coe v1) in
    let v3
          = MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1252
              (coe v2) in
    let v4
          = MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_1158
              (coe v3) in
    coe
      MAlonzo.Code.Algebra.Structures.du_isCommutativeMagma_308
      (coe
         MAlonzo.Code.Algebra.Structures.du_isCommutativeSemigroup_454
         (coe v4))
-- Algebra.Solver.Ring.AlmostCommutativeRing.IsAlmostCommutativeRing._.+-isCommutativeMonoid
d_'43''45'isCommutativeMonoid_126 ::
  T_IsAlmostCommutativeRing_26 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMonoid_406
d_'43''45'isCommutativeMonoid_126 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_1158
      (coe
         MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1252
         (coe
            MAlonzo.Code.Algebra.Structures.d_isSemiring_1358
            (coe d_isCommutativeSemiring_62 (coe v0))))
-- Algebra.Solver.Ring.AlmostCommutativeRing.IsAlmostCommutativeRing._.isCommutativeSemigroup
d_isCommutativeSemigroup_128 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  T_IsAlmostCommutativeRing_26 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemigroup_270
d_isCommutativeSemigroup_128 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 v9
  = du_isCommutativeSemigroup_128 v9
du_isCommutativeSemigroup_128 ::
  T_IsAlmostCommutativeRing_26 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemigroup_270
du_isCommutativeSemigroup_128 v0
  = let v1 = d_isCommutativeSemiring_62 (coe v0) in
    let v2
          = MAlonzo.Code.Algebra.Structures.d_isSemiring_1358 (coe v1) in
    let v3
          = MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1252
              (coe v2) in
    coe
      MAlonzo.Code.Algebra.Structures.du_isCommutativeSemigroup_454
      (coe
         MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_1158
         (coe v3))
-- Algebra.Solver.Ring.AlmostCommutativeRing.IsAlmostCommutativeRing._.isMagma
d_isMagma_130 ::
  T_IsAlmostCommutativeRing_26 ->
  MAlonzo.Code.Algebra.Structures.T_IsMagma_86
d_isMagma_130 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isMagma_202
      (coe
         MAlonzo.Code.Algebra.Structures.d_isSemigroup_368
         (coe
            MAlonzo.Code.Algebra.Structures.d_isMonoid_416
            (coe
               MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_1158
               (coe
                  MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1252
                  (coe
                     MAlonzo.Code.Algebra.Structures.d_isSemiring_1358
                     (coe d_isCommutativeSemiring_62 (coe v0)))))))
-- Algebra.Solver.Ring.AlmostCommutativeRing.IsAlmostCommutativeRing._.isMonoid
d_isMonoid_132 ::
  T_IsAlmostCommutativeRing_26 ->
  MAlonzo.Code.Algebra.Structures.T_IsMonoid_358
d_isMonoid_132 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isMonoid_416
      (coe
         MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_1158
         (coe
            MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1252
            (coe
               MAlonzo.Code.Algebra.Structures.d_isSemiring_1358
               (coe d_isCommutativeSemiring_62 (coe v0)))))
-- Algebra.Solver.Ring.AlmostCommutativeRing.IsAlmostCommutativeRing._.isSemigroup
d_isSemigroup_134 ::
  T_IsAlmostCommutativeRing_26 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemigroup_194
d_isSemigroup_134 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isSemigroup_368
      (coe
         MAlonzo.Code.Algebra.Structures.d_isMonoid_416
         (coe
            MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_1158
            (coe
               MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1252
               (coe
                  MAlonzo.Code.Algebra.Structures.d_isSemiring_1358
                  (coe d_isCommutativeSemiring_62 (coe v0))))))
-- Algebra.Solver.Ring.AlmostCommutativeRing.IsAlmostCommutativeRing._.distrib
d_distrib_136 ::
  T_IsAlmostCommutativeRing_26 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_distrib_136 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_distrib_1162
      (coe
         MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1252
         (coe
            MAlonzo.Code.Algebra.Structures.d_isSemiring_1358
            (coe d_isCommutativeSemiring_62 (coe v0))))
-- Algebra.Solver.Ring.AlmostCommutativeRing.IsAlmostCommutativeRing._.distribʳ
d_distrib'691'_138 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  T_IsAlmostCommutativeRing_26 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_distrib'691'_138 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 v9
  = du_distrib'691'_138 v9
du_distrib'691'_138 ::
  T_IsAlmostCommutativeRing_26 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_distrib'691'_138 v0
  = let v1 = d_isCommutativeSemiring_62 (coe v0) in
    let v2
          = MAlonzo.Code.Algebra.Structures.d_isSemiring_1358 (coe v1) in
    coe
      MAlonzo.Code.Algebra.Structures.du_distrib'691'_1166
      (coe
         MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1252
         (coe v2))
-- Algebra.Solver.Ring.AlmostCommutativeRing.IsAlmostCommutativeRing._.distribˡ
d_distrib'737'_140 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  T_IsAlmostCommutativeRing_26 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_distrib'737'_140 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 v9
  = du_distrib'737'_140 v9
du_distrib'737'_140 ::
  T_IsAlmostCommutativeRing_26 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_distrib'737'_140 v0
  = let v1 = d_isCommutativeSemiring_62 (coe v0) in
    let v2
          = MAlonzo.Code.Algebra.Structures.d_isSemiring_1358 (coe v1) in
    coe
      MAlonzo.Code.Algebra.Structures.du_distrib'737'_1164
      (coe
         MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1252
         (coe v2))
-- Algebra.Solver.Ring.AlmostCommutativeRing.IsAlmostCommutativeRing._.isCommutativeSemiringWithoutOne
d_isCommutativeSemiringWithoutOne_142 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  T_IsAlmostCommutativeRing_26 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemiringWithoutOne_1044
d_isCommutativeSemiringWithoutOne_142 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6
                                      ~v7 ~v8 v9
  = du_isCommutativeSemiringWithoutOne_142 v9
du_isCommutativeSemiringWithoutOne_142 ::
  T_IsAlmostCommutativeRing_26 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemiringWithoutOne_1044
du_isCommutativeSemiringWithoutOne_142 v0
  = coe
      MAlonzo.Code.Algebra.Structures.du_isCommutativeSemiringWithoutOne_1444
      (coe d_isCommutativeSemiring_62 (coe v0))
-- Algebra.Solver.Ring.AlmostCommutativeRing.IsAlmostCommutativeRing._.isEquivalence
d_isEquivalence_144 ::
  T_IsAlmostCommutativeRing_26 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsEquivalence_26
d_isEquivalence_144 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isEquivalence_94
      (coe
         MAlonzo.Code.Algebra.Structures.d_isMagma_202
         (coe
            MAlonzo.Code.Algebra.Structures.d_isSemigroup_368
            (coe
               MAlonzo.Code.Algebra.Structures.d_isMonoid_416
               (coe
                  MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_1158
                  (coe
                     MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1252
                     (coe
                        MAlonzo.Code.Algebra.Structures.d_isSemiring_1358
                        (coe d_isCommutativeSemiring_62 (coe v0))))))))
-- Algebra.Solver.Ring.AlmostCommutativeRing.IsAlmostCommutativeRing._.isNearSemiring
d_isNearSemiring_146 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  T_IsAlmostCommutativeRing_26 ->
  MAlonzo.Code.Algebra.Structures.T_IsNearSemiring_876
d_isNearSemiring_146 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 v9
  = du_isNearSemiring_146 v9
du_isNearSemiring_146 ::
  T_IsAlmostCommutativeRing_26 ->
  MAlonzo.Code.Algebra.Structures.T_IsNearSemiring_876
du_isNearSemiring_146 v0
  = let v1 = d_isCommutativeSemiring_62 (coe v0) in
    let v2
          = MAlonzo.Code.Algebra.Structures.d_isSemiring_1358 (coe v1) in
    coe
      MAlonzo.Code.Algebra.Structures.du_isNearSemiring_990
      (coe
         MAlonzo.Code.Algebra.Structures.du_isSemiringWithoutOne_1326
         (coe v2))
-- Algebra.Solver.Ring.AlmostCommutativeRing.IsAlmostCommutativeRing._.isPartialEquivalence
d_isPartialEquivalence_148 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  T_IsAlmostCommutativeRing_26 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialEquivalence_16
d_isPartialEquivalence_148 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 v9
  = du_isPartialEquivalence_148 v9
du_isPartialEquivalence_148 ::
  T_IsAlmostCommutativeRing_26 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialEquivalence_16
du_isPartialEquivalence_148 v0
  = let v1 = d_isCommutativeSemiring_62 (coe v0) in
    let v2
          = MAlonzo.Code.Algebra.Structures.d_isSemiring_1358 (coe v1) in
    let v3
          = MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1252
              (coe v2) in
    let v4
          = MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_1158
              (coe v3) in
    let v5 = MAlonzo.Code.Algebra.Structures.d_isMonoid_416 (coe v4) in
    let v6
          = MAlonzo.Code.Algebra.Structures.d_isSemigroup_368 (coe v5) in
    let v7 = MAlonzo.Code.Algebra.Structures.d_isMagma_202 (coe v6) in
    coe
      MAlonzo.Code.Relation.Binary.Structures.du_isPartialEquivalence_42
      (coe MAlonzo.Code.Algebra.Structures.d_isEquivalence_94 (coe v7))
-- Algebra.Solver.Ring.AlmostCommutativeRing.IsAlmostCommutativeRing._.isSemiring
d_isSemiring_150 ::
  T_IsAlmostCommutativeRing_26 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemiring_1238
d_isSemiring_150 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isSemiring_1358
      (coe d_isCommutativeSemiring_62 (coe v0))
-- Algebra.Solver.Ring.AlmostCommutativeRing.IsAlmostCommutativeRing._.isSemiringWithoutAnnihilatingZero
d_isSemiringWithoutAnnihilatingZero_152 ::
  T_IsAlmostCommutativeRing_26 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemiringWithoutAnnihilatingZero_1142
d_isSemiringWithoutAnnihilatingZero_152 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1252
      (coe
         MAlonzo.Code.Algebra.Structures.d_isSemiring_1358
         (coe d_isCommutativeSemiring_62 (coe v0)))
-- Algebra.Solver.Ring.AlmostCommutativeRing.IsAlmostCommutativeRing._.isSemiringWithoutOne
d_isSemiringWithoutOne_154 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  T_IsAlmostCommutativeRing_26 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemiringWithoutOne_952
d_isSemiringWithoutOne_154 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 v9
  = du_isSemiringWithoutOne_154 v9
du_isSemiringWithoutOne_154 ::
  T_IsAlmostCommutativeRing_26 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemiringWithoutOne_952
du_isSemiringWithoutOne_154 v0
  = let v1 = d_isCommutativeSemiring_62 (coe v0) in
    coe
      MAlonzo.Code.Algebra.Structures.du_isSemiringWithoutOne_1326
      (coe MAlonzo.Code.Algebra.Structures.d_isSemiring_1358 (coe v1))
-- Algebra.Solver.Ring.AlmostCommutativeRing.IsAlmostCommutativeRing._.refl
d_refl_156 :: T_IsAlmostCommutativeRing_26 -> AgdaAny -> AgdaAny
d_refl_156 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d_refl_34
      (coe
         MAlonzo.Code.Algebra.Structures.d_isEquivalence_94
         (coe
            MAlonzo.Code.Algebra.Structures.d_isMagma_202
            (coe
               MAlonzo.Code.Algebra.Structures.d_isSemigroup_368
               (coe
                  MAlonzo.Code.Algebra.Structures.d_isMonoid_416
                  (coe
                     MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_1158
                     (coe
                        MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1252
                        (coe
                           MAlonzo.Code.Algebra.Structures.d_isSemiring_1358
                           (coe d_isCommutativeSemiring_62 (coe v0)))))))))
-- Algebra.Solver.Ring.AlmostCommutativeRing.IsAlmostCommutativeRing._.reflexive
d_reflexive_158 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  T_IsAlmostCommutativeRing_26 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 -> AgdaAny
d_reflexive_158 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 v9
  = du_reflexive_158 v9
du_reflexive_158 ::
  T_IsAlmostCommutativeRing_26 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 -> AgdaAny
du_reflexive_158 v0
  = let v1 = d_isCommutativeSemiring_62 (coe v0) in
    let v2
          = MAlonzo.Code.Algebra.Structures.d_isSemiring_1358 (coe v1) in
    let v3
          = MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1252
              (coe v2) in
    let v4
          = MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_1158
              (coe v3) in
    let v5 = MAlonzo.Code.Algebra.Structures.d_isMonoid_416 (coe v4) in
    let v6
          = MAlonzo.Code.Algebra.Structures.d_isSemigroup_368 (coe v5) in
    let v7 = MAlonzo.Code.Algebra.Structures.d_isMagma_202 (coe v6) in
    \ v8 v9 v10 ->
      coe
        MAlonzo.Code.Relation.Binary.Structures.du_reflexive_40
        (coe MAlonzo.Code.Algebra.Structures.d_isEquivalence_94 (coe v7))
        v8
-- Algebra.Solver.Ring.AlmostCommutativeRing.IsAlmostCommutativeRing._.setoid
d_setoid_160 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  T_IsAlmostCommutativeRing_26 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44
d_setoid_160 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 v9
  = du_setoid_160 v9
du_setoid_160 ::
  T_IsAlmostCommutativeRing_26 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44
du_setoid_160 v0
  = let v1 = d_isCommutativeSemiring_62 (coe v0) in
    let v2
          = MAlonzo.Code.Algebra.Structures.d_isSemiring_1358 (coe v1) in
    let v3
          = MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1252
              (coe v2) in
    let v4
          = MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_1158
              (coe v3) in
    let v5 = MAlonzo.Code.Algebra.Structures.d_isMonoid_416 (coe v4) in
    let v6
          = MAlonzo.Code.Algebra.Structures.d_isSemigroup_368 (coe v5) in
    coe
      MAlonzo.Code.Algebra.Structures.du_setoid_110
      (coe MAlonzo.Code.Algebra.Structures.d_isMagma_202 (coe v6))
-- Algebra.Solver.Ring.AlmostCommutativeRing.IsAlmostCommutativeRing._.sym
d_sym_162 ::
  T_IsAlmostCommutativeRing_26 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_sym_162 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d_sym_36
      (coe
         MAlonzo.Code.Algebra.Structures.d_isEquivalence_94
         (coe
            MAlonzo.Code.Algebra.Structures.d_isMagma_202
            (coe
               MAlonzo.Code.Algebra.Structures.d_isSemigroup_368
               (coe
                  MAlonzo.Code.Algebra.Structures.d_isMonoid_416
                  (coe
                     MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_1158
                     (coe
                        MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1252
                        (coe
                           MAlonzo.Code.Algebra.Structures.d_isSemiring_1358
                           (coe d_isCommutativeSemiring_62 (coe v0)))))))))
-- Algebra.Solver.Ring.AlmostCommutativeRing.IsAlmostCommutativeRing._.trans
d_trans_164 ::
  T_IsAlmostCommutativeRing_26 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_trans_164 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d_trans_38
      (coe
         MAlonzo.Code.Algebra.Structures.d_isEquivalence_94
         (coe
            MAlonzo.Code.Algebra.Structures.d_isMagma_202
            (coe
               MAlonzo.Code.Algebra.Structures.d_isSemigroup_368
               (coe
                  MAlonzo.Code.Algebra.Structures.d_isMonoid_416
                  (coe
                     MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_1158
                     (coe
                        MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1252
                        (coe
                           MAlonzo.Code.Algebra.Structures.d_isSemiring_1358
                           (coe d_isCommutativeSemiring_62 (coe v0)))))))))
-- Algebra.Solver.Ring.AlmostCommutativeRing.IsAlmostCommutativeRing._.zero
d_zero_166 ::
  T_IsAlmostCommutativeRing_26 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_zero_166 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_zero_1254
      (coe
         MAlonzo.Code.Algebra.Structures.d_isSemiring_1358
         (coe d_isCommutativeSemiring_62 (coe v0)))
-- Algebra.Solver.Ring.AlmostCommutativeRing.IsAlmostCommutativeRing._.zeroʳ
d_zero'691'_168 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny -> T_IsAlmostCommutativeRing_26 -> AgdaAny -> AgdaAny
d_zero'691'_168 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 v9
  = du_zero'691'_168 v9
du_zero'691'_168 ::
  T_IsAlmostCommutativeRing_26 -> AgdaAny -> AgdaAny
du_zero'691'_168 v0
  = let v1 = d_isCommutativeSemiring_62 (coe v0) in
    let v2
          = MAlonzo.Code.Algebra.Structures.d_isSemiring_1358 (coe v1) in
    coe
      MAlonzo.Code.Algebra.Structures.du_zero'691'_988
      (coe
         MAlonzo.Code.Algebra.Structures.du_isSemiringWithoutOne_1326
         (coe v2))
-- Algebra.Solver.Ring.AlmostCommutativeRing.IsAlmostCommutativeRing._.zeroˡ
d_zero'737'_170 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny -> T_IsAlmostCommutativeRing_26 -> AgdaAny -> AgdaAny
d_zero'737'_170 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 v9
  = du_zero'737'_170 v9
du_zero'737'_170 ::
  T_IsAlmostCommutativeRing_26 -> AgdaAny -> AgdaAny
du_zero'737'_170 v0
  = let v1 = d_isCommutativeSemiring_62 (coe v0) in
    let v2
          = MAlonzo.Code.Algebra.Structures.d_isSemiring_1358 (coe v1) in
    coe
      MAlonzo.Code.Algebra.Structures.du_zero'737'_986
      (coe
         MAlonzo.Code.Algebra.Structures.du_isSemiringWithoutOne_1326
         (coe v2))
-- Algebra.Solver.Ring.AlmostCommutativeRing.AlmostCommutativeRing
d_AlmostCommutativeRing_176 a0 a1 = ()
data T_AlmostCommutativeRing_176
  = C_AlmostCommutativeRing'46'constructor_5195 (AgdaAny ->
                                                 AgdaAny -> AgdaAny)
                                                (AgdaAny -> AgdaAny -> AgdaAny) (AgdaAny -> AgdaAny)
                                                AgdaAny AgdaAny T_IsAlmostCommutativeRing_26
-- Algebra.Solver.Ring.AlmostCommutativeRing.AlmostCommutativeRing.Carrier
d_Carrier_198 :: T_AlmostCommutativeRing_176 -> ()
d_Carrier_198 = erased
-- Algebra.Solver.Ring.AlmostCommutativeRing.AlmostCommutativeRing._≈_
d__'8776'__200 ::
  T_AlmostCommutativeRing_176 -> AgdaAny -> AgdaAny -> ()
d__'8776'__200 = erased
-- Algebra.Solver.Ring.AlmostCommutativeRing.AlmostCommutativeRing._+_
d__'43'__202 ::
  T_AlmostCommutativeRing_176 -> AgdaAny -> AgdaAny -> AgdaAny
d__'43'__202 v0
  = case coe v0 of
      C_AlmostCommutativeRing'46'constructor_5195 v3 v4 v5 v6 v7 v8
        -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Algebra.Solver.Ring.AlmostCommutativeRing.AlmostCommutativeRing._*_
d__'42'__204 ::
  T_AlmostCommutativeRing_176 -> AgdaAny -> AgdaAny -> AgdaAny
d__'42'__204 v0
  = case coe v0 of
      C_AlmostCommutativeRing'46'constructor_5195 v3 v4 v5 v6 v7 v8
        -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Algebra.Solver.Ring.AlmostCommutativeRing.AlmostCommutativeRing.-_
d_'45'__206 :: T_AlmostCommutativeRing_176 -> AgdaAny -> AgdaAny
d_'45'__206 v0
  = case coe v0 of
      C_AlmostCommutativeRing'46'constructor_5195 v3 v4 v5 v6 v7 v8
        -> coe v5
      _ -> MAlonzo.RTE.mazUnreachableError
-- Algebra.Solver.Ring.AlmostCommutativeRing.AlmostCommutativeRing.0#
d_0'35'_208 :: T_AlmostCommutativeRing_176 -> AgdaAny
d_0'35'_208 v0
  = case coe v0 of
      C_AlmostCommutativeRing'46'constructor_5195 v3 v4 v5 v6 v7 v8
        -> coe v6
      _ -> MAlonzo.RTE.mazUnreachableError
-- Algebra.Solver.Ring.AlmostCommutativeRing.AlmostCommutativeRing.1#
d_1'35'_210 :: T_AlmostCommutativeRing_176 -> AgdaAny
d_1'35'_210 v0
  = case coe v0 of
      C_AlmostCommutativeRing'46'constructor_5195 v3 v4 v5 v6 v7 v8
        -> coe v7
      _ -> MAlonzo.RTE.mazUnreachableError
-- Algebra.Solver.Ring.AlmostCommutativeRing.AlmostCommutativeRing.isAlmostCommutativeRing
d_isAlmostCommutativeRing_212 ::
  T_AlmostCommutativeRing_176 -> T_IsAlmostCommutativeRing_26
d_isAlmostCommutativeRing_212 v0
  = case coe v0 of
      C_AlmostCommutativeRing'46'constructor_5195 v3 v4 v5 v6 v7 v8
        -> coe v8
      _ -> MAlonzo.RTE.mazUnreachableError
-- Algebra.Solver.Ring.AlmostCommutativeRing.AlmostCommutativeRing._.assoc
d_assoc_216 ::
  T_AlmostCommutativeRing_176 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_assoc_216 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_assoc_204
      (coe
         MAlonzo.Code.Algebra.Structures.d_isSemigroup_368
         (coe
            MAlonzo.Code.Algebra.Structures.d_'42''45'isMonoid_1160
            (coe
               MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1252
               (coe
                  MAlonzo.Code.Algebra.Structures.d_isSemiring_1358
                  (coe
                     d_isCommutativeSemiring_62
                     (coe d_isAlmostCommutativeRing_212 (coe v0)))))))
-- Algebra.Solver.Ring.AlmostCommutativeRing.AlmostCommutativeRing._.*-comm
d_'42''45'comm_218 ::
  T_AlmostCommutativeRing_176 -> AgdaAny -> AgdaAny -> AgdaAny
d_'42''45'comm_218 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_'42''45'comm_1360
      (coe
         d_isCommutativeSemiring_62
         (coe d_isAlmostCommutativeRing_212 (coe v0)))
-- Algebra.Solver.Ring.AlmostCommutativeRing.AlmostCommutativeRing._.∙-cong
d_'8729''45'cong_220 ::
  T_AlmostCommutativeRing_176 ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8729''45'cong_220 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_'8729''45'cong_96
      (coe
         MAlonzo.Code.Algebra.Structures.d_isMagma_202
         (coe
            MAlonzo.Code.Algebra.Structures.d_isSemigroup_368
            (coe
               MAlonzo.Code.Algebra.Structures.d_'42''45'isMonoid_1160
               (coe
                  MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1252
                  (coe
                     MAlonzo.Code.Algebra.Structures.d_isSemiring_1358
                     (coe
                        d_isCommutativeSemiring_62
                        (coe d_isAlmostCommutativeRing_212 (coe v0))))))))
-- Algebra.Solver.Ring.AlmostCommutativeRing.AlmostCommutativeRing._.∙-congʳ
d_'8729''45'cong'691'_222 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  T_AlmostCommutativeRing_176 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8729''45'cong'691'_222 ~v0 ~v1 v2
  = du_'8729''45'cong'691'_222 v2
du_'8729''45'cong'691'_222 ::
  T_AlmostCommutativeRing_176 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_'8729''45'cong'691'_222 v0
  = let v1 = d_isAlmostCommutativeRing_212 (coe v0) in
    let v2 = d_isCommutativeSemiring_62 (coe v1) in
    let v3
          = MAlonzo.Code.Algebra.Structures.d_isSemiring_1358 (coe v2) in
    let v4
          = MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1252
              (coe v3) in
    let v5
          = MAlonzo.Code.Algebra.Structures.d_'42''45'isMonoid_1160
              (coe v4) in
    let v6
          = MAlonzo.Code.Algebra.Structures.d_isSemigroup_368 (coe v5) in
    coe
      MAlonzo.Code.Algebra.Structures.du_'8729''45'cong'691'_116
      (coe MAlonzo.Code.Algebra.Structures.d_isMagma_202 (coe v6))
-- Algebra.Solver.Ring.AlmostCommutativeRing.AlmostCommutativeRing._.∙-congˡ
d_'8729''45'cong'737'_224 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  T_AlmostCommutativeRing_176 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8729''45'cong'737'_224 ~v0 ~v1 v2
  = du_'8729''45'cong'737'_224 v2
du_'8729''45'cong'737'_224 ::
  T_AlmostCommutativeRing_176 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_'8729''45'cong'737'_224 v0
  = let v1 = d_isAlmostCommutativeRing_212 (coe v0) in
    let v2 = d_isCommutativeSemiring_62 (coe v1) in
    let v3
          = MAlonzo.Code.Algebra.Structures.d_isSemiring_1358 (coe v2) in
    let v4
          = MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1252
              (coe v3) in
    let v5
          = MAlonzo.Code.Algebra.Structures.d_'42''45'isMonoid_1160
              (coe v4) in
    let v6
          = MAlonzo.Code.Algebra.Structures.d_isSemigroup_368 (coe v5) in
    coe
      MAlonzo.Code.Algebra.Structures.du_'8729''45'cong'737'_112
      (coe MAlonzo.Code.Algebra.Structures.d_isMagma_202 (coe v6))
-- Algebra.Solver.Ring.AlmostCommutativeRing.AlmostCommutativeRing._.identity
d_identity_226 ::
  T_AlmostCommutativeRing_176 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_identity_226 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_identity_370
      (coe
         MAlonzo.Code.Algebra.Structures.d_'42''45'isMonoid_1160
         (coe
            MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1252
            (coe
               MAlonzo.Code.Algebra.Structures.d_isSemiring_1358
               (coe
                  d_isCommutativeSemiring_62
                  (coe d_isAlmostCommutativeRing_212 (coe v0))))))
-- Algebra.Solver.Ring.AlmostCommutativeRing.AlmostCommutativeRing._.identityʳ
d_identity'691'_228 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  T_AlmostCommutativeRing_176 -> AgdaAny -> AgdaAny
d_identity'691'_228 ~v0 ~v1 v2 = du_identity'691'_228 v2
du_identity'691'_228 ::
  T_AlmostCommutativeRing_176 -> AgdaAny -> AgdaAny
du_identity'691'_228 v0
  = let v1 = d_isAlmostCommutativeRing_212 (coe v0) in
    let v2 = d_isCommutativeSemiring_62 (coe v1) in
    let v3
          = MAlonzo.Code.Algebra.Structures.d_isSemiring_1358 (coe v2) in
    let v4
          = MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1252
              (coe v3) in
    coe
      MAlonzo.Code.Algebra.Structures.du_identity'691'_400
      (coe
         MAlonzo.Code.Algebra.Structures.d_'42''45'isMonoid_1160 (coe v4))
-- Algebra.Solver.Ring.AlmostCommutativeRing.AlmostCommutativeRing._.identityˡ
d_identity'737'_230 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  T_AlmostCommutativeRing_176 -> AgdaAny -> AgdaAny
d_identity'737'_230 ~v0 ~v1 v2 = du_identity'737'_230 v2
du_identity'737'_230 ::
  T_AlmostCommutativeRing_176 -> AgdaAny -> AgdaAny
du_identity'737'_230 v0
  = let v1 = d_isAlmostCommutativeRing_212 (coe v0) in
    let v2 = d_isCommutativeSemiring_62 (coe v1) in
    let v3
          = MAlonzo.Code.Algebra.Structures.d_isSemiring_1358 (coe v2) in
    let v4
          = MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1252
              (coe v3) in
    coe
      MAlonzo.Code.Algebra.Structures.du_identity'737'_398
      (coe
         MAlonzo.Code.Algebra.Structures.d_'42''45'isMonoid_1160 (coe v4))
-- Algebra.Solver.Ring.AlmostCommutativeRing.AlmostCommutativeRing._.isCommutativeMagma
d_isCommutativeMagma_232 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  T_AlmostCommutativeRing_176 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMagma_122
d_isCommutativeMagma_232 ~v0 ~v1 v2 = du_isCommutativeMagma_232 v2
du_isCommutativeMagma_232 ::
  T_AlmostCommutativeRing_176 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMagma_122
du_isCommutativeMagma_232 v0
  = let v1 = d_isAlmostCommutativeRing_212 (coe v0) in
    let v2 = d_isCommutativeSemiring_62 (coe v1) in
    let v3
          = coe
              MAlonzo.Code.Algebra.Structures.du_isCommutativeSemiringWithoutOne_1444
              (coe v2) in
    coe
      MAlonzo.Code.Algebra.Structures.du_isCommutativeMagma_308
      (coe
         MAlonzo.Code.Algebra.Structures.du_'42''45'isCommutativeSemigroup_1128
         (coe v3))
-- Algebra.Solver.Ring.AlmostCommutativeRing.AlmostCommutativeRing._.*-isCommutativeMonoid
d_'42''45'isCommutativeMonoid_234 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  T_AlmostCommutativeRing_176 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMonoid_406
d_'42''45'isCommutativeMonoid_234 ~v0 ~v1 v2
  = du_'42''45'isCommutativeMonoid_234 v2
du_'42''45'isCommutativeMonoid_234 ::
  T_AlmostCommutativeRing_176 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMonoid_406
du_'42''45'isCommutativeMonoid_234 v0
  = let v1 = d_isAlmostCommutativeRing_212 (coe v0) in
    coe
      MAlonzo.Code.Algebra.Structures.du_'42''45'isCommutativeMonoid_1452
      (coe d_isCommutativeSemiring_62 (coe v1))
-- Algebra.Solver.Ring.AlmostCommutativeRing.AlmostCommutativeRing._.*-isCommutativeSemigroup
d_'42''45'isCommutativeSemigroup_236 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  T_AlmostCommutativeRing_176 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemigroup_270
d_'42''45'isCommutativeSemigroup_236 ~v0 ~v1 v2
  = du_'42''45'isCommutativeSemigroup_236 v2
du_'42''45'isCommutativeSemigroup_236 ::
  T_AlmostCommutativeRing_176 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemigroup_270
du_'42''45'isCommutativeSemigroup_236 v0
  = let v1 = d_isAlmostCommutativeRing_212 (coe v0) in
    let v2 = d_isCommutativeSemiring_62 (coe v1) in
    coe
      MAlonzo.Code.Algebra.Structures.du_'42''45'isCommutativeSemigroup_1128
      (coe
         MAlonzo.Code.Algebra.Structures.du_isCommutativeSemiringWithoutOne_1444
         (coe v2))
-- Algebra.Solver.Ring.AlmostCommutativeRing.AlmostCommutativeRing._.isMagma
d_isMagma_238 ::
  T_AlmostCommutativeRing_176 ->
  MAlonzo.Code.Algebra.Structures.T_IsMagma_86
d_isMagma_238 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isMagma_202
      (coe
         MAlonzo.Code.Algebra.Structures.d_isSemigroup_368
         (coe
            MAlonzo.Code.Algebra.Structures.d_'42''45'isMonoid_1160
            (coe
               MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1252
               (coe
                  MAlonzo.Code.Algebra.Structures.d_isSemiring_1358
                  (coe
                     d_isCommutativeSemiring_62
                     (coe d_isAlmostCommutativeRing_212 (coe v0)))))))
-- Algebra.Solver.Ring.AlmostCommutativeRing.AlmostCommutativeRing._.*-isMonoid
d_'42''45'isMonoid_240 ::
  T_AlmostCommutativeRing_176 ->
  MAlonzo.Code.Algebra.Structures.T_IsMonoid_358
d_'42''45'isMonoid_240 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_'42''45'isMonoid_1160
      (coe
         MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1252
         (coe
            MAlonzo.Code.Algebra.Structures.d_isSemiring_1358
            (coe
               d_isCommutativeSemiring_62
               (coe d_isAlmostCommutativeRing_212 (coe v0)))))
-- Algebra.Solver.Ring.AlmostCommutativeRing.AlmostCommutativeRing._.isSemigroup
d_isSemigroup_242 ::
  T_AlmostCommutativeRing_176 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemigroup_194
d_isSemigroup_242 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isSemigroup_368
      (coe
         MAlonzo.Code.Algebra.Structures.d_'42''45'isMonoid_1160
         (coe
            MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1252
            (coe
               MAlonzo.Code.Algebra.Structures.d_isSemiring_1358
               (coe
                  d_isCommutativeSemiring_62
                  (coe d_isAlmostCommutativeRing_212 (coe v0))))))
-- Algebra.Solver.Ring.AlmostCommutativeRing.AlmostCommutativeRing._.assoc
d_assoc_244 ::
  T_AlmostCommutativeRing_176 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_assoc_244 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_assoc_204
      (coe
         MAlonzo.Code.Algebra.Structures.d_isSemigroup_368
         (coe
            MAlonzo.Code.Algebra.Structures.d_isMonoid_416
            (coe
               MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_1158
               (coe
                  MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1252
                  (coe
                     MAlonzo.Code.Algebra.Structures.d_isSemiring_1358
                     (coe
                        d_isCommutativeSemiring_62
                        (coe d_isAlmostCommutativeRing_212 (coe v0))))))))
-- Algebra.Solver.Ring.AlmostCommutativeRing.AlmostCommutativeRing._.comm
d_comm_246 ::
  T_AlmostCommutativeRing_176 -> AgdaAny -> AgdaAny -> AgdaAny
d_comm_246 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_comm_418
      (coe
         MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_1158
         (coe
            MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1252
            (coe
               MAlonzo.Code.Algebra.Structures.d_isSemiring_1358
               (coe
                  d_isCommutativeSemiring_62
                  (coe d_isAlmostCommutativeRing_212 (coe v0))))))
-- Algebra.Solver.Ring.AlmostCommutativeRing.AlmostCommutativeRing._.∙-cong
d_'8729''45'cong_248 ::
  T_AlmostCommutativeRing_176 ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8729''45'cong_248 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_'8729''45'cong_96
      (coe
         MAlonzo.Code.Algebra.Structures.d_isMagma_202
         (coe
            MAlonzo.Code.Algebra.Structures.d_isSemigroup_368
            (coe
               MAlonzo.Code.Algebra.Structures.d_isMonoid_416
               (coe
                  MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_1158
                  (coe
                     MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1252
                     (coe
                        MAlonzo.Code.Algebra.Structures.d_isSemiring_1358
                        (coe
                           d_isCommutativeSemiring_62
                           (coe d_isAlmostCommutativeRing_212 (coe v0)))))))))
-- Algebra.Solver.Ring.AlmostCommutativeRing.AlmostCommutativeRing._.∙-congʳ
d_'8729''45'cong'691'_250 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  T_AlmostCommutativeRing_176 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8729''45'cong'691'_250 ~v0 ~v1 v2
  = du_'8729''45'cong'691'_250 v2
du_'8729''45'cong'691'_250 ::
  T_AlmostCommutativeRing_176 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_'8729''45'cong'691'_250 v0
  = let v1 = d_isAlmostCommutativeRing_212 (coe v0) in
    let v2 = d_isCommutativeSemiring_62 (coe v1) in
    let v3
          = MAlonzo.Code.Algebra.Structures.d_isSemiring_1358 (coe v2) in
    let v4
          = MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1252
              (coe v3) in
    let v5
          = MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_1158
              (coe v4) in
    let v6 = MAlonzo.Code.Algebra.Structures.d_isMonoid_416 (coe v5) in
    let v7
          = MAlonzo.Code.Algebra.Structures.d_isSemigroup_368 (coe v6) in
    coe
      MAlonzo.Code.Algebra.Structures.du_'8729''45'cong'691'_116
      (coe MAlonzo.Code.Algebra.Structures.d_isMagma_202 (coe v7))
-- Algebra.Solver.Ring.AlmostCommutativeRing.AlmostCommutativeRing._.∙-congˡ
d_'8729''45'cong'737'_252 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  T_AlmostCommutativeRing_176 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8729''45'cong'737'_252 ~v0 ~v1 v2
  = du_'8729''45'cong'737'_252 v2
du_'8729''45'cong'737'_252 ::
  T_AlmostCommutativeRing_176 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_'8729''45'cong'737'_252 v0
  = let v1 = d_isAlmostCommutativeRing_212 (coe v0) in
    let v2 = d_isCommutativeSemiring_62 (coe v1) in
    let v3
          = MAlonzo.Code.Algebra.Structures.d_isSemiring_1358 (coe v2) in
    let v4
          = MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1252
              (coe v3) in
    let v5
          = MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_1158
              (coe v4) in
    let v6 = MAlonzo.Code.Algebra.Structures.d_isMonoid_416 (coe v5) in
    let v7
          = MAlonzo.Code.Algebra.Structures.d_isSemigroup_368 (coe v6) in
    coe
      MAlonzo.Code.Algebra.Structures.du_'8729''45'cong'737'_112
      (coe MAlonzo.Code.Algebra.Structures.d_isMagma_202 (coe v7))
-- Algebra.Solver.Ring.AlmostCommutativeRing.AlmostCommutativeRing._.identity
d_identity_254 ::
  T_AlmostCommutativeRing_176 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_identity_254 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_identity_370
      (coe
         MAlonzo.Code.Algebra.Structures.d_isMonoid_416
         (coe
            MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_1158
            (coe
               MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1252
               (coe
                  MAlonzo.Code.Algebra.Structures.d_isSemiring_1358
                  (coe
                     d_isCommutativeSemiring_62
                     (coe d_isAlmostCommutativeRing_212 (coe v0)))))))
-- Algebra.Solver.Ring.AlmostCommutativeRing.AlmostCommutativeRing._.identityʳ
d_identity'691'_256 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  T_AlmostCommutativeRing_176 -> AgdaAny -> AgdaAny
d_identity'691'_256 ~v0 ~v1 v2 = du_identity'691'_256 v2
du_identity'691'_256 ::
  T_AlmostCommutativeRing_176 -> AgdaAny -> AgdaAny
du_identity'691'_256 v0
  = let v1 = d_isAlmostCommutativeRing_212 (coe v0) in
    let v2 = d_isCommutativeSemiring_62 (coe v1) in
    let v3
          = MAlonzo.Code.Algebra.Structures.d_isSemiring_1358 (coe v2) in
    let v4
          = MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1252
              (coe v3) in
    let v5
          = MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_1158
              (coe v4) in
    coe
      MAlonzo.Code.Algebra.Structures.du_identity'691'_400
      (coe MAlonzo.Code.Algebra.Structures.d_isMonoid_416 (coe v5))
-- Algebra.Solver.Ring.AlmostCommutativeRing.AlmostCommutativeRing._.identityˡ
d_identity'737'_258 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  T_AlmostCommutativeRing_176 -> AgdaAny -> AgdaAny
d_identity'737'_258 ~v0 ~v1 v2 = du_identity'737'_258 v2
du_identity'737'_258 ::
  T_AlmostCommutativeRing_176 -> AgdaAny -> AgdaAny
du_identity'737'_258 v0
  = let v1 = d_isAlmostCommutativeRing_212 (coe v0) in
    let v2 = d_isCommutativeSemiring_62 (coe v1) in
    let v3
          = MAlonzo.Code.Algebra.Structures.d_isSemiring_1358 (coe v2) in
    let v4
          = MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1252
              (coe v3) in
    let v5
          = MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_1158
              (coe v4) in
    coe
      MAlonzo.Code.Algebra.Structures.du_identity'737'_398
      (coe MAlonzo.Code.Algebra.Structures.d_isMonoid_416 (coe v5))
-- Algebra.Solver.Ring.AlmostCommutativeRing.AlmostCommutativeRing._.isCommutativeMagma
d_isCommutativeMagma_260 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  T_AlmostCommutativeRing_176 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMagma_122
d_isCommutativeMagma_260 ~v0 ~v1 v2 = du_isCommutativeMagma_260 v2
du_isCommutativeMagma_260 ::
  T_AlmostCommutativeRing_176 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMagma_122
du_isCommutativeMagma_260 v0
  = let v1 = d_isAlmostCommutativeRing_212 (coe v0) in
    let v2 = d_isCommutativeSemiring_62 (coe v1) in
    let v3
          = MAlonzo.Code.Algebra.Structures.d_isSemiring_1358 (coe v2) in
    let v4
          = MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1252
              (coe v3) in
    let v5
          = MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_1158
              (coe v4) in
    coe
      MAlonzo.Code.Algebra.Structures.du_isCommutativeMagma_308
      (coe
         MAlonzo.Code.Algebra.Structures.du_isCommutativeSemigroup_454
         (coe v5))
-- Algebra.Solver.Ring.AlmostCommutativeRing.AlmostCommutativeRing._.+-isCommutativeMonoid
d_'43''45'isCommutativeMonoid_262 ::
  T_AlmostCommutativeRing_176 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMonoid_406
d_'43''45'isCommutativeMonoid_262 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_1158
      (coe
         MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1252
         (coe
            MAlonzo.Code.Algebra.Structures.d_isSemiring_1358
            (coe
               d_isCommutativeSemiring_62
               (coe d_isAlmostCommutativeRing_212 (coe v0)))))
-- Algebra.Solver.Ring.AlmostCommutativeRing.AlmostCommutativeRing._.isCommutativeSemigroup
d_isCommutativeSemigroup_264 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  T_AlmostCommutativeRing_176 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemigroup_270
d_isCommutativeSemigroup_264 ~v0 ~v1 v2
  = du_isCommutativeSemigroup_264 v2
du_isCommutativeSemigroup_264 ::
  T_AlmostCommutativeRing_176 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemigroup_270
du_isCommutativeSemigroup_264 v0
  = let v1 = d_isAlmostCommutativeRing_212 (coe v0) in
    let v2 = d_isCommutativeSemiring_62 (coe v1) in
    let v3
          = MAlonzo.Code.Algebra.Structures.d_isSemiring_1358 (coe v2) in
    let v4
          = MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1252
              (coe v3) in
    coe
      MAlonzo.Code.Algebra.Structures.du_isCommutativeSemigroup_454
      (coe
         MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_1158
         (coe v4))
-- Algebra.Solver.Ring.AlmostCommutativeRing.AlmostCommutativeRing._.isMagma
d_isMagma_266 ::
  T_AlmostCommutativeRing_176 ->
  MAlonzo.Code.Algebra.Structures.T_IsMagma_86
d_isMagma_266 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isMagma_202
      (coe
         MAlonzo.Code.Algebra.Structures.d_isSemigroup_368
         (coe
            MAlonzo.Code.Algebra.Structures.d_isMonoid_416
            (coe
               MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_1158
               (coe
                  MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1252
                  (coe
                     MAlonzo.Code.Algebra.Structures.d_isSemiring_1358
                     (coe
                        d_isCommutativeSemiring_62
                        (coe d_isAlmostCommutativeRing_212 (coe v0))))))))
-- Algebra.Solver.Ring.AlmostCommutativeRing.AlmostCommutativeRing._.isMonoid
d_isMonoid_268 ::
  T_AlmostCommutativeRing_176 ->
  MAlonzo.Code.Algebra.Structures.T_IsMonoid_358
d_isMonoid_268 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isMonoid_416
      (coe
         MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_1158
         (coe
            MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1252
            (coe
               MAlonzo.Code.Algebra.Structures.d_isSemiring_1358
               (coe
                  d_isCommutativeSemiring_62
                  (coe d_isAlmostCommutativeRing_212 (coe v0))))))
-- Algebra.Solver.Ring.AlmostCommutativeRing.AlmostCommutativeRing._.isSemigroup
d_isSemigroup_270 ::
  T_AlmostCommutativeRing_176 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemigroup_194
d_isSemigroup_270 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isSemigroup_368
      (coe
         MAlonzo.Code.Algebra.Structures.d_isMonoid_416
         (coe
            MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_1158
            (coe
               MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1252
               (coe
                  MAlonzo.Code.Algebra.Structures.d_isSemiring_1358
                  (coe
                     d_isCommutativeSemiring_62
                     (coe d_isAlmostCommutativeRing_212 (coe v0)))))))
-- Algebra.Solver.Ring.AlmostCommutativeRing.AlmostCommutativeRing._.-‿*-distribˡ
d_'45''8255''42''45'distrib'737'_272 ::
  T_AlmostCommutativeRing_176 -> AgdaAny -> AgdaAny -> AgdaAny
d_'45''8255''42''45'distrib'737'_272 v0
  = coe
      d_'45''8255''42''45'distrib'737'_70
      (coe d_isAlmostCommutativeRing_212 (coe v0))
-- Algebra.Solver.Ring.AlmostCommutativeRing.AlmostCommutativeRing._.-‿+-comm
d_'45''8255''43''45'comm_274 ::
  T_AlmostCommutativeRing_176 -> AgdaAny -> AgdaAny -> AgdaAny
d_'45''8255''43''45'comm_274 v0
  = coe
      d_'45''8255''43''45'comm_76
      (coe d_isAlmostCommutativeRing_212 (coe v0))
-- Algebra.Solver.Ring.AlmostCommutativeRing.AlmostCommutativeRing._.-‿cong
d_'45''8255'cong_276 ::
  T_AlmostCommutativeRing_176 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'45''8255'cong_276 v0
  = coe
      d_'45''8255'cong_64 (coe d_isAlmostCommutativeRing_212 (coe v0))
-- Algebra.Solver.Ring.AlmostCommutativeRing.AlmostCommutativeRing._.distrib
d_distrib_278 ::
  T_AlmostCommutativeRing_176 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_distrib_278 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_distrib_1162
      (coe
         MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1252
         (coe
            MAlonzo.Code.Algebra.Structures.d_isSemiring_1358
            (coe
               d_isCommutativeSemiring_62
               (coe d_isAlmostCommutativeRing_212 (coe v0)))))
-- Algebra.Solver.Ring.AlmostCommutativeRing.AlmostCommutativeRing._.distribʳ
d_distrib'691'_280 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  T_AlmostCommutativeRing_176 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_distrib'691'_280 ~v0 ~v1 v2 = du_distrib'691'_280 v2
du_distrib'691'_280 ::
  T_AlmostCommutativeRing_176 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_distrib'691'_280 v0
  = let v1 = d_isAlmostCommutativeRing_212 (coe v0) in
    let v2 = d_isCommutativeSemiring_62 (coe v1) in
    let v3
          = MAlonzo.Code.Algebra.Structures.d_isSemiring_1358 (coe v2) in
    coe
      MAlonzo.Code.Algebra.Structures.du_distrib'691'_1166
      (coe
         MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1252
         (coe v3))
-- Algebra.Solver.Ring.AlmostCommutativeRing.AlmostCommutativeRing._.distribˡ
d_distrib'737'_282 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  T_AlmostCommutativeRing_176 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_distrib'737'_282 ~v0 ~v1 v2 = du_distrib'737'_282 v2
du_distrib'737'_282 ::
  T_AlmostCommutativeRing_176 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_distrib'737'_282 v0
  = let v1 = d_isAlmostCommutativeRing_212 (coe v0) in
    let v2 = d_isCommutativeSemiring_62 (coe v1) in
    let v3
          = MAlonzo.Code.Algebra.Structures.d_isSemiring_1358 (coe v2) in
    coe
      MAlonzo.Code.Algebra.Structures.du_distrib'737'_1164
      (coe
         MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1252
         (coe v3))
-- Algebra.Solver.Ring.AlmostCommutativeRing.AlmostCommutativeRing._.isCommutativeSemiring
d_isCommutativeSemiring_284 ::
  T_AlmostCommutativeRing_176 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemiring_1344
d_isCommutativeSemiring_284 v0
  = coe
      d_isCommutativeSemiring_62
      (coe d_isAlmostCommutativeRing_212 (coe v0))
-- Algebra.Solver.Ring.AlmostCommutativeRing.AlmostCommutativeRing._.isCommutativeSemiringWithoutOne
d_isCommutativeSemiringWithoutOne_286 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  T_AlmostCommutativeRing_176 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemiringWithoutOne_1044
d_isCommutativeSemiringWithoutOne_286 ~v0 ~v1 v2
  = du_isCommutativeSemiringWithoutOne_286 v2
du_isCommutativeSemiringWithoutOne_286 ::
  T_AlmostCommutativeRing_176 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemiringWithoutOne_1044
du_isCommutativeSemiringWithoutOne_286 v0
  = let v1 = d_isAlmostCommutativeRing_212 (coe v0) in
    coe
      MAlonzo.Code.Algebra.Structures.du_isCommutativeSemiringWithoutOne_1444
      (coe d_isCommutativeSemiring_62 (coe v1))
-- Algebra.Solver.Ring.AlmostCommutativeRing.AlmostCommutativeRing._.isEquivalence
d_isEquivalence_288 ::
  T_AlmostCommutativeRing_176 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsEquivalence_26
d_isEquivalence_288 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isEquivalence_94
      (coe
         MAlonzo.Code.Algebra.Structures.d_isMagma_202
         (coe
            MAlonzo.Code.Algebra.Structures.d_isSemigroup_368
            (coe
               MAlonzo.Code.Algebra.Structures.d_isMonoid_416
               (coe
                  MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_1158
                  (coe
                     MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1252
                     (coe
                        MAlonzo.Code.Algebra.Structures.d_isSemiring_1358
                        (coe
                           d_isCommutativeSemiring_62
                           (coe d_isAlmostCommutativeRing_212 (coe v0)))))))))
-- Algebra.Solver.Ring.AlmostCommutativeRing.AlmostCommutativeRing._.isNearSemiring
d_isNearSemiring_290 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  T_AlmostCommutativeRing_176 ->
  MAlonzo.Code.Algebra.Structures.T_IsNearSemiring_876
d_isNearSemiring_290 ~v0 ~v1 v2 = du_isNearSemiring_290 v2
du_isNearSemiring_290 ::
  T_AlmostCommutativeRing_176 ->
  MAlonzo.Code.Algebra.Structures.T_IsNearSemiring_876
du_isNearSemiring_290 v0
  = let v1 = d_isAlmostCommutativeRing_212 (coe v0) in
    let v2 = d_isCommutativeSemiring_62 (coe v1) in
    let v3
          = MAlonzo.Code.Algebra.Structures.d_isSemiring_1358 (coe v2) in
    coe
      MAlonzo.Code.Algebra.Structures.du_isNearSemiring_990
      (coe
         MAlonzo.Code.Algebra.Structures.du_isSemiringWithoutOne_1326
         (coe v3))
-- Algebra.Solver.Ring.AlmostCommutativeRing.AlmostCommutativeRing._.isPartialEquivalence
d_isPartialEquivalence_292 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  T_AlmostCommutativeRing_176 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialEquivalence_16
d_isPartialEquivalence_292 ~v0 ~v1 v2
  = du_isPartialEquivalence_292 v2
du_isPartialEquivalence_292 ::
  T_AlmostCommutativeRing_176 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialEquivalence_16
du_isPartialEquivalence_292 v0
  = let v1 = d_isAlmostCommutativeRing_212 (coe v0) in
    let v2 = d_isCommutativeSemiring_62 (coe v1) in
    let v3
          = MAlonzo.Code.Algebra.Structures.d_isSemiring_1358 (coe v2) in
    let v4
          = MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1252
              (coe v3) in
    let v5
          = MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_1158
              (coe v4) in
    let v6 = MAlonzo.Code.Algebra.Structures.d_isMonoid_416 (coe v5) in
    let v7
          = MAlonzo.Code.Algebra.Structures.d_isSemigroup_368 (coe v6) in
    let v8 = MAlonzo.Code.Algebra.Structures.d_isMagma_202 (coe v7) in
    coe
      MAlonzo.Code.Relation.Binary.Structures.du_isPartialEquivalence_42
      (coe MAlonzo.Code.Algebra.Structures.d_isEquivalence_94 (coe v8))
-- Algebra.Solver.Ring.AlmostCommutativeRing.AlmostCommutativeRing._.isSemiring
d_isSemiring_294 ::
  T_AlmostCommutativeRing_176 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemiring_1238
d_isSemiring_294 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isSemiring_1358
      (coe
         d_isCommutativeSemiring_62
         (coe d_isAlmostCommutativeRing_212 (coe v0)))
-- Algebra.Solver.Ring.AlmostCommutativeRing.AlmostCommutativeRing._.isSemiringWithoutAnnihilatingZero
d_isSemiringWithoutAnnihilatingZero_296 ::
  T_AlmostCommutativeRing_176 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemiringWithoutAnnihilatingZero_1142
d_isSemiringWithoutAnnihilatingZero_296 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1252
      (coe
         MAlonzo.Code.Algebra.Structures.d_isSemiring_1358
         (coe
            d_isCommutativeSemiring_62
            (coe d_isAlmostCommutativeRing_212 (coe v0))))
-- Algebra.Solver.Ring.AlmostCommutativeRing.AlmostCommutativeRing._.isSemiringWithoutOne
d_isSemiringWithoutOne_298 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  T_AlmostCommutativeRing_176 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemiringWithoutOne_952
d_isSemiringWithoutOne_298 ~v0 ~v1 v2
  = du_isSemiringWithoutOne_298 v2
du_isSemiringWithoutOne_298 ::
  T_AlmostCommutativeRing_176 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemiringWithoutOne_952
du_isSemiringWithoutOne_298 v0
  = let v1 = d_isAlmostCommutativeRing_212 (coe v0) in
    let v2 = d_isCommutativeSemiring_62 (coe v1) in
    coe
      MAlonzo.Code.Algebra.Structures.du_isSemiringWithoutOne_1326
      (coe MAlonzo.Code.Algebra.Structures.d_isSemiring_1358 (coe v2))
-- Algebra.Solver.Ring.AlmostCommutativeRing.AlmostCommutativeRing._.refl
d_refl_300 :: T_AlmostCommutativeRing_176 -> AgdaAny -> AgdaAny
d_refl_300 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d_refl_34
      (coe
         MAlonzo.Code.Algebra.Structures.d_isEquivalence_94
         (coe
            MAlonzo.Code.Algebra.Structures.d_isMagma_202
            (coe
               MAlonzo.Code.Algebra.Structures.d_isSemigroup_368
               (coe
                  MAlonzo.Code.Algebra.Structures.d_isMonoid_416
                  (coe
                     MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_1158
                     (coe
                        MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1252
                        (coe
                           MAlonzo.Code.Algebra.Structures.d_isSemiring_1358
                           (coe
                              d_isCommutativeSemiring_62
                              (coe d_isAlmostCommutativeRing_212 (coe v0))))))))))
-- Algebra.Solver.Ring.AlmostCommutativeRing.AlmostCommutativeRing._.reflexive
d_reflexive_302 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  T_AlmostCommutativeRing_176 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 -> AgdaAny
d_reflexive_302 ~v0 ~v1 v2 = du_reflexive_302 v2
du_reflexive_302 ::
  T_AlmostCommutativeRing_176 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 -> AgdaAny
du_reflexive_302 v0
  = let v1 = d_isAlmostCommutativeRing_212 (coe v0) in
    let v2 = d_isCommutativeSemiring_62 (coe v1) in
    let v3
          = MAlonzo.Code.Algebra.Structures.d_isSemiring_1358 (coe v2) in
    let v4
          = MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1252
              (coe v3) in
    let v5
          = MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_1158
              (coe v4) in
    let v6 = MAlonzo.Code.Algebra.Structures.d_isMonoid_416 (coe v5) in
    let v7
          = MAlonzo.Code.Algebra.Structures.d_isSemigroup_368 (coe v6) in
    let v8 = MAlonzo.Code.Algebra.Structures.d_isMagma_202 (coe v7) in
    \ v9 v10 v11 ->
      coe
        MAlonzo.Code.Relation.Binary.Structures.du_reflexive_40
        (coe MAlonzo.Code.Algebra.Structures.d_isEquivalence_94 (coe v8))
        v9
-- Algebra.Solver.Ring.AlmostCommutativeRing.AlmostCommutativeRing._.setoid
d_setoid_304 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  T_AlmostCommutativeRing_176 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44
d_setoid_304 ~v0 ~v1 v2 = du_setoid_304 v2
du_setoid_304 ::
  T_AlmostCommutativeRing_176 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44
du_setoid_304 v0
  = let v1 = d_isAlmostCommutativeRing_212 (coe v0) in
    let v2 = d_isCommutativeSemiring_62 (coe v1) in
    let v3
          = MAlonzo.Code.Algebra.Structures.d_isSemiring_1358 (coe v2) in
    let v4
          = MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1252
              (coe v3) in
    let v5
          = MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_1158
              (coe v4) in
    let v6 = MAlonzo.Code.Algebra.Structures.d_isMonoid_416 (coe v5) in
    let v7
          = MAlonzo.Code.Algebra.Structures.d_isSemigroup_368 (coe v6) in
    coe
      MAlonzo.Code.Algebra.Structures.du_setoid_110
      (coe MAlonzo.Code.Algebra.Structures.d_isMagma_202 (coe v7))
-- Algebra.Solver.Ring.AlmostCommutativeRing.AlmostCommutativeRing._.sym
d_sym_306 ::
  T_AlmostCommutativeRing_176 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_sym_306 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d_sym_36
      (coe
         MAlonzo.Code.Algebra.Structures.d_isEquivalence_94
         (coe
            MAlonzo.Code.Algebra.Structures.d_isMagma_202
            (coe
               MAlonzo.Code.Algebra.Structures.d_isSemigroup_368
               (coe
                  MAlonzo.Code.Algebra.Structures.d_isMonoid_416
                  (coe
                     MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_1158
                     (coe
                        MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1252
                        (coe
                           MAlonzo.Code.Algebra.Structures.d_isSemiring_1358
                           (coe
                              d_isCommutativeSemiring_62
                              (coe d_isAlmostCommutativeRing_212 (coe v0))))))))))
-- Algebra.Solver.Ring.AlmostCommutativeRing.AlmostCommutativeRing._.trans
d_trans_308 ::
  T_AlmostCommutativeRing_176 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_trans_308 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d_trans_38
      (coe
         MAlonzo.Code.Algebra.Structures.d_isEquivalence_94
         (coe
            MAlonzo.Code.Algebra.Structures.d_isMagma_202
            (coe
               MAlonzo.Code.Algebra.Structures.d_isSemigroup_368
               (coe
                  MAlonzo.Code.Algebra.Structures.d_isMonoid_416
                  (coe
                     MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_1158
                     (coe
                        MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1252
                        (coe
                           MAlonzo.Code.Algebra.Structures.d_isSemiring_1358
                           (coe
                              d_isCommutativeSemiring_62
                              (coe d_isAlmostCommutativeRing_212 (coe v0))))))))))
-- Algebra.Solver.Ring.AlmostCommutativeRing.AlmostCommutativeRing._.zero
d_zero_310 ::
  T_AlmostCommutativeRing_176 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_zero_310 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_zero_1254
      (coe
         MAlonzo.Code.Algebra.Structures.d_isSemiring_1358
         (coe
            d_isCommutativeSemiring_62
            (coe d_isAlmostCommutativeRing_212 (coe v0))))
-- Algebra.Solver.Ring.AlmostCommutativeRing.AlmostCommutativeRing._.zeroʳ
d_zero'691'_312 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  T_AlmostCommutativeRing_176 -> AgdaAny -> AgdaAny
d_zero'691'_312 ~v0 ~v1 v2 = du_zero'691'_312 v2
du_zero'691'_312 ::
  T_AlmostCommutativeRing_176 -> AgdaAny -> AgdaAny
du_zero'691'_312 v0
  = let v1 = d_isAlmostCommutativeRing_212 (coe v0) in
    let v2 = d_isCommutativeSemiring_62 (coe v1) in
    let v3
          = MAlonzo.Code.Algebra.Structures.d_isSemiring_1358 (coe v2) in
    coe
      MAlonzo.Code.Algebra.Structures.du_zero'691'_988
      (coe
         MAlonzo.Code.Algebra.Structures.du_isSemiringWithoutOne_1326
         (coe v3))
-- Algebra.Solver.Ring.AlmostCommutativeRing.AlmostCommutativeRing._.zeroˡ
d_zero'737'_314 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  T_AlmostCommutativeRing_176 -> AgdaAny -> AgdaAny
d_zero'737'_314 ~v0 ~v1 v2 = du_zero'737'_314 v2
du_zero'737'_314 ::
  T_AlmostCommutativeRing_176 -> AgdaAny -> AgdaAny
du_zero'737'_314 v0
  = let v1 = d_isAlmostCommutativeRing_212 (coe v0) in
    let v2 = d_isCommutativeSemiring_62 (coe v1) in
    let v3
          = MAlonzo.Code.Algebra.Structures.d_isSemiring_1358 (coe v2) in
    coe
      MAlonzo.Code.Algebra.Structures.du_zero'737'_986
      (coe
         MAlonzo.Code.Algebra.Structures.du_isSemiringWithoutOne_1326
         (coe v3))
-- Algebra.Solver.Ring.AlmostCommutativeRing.AlmostCommutativeRing.commutativeSemiring
d_commutativeSemiring_316 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  T_AlmostCommutativeRing_176 ->
  MAlonzo.Code.Algebra.Bundles.T_CommutativeSemiring_2094
d_commutativeSemiring_316 ~v0 ~v1 v2
  = du_commutativeSemiring_316 v2
du_commutativeSemiring_316 ::
  T_AlmostCommutativeRing_176 ->
  MAlonzo.Code.Algebra.Bundles.T_CommutativeSemiring_2094
du_commutativeSemiring_316 v0
  = coe
      MAlonzo.Code.Algebra.Bundles.C_CommutativeSemiring'46'constructor_32013
      (d__'43'__202 (coe v0)) (d__'42'__204 (coe v0))
      (d_0'35'_208 (coe v0)) (d_1'35'_210 (coe v0))
      (d_isCommutativeSemiring_62
         (coe d_isAlmostCommutativeRing_212 (coe v0)))
-- Algebra.Solver.Ring.AlmostCommutativeRing.AlmostCommutativeRing._.*-commutativeMonoid
d_'42''45'commutativeMonoid_320 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  T_AlmostCommutativeRing_176 ->
  MAlonzo.Code.Algebra.Bundles.T_CommutativeMonoid_582
d_'42''45'commutativeMonoid_320 ~v0 ~v1 v2
  = du_'42''45'commutativeMonoid_320 v2
du_'42''45'commutativeMonoid_320 ::
  T_AlmostCommutativeRing_176 ->
  MAlonzo.Code.Algebra.Bundles.T_CommutativeMonoid_582
du_'42''45'commutativeMonoid_320 v0
  = coe
      MAlonzo.Code.Algebra.Bundles.du_'42''45'commutativeMonoid_2262
      (coe du_commutativeSemiring_316 (coe v0))
-- Algebra.Solver.Ring.AlmostCommutativeRing.AlmostCommutativeRing._.commutativeSemigroup
d_commutativeSemigroup_322 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  T_AlmostCommutativeRing_176 ->
  MAlonzo.Code.Algebra.Bundles.T_CommutativeSemigroup_332
d_commutativeSemigroup_322 ~v0 ~v1 v2
  = du_commutativeSemigroup_322 v2
du_commutativeSemigroup_322 ::
  T_AlmostCommutativeRing_176 ->
  MAlonzo.Code.Algebra.Bundles.T_CommutativeSemigroup_332
du_commutativeSemigroup_322 v0
  = let v1 = coe du_commutativeSemiring_316 (coe v0) in
    coe
      MAlonzo.Code.Algebra.Bundles.du_commutativeSemigroup_664
      (coe
         MAlonzo.Code.Algebra.Bundles.du_'42''45'commutativeMonoid_2262
         (coe v1))
-- Algebra.Solver.Ring.AlmostCommutativeRing.AlmostCommutativeRing._.magma
d_magma_324 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  T_AlmostCommutativeRing_176 ->
  MAlonzo.Code.Algebra.Bundles.T_Magma_36
d_magma_324 ~v0 ~v1 v2 = du_magma_324 v2
du_magma_324 ::
  T_AlmostCommutativeRing_176 ->
  MAlonzo.Code.Algebra.Bundles.T_Magma_36
du_magma_324 v0
  = let v1 = coe du_commutativeSemiring_316 (coe v0) in
    let v2
          = coe MAlonzo.Code.Algebra.Bundles.du_semiring_2222 (coe v1) in
    let v3
          = coe
              MAlonzo.Code.Algebra.Bundles.du_semiringWithoutAnnihilatingZero_2048
              (coe v2) in
    let v4
          = coe
              MAlonzo.Code.Algebra.Bundles.du_'42''45'monoid_1916 (coe v3) in
    coe
      MAlonzo.Code.Algebra.Bundles.du_magma_254
      (coe MAlonzo.Code.Algebra.Bundles.du_semigroup_566 (coe v4))
-- Algebra.Solver.Ring.AlmostCommutativeRing.AlmostCommutativeRing._.*-monoid
d_'42''45'monoid_326 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  T_AlmostCommutativeRing_176 ->
  MAlonzo.Code.Algebra.Bundles.T_Monoid_506
d_'42''45'monoid_326 ~v0 ~v1 v2 = du_'42''45'monoid_326 v2
du_'42''45'monoid_326 ::
  T_AlmostCommutativeRing_176 ->
  MAlonzo.Code.Algebra.Bundles.T_Monoid_506
du_'42''45'monoid_326 v0
  = let v1 = coe du_commutativeSemiring_316 (coe v0) in
    let v2
          = coe MAlonzo.Code.Algebra.Bundles.du_semiring_2222 (coe v1) in
    coe
      MAlonzo.Code.Algebra.Bundles.du_'42''45'monoid_1916
      (coe
         MAlonzo.Code.Algebra.Bundles.du_semiringWithoutAnnihilatingZero_2048
         (coe v2))
-- Algebra.Solver.Ring.AlmostCommutativeRing.AlmostCommutativeRing._.semigroup
d_semigroup_328 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  T_AlmostCommutativeRing_176 ->
  MAlonzo.Code.Algebra.Bundles.T_Semigroup_206
d_semigroup_328 ~v0 ~v1 v2 = du_semigroup_328 v2
du_semigroup_328 ::
  T_AlmostCommutativeRing_176 ->
  MAlonzo.Code.Algebra.Bundles.T_Semigroup_206
du_semigroup_328 v0
  = let v1 = coe du_commutativeSemiring_316 (coe v0) in
    let v2
          = coe MAlonzo.Code.Algebra.Bundles.du_semiring_2222 (coe v1) in
    let v3
          = coe
              MAlonzo.Code.Algebra.Bundles.du_semiringWithoutAnnihilatingZero_2048
              (coe v2) in
    coe
      MAlonzo.Code.Algebra.Bundles.du_semigroup_566
      (coe MAlonzo.Code.Algebra.Bundles.du_'42''45'monoid_1916 (coe v3))
-- Algebra.Solver.Ring.AlmostCommutativeRing.AlmostCommutativeRing._.+-commutativeMonoid
d_'43''45'commutativeMonoid_330 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  T_AlmostCommutativeRing_176 ->
  MAlonzo.Code.Algebra.Bundles.T_CommutativeMonoid_582
d_'43''45'commutativeMonoid_330 ~v0 ~v1 v2
  = du_'43''45'commutativeMonoid_330 v2
du_'43''45'commutativeMonoid_330 ::
  T_AlmostCommutativeRing_176 ->
  MAlonzo.Code.Algebra.Bundles.T_CommutativeMonoid_582
du_'43''45'commutativeMonoid_330 v0
  = let v1 = coe du_commutativeSemiring_316 (coe v0) in
    let v2
          = coe MAlonzo.Code.Algebra.Bundles.du_semiring_2222 (coe v1) in
    coe
      MAlonzo.Code.Algebra.Bundles.du_'43''45'commutativeMonoid_1896
      (coe
         MAlonzo.Code.Algebra.Bundles.du_semiringWithoutAnnihilatingZero_2048
         (coe v2))
-- Algebra.Solver.Ring.AlmostCommutativeRing.AlmostCommutativeRing._.magma
d_magma_332 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  T_AlmostCommutativeRing_176 ->
  MAlonzo.Code.Algebra.Bundles.T_Magma_36
d_magma_332 ~v0 ~v1 v2 = du_magma_332 v2
du_magma_332 ::
  T_AlmostCommutativeRing_176 ->
  MAlonzo.Code.Algebra.Bundles.T_Magma_36
du_magma_332 v0
  = let v1 = coe du_commutativeSemiring_316 (coe v0) in
    let v2
          = coe MAlonzo.Code.Algebra.Bundles.du_semiring_2222 (coe v1) in
    let v3
          = coe
              MAlonzo.Code.Algebra.Bundles.du_semiringWithoutAnnihilatingZero_2048
              (coe v2) in
    let v4
          = coe
              MAlonzo.Code.Algebra.Bundles.du_'43''45'commutativeMonoid_1896
              (coe v3) in
    let v5 = coe MAlonzo.Code.Algebra.Bundles.du_monoid_650 (coe v4) in
    coe
      MAlonzo.Code.Algebra.Bundles.du_magma_254
      (coe MAlonzo.Code.Algebra.Bundles.du_semigroup_566 (coe v5))
-- Algebra.Solver.Ring.AlmostCommutativeRing.AlmostCommutativeRing._.monoid
d_monoid_334 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  T_AlmostCommutativeRing_176 ->
  MAlonzo.Code.Algebra.Bundles.T_Monoid_506
d_monoid_334 ~v0 ~v1 v2 = du_monoid_334 v2
du_monoid_334 ::
  T_AlmostCommutativeRing_176 ->
  MAlonzo.Code.Algebra.Bundles.T_Monoid_506
du_monoid_334 v0
  = let v1 = coe du_commutativeSemiring_316 (coe v0) in
    let v2
          = coe MAlonzo.Code.Algebra.Bundles.du_semiring_2222 (coe v1) in
    let v3
          = coe
              MAlonzo.Code.Algebra.Bundles.du_semiringWithoutAnnihilatingZero_2048
              (coe v2) in
    coe
      MAlonzo.Code.Algebra.Bundles.du_monoid_650
      (coe
         MAlonzo.Code.Algebra.Bundles.du_'43''45'commutativeMonoid_1896
         (coe v3))
-- Algebra.Solver.Ring.AlmostCommutativeRing.AlmostCommutativeRing._.semigroup
d_semigroup_336 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  T_AlmostCommutativeRing_176 ->
  MAlonzo.Code.Algebra.Bundles.T_Semigroup_206
d_semigroup_336 ~v0 ~v1 v2 = du_semigroup_336 v2
du_semigroup_336 ::
  T_AlmostCommutativeRing_176 ->
  MAlonzo.Code.Algebra.Bundles.T_Semigroup_206
du_semigroup_336 v0
  = let v1 = coe du_commutativeSemiring_316 (coe v0) in
    let v2
          = coe MAlonzo.Code.Algebra.Bundles.du_semiring_2222 (coe v1) in
    let v3
          = coe
              MAlonzo.Code.Algebra.Bundles.du_semiringWithoutAnnihilatingZero_2048
              (coe v2) in
    let v4
          = coe
              MAlonzo.Code.Algebra.Bundles.du_'43''45'commutativeMonoid_1896
              (coe v3) in
    coe
      MAlonzo.Code.Algebra.Bundles.du_semigroup_566
      (coe MAlonzo.Code.Algebra.Bundles.du_monoid_650 (coe v4))
-- Algebra.Solver.Ring.AlmostCommutativeRing.AlmostCommutativeRing._.semiring
d_semiring_338 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  T_AlmostCommutativeRing_176 ->
  MAlonzo.Code.Algebra.Bundles.T_Semiring_1932
d_semiring_338 ~v0 ~v1 v2 = du_semiring_338 v2
du_semiring_338 ::
  T_AlmostCommutativeRing_176 ->
  MAlonzo.Code.Algebra.Bundles.T_Semiring_1932
du_semiring_338 v0
  = coe
      MAlonzo.Code.Algebra.Bundles.du_semiring_2222
      (coe du_commutativeSemiring_316 (coe v0))
-- Algebra.Solver.Ring.AlmostCommutativeRing.AlmostCommutativeRing.rawRing
d_rawRing_340 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  T_AlmostCommutativeRing_176 ->
  MAlonzo.Code.Algebra.Bundles.T_RawRing_2460
d_rawRing_340 ~v0 ~v1 v2 = du_rawRing_340 v2
du_rawRing_340 ::
  T_AlmostCommutativeRing_176 ->
  MAlonzo.Code.Algebra.Bundles.T_RawRing_2460
du_rawRing_340 v0
  = coe
      MAlonzo.Code.Algebra.Bundles.C_RawRing'46'constructor_37445
      (d__'43'__202 (coe v0)) (d__'42'__204 (coe v0))
      (d_'45'__206 (coe v0)) (d_0'35'_208 (coe v0))
      (d_1'35'_210 (coe v0))
-- Algebra.Solver.Ring.AlmostCommutativeRing._-Raw-AlmostCommutative⟶_
d__'45'Raw'45'AlmostCommutative'10230'__354 a0 a1 a2 a3 a4 a5 = ()
data T__'45'Raw'45'AlmostCommutative'10230'__354
  = C__'45'Raw'45'AlmostCommutative'10230'_'46'constructor_8329 (AgdaAny ->
                                                                 AgdaAny)
                                                                (AgdaAny -> AgdaAny -> AgdaAny)
                                                                (AgdaAny -> AgdaAny -> AgdaAny)
                                                                (AgdaAny -> AgdaAny) AgdaAny AgdaAny
-- Algebra.Solver.Ring.AlmostCommutativeRing.F._*_
d__'42'__370 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Algebra.Bundles.T_RawRing_2460 ->
  T_AlmostCommutativeRing_176 -> AgdaAny -> AgdaAny -> AgdaAny
d__'42'__370 ~v0 ~v1 ~v2 ~v3 v4 ~v5 = du__'42'__370 v4
du__'42'__370 ::
  MAlonzo.Code.Algebra.Bundles.T_RawRing_2460 ->
  AgdaAny -> AgdaAny -> AgdaAny
du__'42'__370 v0
  = coe MAlonzo.Code.Algebra.Bundles.d__'42'__2486 (coe v0)
-- Algebra.Solver.Ring.AlmostCommutativeRing.F._+_
d__'43'__372 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Algebra.Bundles.T_RawRing_2460 ->
  T_AlmostCommutativeRing_176 -> AgdaAny -> AgdaAny -> AgdaAny
d__'43'__372 ~v0 ~v1 ~v2 ~v3 v4 ~v5 = du__'43'__372 v4
du__'43'__372 ::
  MAlonzo.Code.Algebra.Bundles.T_RawRing_2460 ->
  AgdaAny -> AgdaAny -> AgdaAny
du__'43'__372 v0
  = coe MAlonzo.Code.Algebra.Bundles.d__'43'__2484 (coe v0)
-- Algebra.Solver.Ring.AlmostCommutativeRing.F.-_
d_'45'__388 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Algebra.Bundles.T_RawRing_2460 ->
  T_AlmostCommutativeRing_176 -> AgdaAny -> AgdaAny
d_'45'__388 ~v0 ~v1 ~v2 ~v3 v4 ~v5 = du_'45'__388 v4
du_'45'__388 ::
  MAlonzo.Code.Algebra.Bundles.T_RawRing_2460 -> AgdaAny -> AgdaAny
du_'45'__388 v0
  = coe MAlonzo.Code.Algebra.Bundles.d_'45'__2488 (coe v0)
-- Algebra.Solver.Ring.AlmostCommutativeRing.F.0#
d_0'35'_390 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Algebra.Bundles.T_RawRing_2460 ->
  T_AlmostCommutativeRing_176 -> AgdaAny
d_0'35'_390 ~v0 ~v1 ~v2 ~v3 v4 ~v5 = du_0'35'_390 v4
du_0'35'_390 ::
  MAlonzo.Code.Algebra.Bundles.T_RawRing_2460 -> AgdaAny
du_0'35'_390 v0
  = coe MAlonzo.Code.Algebra.Bundles.d_0'35'_2490 (coe v0)
-- Algebra.Solver.Ring.AlmostCommutativeRing.F.1#
d_1'35'_392 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Algebra.Bundles.T_RawRing_2460 ->
  T_AlmostCommutativeRing_176 -> AgdaAny
d_1'35'_392 ~v0 ~v1 ~v2 ~v3 v4 ~v5 = du_1'35'_392 v4
du_1'35'_392 ::
  MAlonzo.Code.Algebra.Bundles.T_RawRing_2460 -> AgdaAny
du_1'35'_392 v0
  = coe MAlonzo.Code.Algebra.Bundles.d_1'35'_2492 (coe v0)
-- Algebra.Solver.Ring.AlmostCommutativeRing.F.Carrier
d_Carrier_394 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Algebra.Bundles.T_RawRing_2460 ->
  T_AlmostCommutativeRing_176 -> ()
d_Carrier_394 = erased
-- Algebra.Solver.Ring.AlmostCommutativeRing.T._*_
d__'42'__400 ::
  T_AlmostCommutativeRing_176 -> AgdaAny -> AgdaAny -> AgdaAny
d__'42'__400 v0 = coe d__'42'__204 (coe v0)
-- Algebra.Solver.Ring.AlmostCommutativeRing.T._+_
d__'43'__402 ::
  T_AlmostCommutativeRing_176 -> AgdaAny -> AgdaAny -> AgdaAny
d__'43'__402 v0 = coe d__'43'__202 (coe v0)
-- Algebra.Solver.Ring.AlmostCommutativeRing.T._≈_
d__'8776'__404 ::
  T_AlmostCommutativeRing_176 -> AgdaAny -> AgdaAny -> ()
d__'8776'__404 = erased
-- Algebra.Solver.Ring.AlmostCommutativeRing.T.assoc
d_assoc_406 ::
  T_AlmostCommutativeRing_176 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_assoc_406 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_assoc_204
      (coe
         MAlonzo.Code.Algebra.Structures.d_isSemigroup_368
         (coe
            MAlonzo.Code.Algebra.Structures.d_'42''45'isMonoid_1160
            (coe
               MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1252
               (coe
                  MAlonzo.Code.Algebra.Structures.d_isSemiring_1358
                  (coe
                     d_isCommutativeSemiring_62
                     (coe d_isAlmostCommutativeRing_212 (coe v0)))))))
-- Algebra.Solver.Ring.AlmostCommutativeRing.T.*-comm
d_'42''45'comm_408 ::
  T_AlmostCommutativeRing_176 -> AgdaAny -> AgdaAny -> AgdaAny
d_'42''45'comm_408 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_'42''45'comm_1360
      (coe
         d_isCommutativeSemiring_62
         (coe d_isAlmostCommutativeRing_212 (coe v0)))
-- Algebra.Solver.Ring.AlmostCommutativeRing.T.*-commutativeMonoid
d_'42''45'commutativeMonoid_410 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Algebra.Bundles.T_RawRing_2460 ->
  T_AlmostCommutativeRing_176 ->
  MAlonzo.Code.Algebra.Bundles.T_CommutativeMonoid_582
d_'42''45'commutativeMonoid_410 ~v0 ~v1 ~v2 ~v3 ~v4 v5
  = du_'42''45'commutativeMonoid_410 v5
du_'42''45'commutativeMonoid_410 ::
  T_AlmostCommutativeRing_176 ->
  MAlonzo.Code.Algebra.Bundles.T_CommutativeMonoid_582
du_'42''45'commutativeMonoid_410 v0
  = coe
      MAlonzo.Code.Algebra.Bundles.du_'42''45'commutativeMonoid_2262
      (coe du_commutativeSemiring_316 (coe v0))
-- Algebra.Solver.Ring.AlmostCommutativeRing.T.commutativeSemigroup
d_commutativeSemigroup_412 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Algebra.Bundles.T_RawRing_2460 ->
  T_AlmostCommutativeRing_176 ->
  MAlonzo.Code.Algebra.Bundles.T_CommutativeSemigroup_332
d_commutativeSemigroup_412 ~v0 ~v1 ~v2 ~v3 ~v4 v5
  = du_commutativeSemigroup_412 v5
du_commutativeSemigroup_412 ::
  T_AlmostCommutativeRing_176 ->
  MAlonzo.Code.Algebra.Bundles.T_CommutativeSemigroup_332
du_commutativeSemigroup_412 v0
  = let v1 = coe du_commutativeSemiring_316 (coe v0) in
    coe
      MAlonzo.Code.Algebra.Bundles.du_commutativeSemigroup_664
      (coe
         MAlonzo.Code.Algebra.Bundles.du_'42''45'commutativeMonoid_2262
         (coe v1))
-- Algebra.Solver.Ring.AlmostCommutativeRing.T.∙-cong
d_'8729''45'cong_414 ::
  T_AlmostCommutativeRing_176 ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8729''45'cong_414 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_'8729''45'cong_96
      (coe
         MAlonzo.Code.Algebra.Structures.d_isMagma_202
         (coe
            MAlonzo.Code.Algebra.Structures.d_isSemigroup_368
            (coe
               MAlonzo.Code.Algebra.Structures.d_'42''45'isMonoid_1160
               (coe
                  MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1252
                  (coe
                     MAlonzo.Code.Algebra.Structures.d_isSemiring_1358
                     (coe
                        d_isCommutativeSemiring_62
                        (coe d_isAlmostCommutativeRing_212 (coe v0))))))))
-- Algebra.Solver.Ring.AlmostCommutativeRing.T.∙-congʳ
d_'8729''45'cong'691'_416 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Algebra.Bundles.T_RawRing_2460 ->
  T_AlmostCommutativeRing_176 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8729''45'cong'691'_416 ~v0 ~v1 ~v2 ~v3 ~v4 v5
  = du_'8729''45'cong'691'_416 v5
du_'8729''45'cong'691'_416 ::
  T_AlmostCommutativeRing_176 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_'8729''45'cong'691'_416 v0
  = let v1 = d_isAlmostCommutativeRing_212 (coe v0) in
    let v2 = d_isCommutativeSemiring_62 (coe v1) in
    let v3
          = MAlonzo.Code.Algebra.Structures.d_isSemiring_1358 (coe v2) in
    let v4
          = MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1252
              (coe v3) in
    let v5
          = MAlonzo.Code.Algebra.Structures.d_'42''45'isMonoid_1160
              (coe v4) in
    let v6
          = MAlonzo.Code.Algebra.Structures.d_isSemigroup_368 (coe v5) in
    coe
      MAlonzo.Code.Algebra.Structures.du_'8729''45'cong'691'_116
      (coe MAlonzo.Code.Algebra.Structures.d_isMagma_202 (coe v6))
-- Algebra.Solver.Ring.AlmostCommutativeRing.T.∙-congˡ
d_'8729''45'cong'737'_418 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Algebra.Bundles.T_RawRing_2460 ->
  T_AlmostCommutativeRing_176 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8729''45'cong'737'_418 ~v0 ~v1 ~v2 ~v3 ~v4 v5
  = du_'8729''45'cong'737'_418 v5
du_'8729''45'cong'737'_418 ::
  T_AlmostCommutativeRing_176 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_'8729''45'cong'737'_418 v0
  = let v1 = d_isAlmostCommutativeRing_212 (coe v0) in
    let v2 = d_isCommutativeSemiring_62 (coe v1) in
    let v3
          = MAlonzo.Code.Algebra.Structures.d_isSemiring_1358 (coe v2) in
    let v4
          = MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1252
              (coe v3) in
    let v5
          = MAlonzo.Code.Algebra.Structures.d_'42''45'isMonoid_1160
              (coe v4) in
    let v6
          = MAlonzo.Code.Algebra.Structures.d_isSemigroup_368 (coe v5) in
    coe
      MAlonzo.Code.Algebra.Structures.du_'8729''45'cong'737'_112
      (coe MAlonzo.Code.Algebra.Structures.d_isMagma_202 (coe v6))
-- Algebra.Solver.Ring.AlmostCommutativeRing.T.identity
d_identity_420 ::
  T_AlmostCommutativeRing_176 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_identity_420 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_identity_370
      (coe
         MAlonzo.Code.Algebra.Structures.d_'42''45'isMonoid_1160
         (coe
            MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1252
            (coe
               MAlonzo.Code.Algebra.Structures.d_isSemiring_1358
               (coe
                  d_isCommutativeSemiring_62
                  (coe d_isAlmostCommutativeRing_212 (coe v0))))))
-- Algebra.Solver.Ring.AlmostCommutativeRing.T.identityʳ
d_identity'691'_422 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Algebra.Bundles.T_RawRing_2460 ->
  T_AlmostCommutativeRing_176 -> AgdaAny -> AgdaAny
d_identity'691'_422 ~v0 ~v1 ~v2 ~v3 ~v4 v5
  = du_identity'691'_422 v5
du_identity'691'_422 ::
  T_AlmostCommutativeRing_176 -> AgdaAny -> AgdaAny
du_identity'691'_422 v0
  = let v1 = d_isAlmostCommutativeRing_212 (coe v0) in
    let v2 = d_isCommutativeSemiring_62 (coe v1) in
    let v3
          = MAlonzo.Code.Algebra.Structures.d_isSemiring_1358 (coe v2) in
    let v4
          = MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1252
              (coe v3) in
    coe
      MAlonzo.Code.Algebra.Structures.du_identity'691'_400
      (coe
         MAlonzo.Code.Algebra.Structures.d_'42''45'isMonoid_1160 (coe v4))
-- Algebra.Solver.Ring.AlmostCommutativeRing.T.identityˡ
d_identity'737'_424 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Algebra.Bundles.T_RawRing_2460 ->
  T_AlmostCommutativeRing_176 -> AgdaAny -> AgdaAny
d_identity'737'_424 ~v0 ~v1 ~v2 ~v3 ~v4 v5
  = du_identity'737'_424 v5
du_identity'737'_424 ::
  T_AlmostCommutativeRing_176 -> AgdaAny -> AgdaAny
du_identity'737'_424 v0
  = let v1 = d_isAlmostCommutativeRing_212 (coe v0) in
    let v2 = d_isCommutativeSemiring_62 (coe v1) in
    let v3
          = MAlonzo.Code.Algebra.Structures.d_isSemiring_1358 (coe v2) in
    let v4
          = MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1252
              (coe v3) in
    coe
      MAlonzo.Code.Algebra.Structures.du_identity'737'_398
      (coe
         MAlonzo.Code.Algebra.Structures.d_'42''45'isMonoid_1160 (coe v4))
-- Algebra.Solver.Ring.AlmostCommutativeRing.T.isCommutativeMagma
d_isCommutativeMagma_426 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Algebra.Bundles.T_RawRing_2460 ->
  T_AlmostCommutativeRing_176 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMagma_122
d_isCommutativeMagma_426 ~v0 ~v1 ~v2 ~v3 ~v4 v5
  = du_isCommutativeMagma_426 v5
du_isCommutativeMagma_426 ::
  T_AlmostCommutativeRing_176 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMagma_122
du_isCommutativeMagma_426 v0
  = let v1 = d_isAlmostCommutativeRing_212 (coe v0) in
    let v2 = d_isCommutativeSemiring_62 (coe v1) in
    let v3
          = coe
              MAlonzo.Code.Algebra.Structures.du_isCommutativeSemiringWithoutOne_1444
              (coe v2) in
    coe
      MAlonzo.Code.Algebra.Structures.du_isCommutativeMagma_308
      (coe
         MAlonzo.Code.Algebra.Structures.du_'42''45'isCommutativeSemigroup_1128
         (coe v3))
-- Algebra.Solver.Ring.AlmostCommutativeRing.T.*-isCommutativeMonoid
d_'42''45'isCommutativeMonoid_428 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Algebra.Bundles.T_RawRing_2460 ->
  T_AlmostCommutativeRing_176 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMonoid_406
d_'42''45'isCommutativeMonoid_428 ~v0 ~v1 ~v2 ~v3 ~v4 v5
  = du_'42''45'isCommutativeMonoid_428 v5
du_'42''45'isCommutativeMonoid_428 ::
  T_AlmostCommutativeRing_176 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMonoid_406
du_'42''45'isCommutativeMonoid_428 v0
  = let v1 = d_isAlmostCommutativeRing_212 (coe v0) in
    coe
      MAlonzo.Code.Algebra.Structures.du_'42''45'isCommutativeMonoid_1452
      (coe d_isCommutativeSemiring_62 (coe v1))
-- Algebra.Solver.Ring.AlmostCommutativeRing.T.*-isCommutativeSemigroup
d_'42''45'isCommutativeSemigroup_430 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Algebra.Bundles.T_RawRing_2460 ->
  T_AlmostCommutativeRing_176 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemigroup_270
d_'42''45'isCommutativeSemigroup_430 ~v0 ~v1 ~v2 ~v3 ~v4 v5
  = du_'42''45'isCommutativeSemigroup_430 v5
du_'42''45'isCommutativeSemigroup_430 ::
  T_AlmostCommutativeRing_176 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemigroup_270
du_'42''45'isCommutativeSemigroup_430 v0
  = let v1 = d_isAlmostCommutativeRing_212 (coe v0) in
    let v2 = d_isCommutativeSemiring_62 (coe v1) in
    coe
      MAlonzo.Code.Algebra.Structures.du_'42''45'isCommutativeSemigroup_1128
      (coe
         MAlonzo.Code.Algebra.Structures.du_isCommutativeSemiringWithoutOne_1444
         (coe v2))
-- Algebra.Solver.Ring.AlmostCommutativeRing.T.isMagma
d_isMagma_432 ::
  T_AlmostCommutativeRing_176 ->
  MAlonzo.Code.Algebra.Structures.T_IsMagma_86
d_isMagma_432 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isMagma_202
      (coe
         MAlonzo.Code.Algebra.Structures.d_isSemigroup_368
         (coe
            MAlonzo.Code.Algebra.Structures.d_'42''45'isMonoid_1160
            (coe
               MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1252
               (coe
                  MAlonzo.Code.Algebra.Structures.d_isSemiring_1358
                  (coe
                     d_isCommutativeSemiring_62
                     (coe d_isAlmostCommutativeRing_212 (coe v0)))))))
-- Algebra.Solver.Ring.AlmostCommutativeRing.T.*-isMonoid
d_'42''45'isMonoid_434 ::
  T_AlmostCommutativeRing_176 ->
  MAlonzo.Code.Algebra.Structures.T_IsMonoid_358
d_'42''45'isMonoid_434 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_'42''45'isMonoid_1160
      (coe
         MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1252
         (coe
            MAlonzo.Code.Algebra.Structures.d_isSemiring_1358
            (coe
               d_isCommutativeSemiring_62
               (coe d_isAlmostCommutativeRing_212 (coe v0)))))
-- Algebra.Solver.Ring.AlmostCommutativeRing.T.isSemigroup
d_isSemigroup_436 ::
  T_AlmostCommutativeRing_176 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemigroup_194
d_isSemigroup_436 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isSemigroup_368
      (coe
         MAlonzo.Code.Algebra.Structures.d_'42''45'isMonoid_1160
         (coe
            MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1252
            (coe
               MAlonzo.Code.Algebra.Structures.d_isSemiring_1358
               (coe
                  d_isCommutativeSemiring_62
                  (coe d_isAlmostCommutativeRing_212 (coe v0))))))
-- Algebra.Solver.Ring.AlmostCommutativeRing.T.magma
d_magma_438 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Algebra.Bundles.T_RawRing_2460 ->
  T_AlmostCommutativeRing_176 ->
  MAlonzo.Code.Algebra.Bundles.T_Magma_36
d_magma_438 ~v0 ~v1 ~v2 ~v3 ~v4 v5 = du_magma_438 v5
du_magma_438 ::
  T_AlmostCommutativeRing_176 ->
  MAlonzo.Code.Algebra.Bundles.T_Magma_36
du_magma_438 v0
  = let v1 = coe du_commutativeSemiring_316 (coe v0) in
    let v2
          = coe MAlonzo.Code.Algebra.Bundles.du_semiring_2222 (coe v1) in
    let v3
          = coe
              MAlonzo.Code.Algebra.Bundles.du_semiringWithoutAnnihilatingZero_2048
              (coe v2) in
    let v4
          = coe
              MAlonzo.Code.Algebra.Bundles.du_'42''45'monoid_1916 (coe v3) in
    coe
      MAlonzo.Code.Algebra.Bundles.du_magma_254
      (coe MAlonzo.Code.Algebra.Bundles.du_semigroup_566 (coe v4))
-- Algebra.Solver.Ring.AlmostCommutativeRing.T.*-monoid
d_'42''45'monoid_440 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Algebra.Bundles.T_RawRing_2460 ->
  T_AlmostCommutativeRing_176 ->
  MAlonzo.Code.Algebra.Bundles.T_Monoid_506
d_'42''45'monoid_440 ~v0 ~v1 ~v2 ~v3 ~v4 v5
  = du_'42''45'monoid_440 v5
du_'42''45'monoid_440 ::
  T_AlmostCommutativeRing_176 ->
  MAlonzo.Code.Algebra.Bundles.T_Monoid_506
du_'42''45'monoid_440 v0
  = let v1 = coe du_commutativeSemiring_316 (coe v0) in
    let v2
          = coe MAlonzo.Code.Algebra.Bundles.du_semiring_2222 (coe v1) in
    coe
      MAlonzo.Code.Algebra.Bundles.du_'42''45'monoid_1916
      (coe
         MAlonzo.Code.Algebra.Bundles.du_semiringWithoutAnnihilatingZero_2048
         (coe v2))
-- Algebra.Solver.Ring.AlmostCommutativeRing.T.semigroup
d_semigroup_442 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Algebra.Bundles.T_RawRing_2460 ->
  T_AlmostCommutativeRing_176 ->
  MAlonzo.Code.Algebra.Bundles.T_Semigroup_206
d_semigroup_442 ~v0 ~v1 ~v2 ~v3 ~v4 v5 = du_semigroup_442 v5
du_semigroup_442 ::
  T_AlmostCommutativeRing_176 ->
  MAlonzo.Code.Algebra.Bundles.T_Semigroup_206
du_semigroup_442 v0
  = let v1 = coe du_commutativeSemiring_316 (coe v0) in
    let v2
          = coe MAlonzo.Code.Algebra.Bundles.du_semiring_2222 (coe v1) in
    let v3
          = coe
              MAlonzo.Code.Algebra.Bundles.du_semiringWithoutAnnihilatingZero_2048
              (coe v2) in
    coe
      MAlonzo.Code.Algebra.Bundles.du_semigroup_566
      (coe MAlonzo.Code.Algebra.Bundles.du_'42''45'monoid_1916 (coe v3))
-- Algebra.Solver.Ring.AlmostCommutativeRing.T.assoc
d_assoc_444 ::
  T_AlmostCommutativeRing_176 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_assoc_444 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_assoc_204
      (coe
         MAlonzo.Code.Algebra.Structures.d_isSemigroup_368
         (coe
            MAlonzo.Code.Algebra.Structures.d_isMonoid_416
            (coe
               MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_1158
               (coe
                  MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1252
                  (coe
                     MAlonzo.Code.Algebra.Structures.d_isSemiring_1358
                     (coe
                        d_isCommutativeSemiring_62
                        (coe d_isAlmostCommutativeRing_212 (coe v0))))))))
-- Algebra.Solver.Ring.AlmostCommutativeRing.T.comm
d_comm_446 ::
  T_AlmostCommutativeRing_176 -> AgdaAny -> AgdaAny -> AgdaAny
d_comm_446 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_comm_418
      (coe
         MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_1158
         (coe
            MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1252
            (coe
               MAlonzo.Code.Algebra.Structures.d_isSemiring_1358
               (coe
                  d_isCommutativeSemiring_62
                  (coe d_isAlmostCommutativeRing_212 (coe v0))))))
-- Algebra.Solver.Ring.AlmostCommutativeRing.T.+-commutativeMonoid
d_'43''45'commutativeMonoid_448 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Algebra.Bundles.T_RawRing_2460 ->
  T_AlmostCommutativeRing_176 ->
  MAlonzo.Code.Algebra.Bundles.T_CommutativeMonoid_582
d_'43''45'commutativeMonoid_448 ~v0 ~v1 ~v2 ~v3 ~v4 v5
  = du_'43''45'commutativeMonoid_448 v5
du_'43''45'commutativeMonoid_448 ::
  T_AlmostCommutativeRing_176 ->
  MAlonzo.Code.Algebra.Bundles.T_CommutativeMonoid_582
du_'43''45'commutativeMonoid_448 v0
  = let v1 = coe du_commutativeSemiring_316 (coe v0) in
    let v2
          = coe MAlonzo.Code.Algebra.Bundles.du_semiring_2222 (coe v1) in
    coe
      MAlonzo.Code.Algebra.Bundles.du_'43''45'commutativeMonoid_1896
      (coe
         MAlonzo.Code.Algebra.Bundles.du_semiringWithoutAnnihilatingZero_2048
         (coe v2))
-- Algebra.Solver.Ring.AlmostCommutativeRing.T.∙-cong
d_'8729''45'cong_450 ::
  T_AlmostCommutativeRing_176 ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8729''45'cong_450 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_'8729''45'cong_96
      (coe
         MAlonzo.Code.Algebra.Structures.d_isMagma_202
         (coe
            MAlonzo.Code.Algebra.Structures.d_isSemigroup_368
            (coe
               MAlonzo.Code.Algebra.Structures.d_isMonoid_416
               (coe
                  MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_1158
                  (coe
                     MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1252
                     (coe
                        MAlonzo.Code.Algebra.Structures.d_isSemiring_1358
                        (coe
                           d_isCommutativeSemiring_62
                           (coe d_isAlmostCommutativeRing_212 (coe v0)))))))))
-- Algebra.Solver.Ring.AlmostCommutativeRing.T.∙-congʳ
d_'8729''45'cong'691'_452 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Algebra.Bundles.T_RawRing_2460 ->
  T_AlmostCommutativeRing_176 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8729''45'cong'691'_452 ~v0 ~v1 ~v2 ~v3 ~v4 v5
  = du_'8729''45'cong'691'_452 v5
du_'8729''45'cong'691'_452 ::
  T_AlmostCommutativeRing_176 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_'8729''45'cong'691'_452 v0
  = let v1 = d_isAlmostCommutativeRing_212 (coe v0) in
    let v2 = d_isCommutativeSemiring_62 (coe v1) in
    let v3
          = MAlonzo.Code.Algebra.Structures.d_isSemiring_1358 (coe v2) in
    let v4
          = MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1252
              (coe v3) in
    let v5
          = MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_1158
              (coe v4) in
    let v6 = MAlonzo.Code.Algebra.Structures.d_isMonoid_416 (coe v5) in
    let v7
          = MAlonzo.Code.Algebra.Structures.d_isSemigroup_368 (coe v6) in
    coe
      MAlonzo.Code.Algebra.Structures.du_'8729''45'cong'691'_116
      (coe MAlonzo.Code.Algebra.Structures.d_isMagma_202 (coe v7))
-- Algebra.Solver.Ring.AlmostCommutativeRing.T.∙-congˡ
d_'8729''45'cong'737'_454 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Algebra.Bundles.T_RawRing_2460 ->
  T_AlmostCommutativeRing_176 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8729''45'cong'737'_454 ~v0 ~v1 ~v2 ~v3 ~v4 v5
  = du_'8729''45'cong'737'_454 v5
du_'8729''45'cong'737'_454 ::
  T_AlmostCommutativeRing_176 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_'8729''45'cong'737'_454 v0
  = let v1 = d_isAlmostCommutativeRing_212 (coe v0) in
    let v2 = d_isCommutativeSemiring_62 (coe v1) in
    let v3
          = MAlonzo.Code.Algebra.Structures.d_isSemiring_1358 (coe v2) in
    let v4
          = MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1252
              (coe v3) in
    let v5
          = MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_1158
              (coe v4) in
    let v6 = MAlonzo.Code.Algebra.Structures.d_isMonoid_416 (coe v5) in
    let v7
          = MAlonzo.Code.Algebra.Structures.d_isSemigroup_368 (coe v6) in
    coe
      MAlonzo.Code.Algebra.Structures.du_'8729''45'cong'737'_112
      (coe MAlonzo.Code.Algebra.Structures.d_isMagma_202 (coe v7))
-- Algebra.Solver.Ring.AlmostCommutativeRing.T.identity
d_identity_456 ::
  T_AlmostCommutativeRing_176 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_identity_456 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_identity_370
      (coe
         MAlonzo.Code.Algebra.Structures.d_isMonoid_416
         (coe
            MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_1158
            (coe
               MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1252
               (coe
                  MAlonzo.Code.Algebra.Structures.d_isSemiring_1358
                  (coe
                     d_isCommutativeSemiring_62
                     (coe d_isAlmostCommutativeRing_212 (coe v0)))))))
-- Algebra.Solver.Ring.AlmostCommutativeRing.T.identityʳ
d_identity'691'_458 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Algebra.Bundles.T_RawRing_2460 ->
  T_AlmostCommutativeRing_176 -> AgdaAny -> AgdaAny
d_identity'691'_458 ~v0 ~v1 ~v2 ~v3 ~v4 v5
  = du_identity'691'_458 v5
du_identity'691'_458 ::
  T_AlmostCommutativeRing_176 -> AgdaAny -> AgdaAny
du_identity'691'_458 v0
  = let v1 = d_isAlmostCommutativeRing_212 (coe v0) in
    let v2 = d_isCommutativeSemiring_62 (coe v1) in
    let v3
          = MAlonzo.Code.Algebra.Structures.d_isSemiring_1358 (coe v2) in
    let v4
          = MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1252
              (coe v3) in
    let v5
          = MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_1158
              (coe v4) in
    coe
      MAlonzo.Code.Algebra.Structures.du_identity'691'_400
      (coe MAlonzo.Code.Algebra.Structures.d_isMonoid_416 (coe v5))
-- Algebra.Solver.Ring.AlmostCommutativeRing.T.identityˡ
d_identity'737'_460 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Algebra.Bundles.T_RawRing_2460 ->
  T_AlmostCommutativeRing_176 -> AgdaAny -> AgdaAny
d_identity'737'_460 ~v0 ~v1 ~v2 ~v3 ~v4 v5
  = du_identity'737'_460 v5
du_identity'737'_460 ::
  T_AlmostCommutativeRing_176 -> AgdaAny -> AgdaAny
du_identity'737'_460 v0
  = let v1 = d_isAlmostCommutativeRing_212 (coe v0) in
    let v2 = d_isCommutativeSemiring_62 (coe v1) in
    let v3
          = MAlonzo.Code.Algebra.Structures.d_isSemiring_1358 (coe v2) in
    let v4
          = MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1252
              (coe v3) in
    let v5
          = MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_1158
              (coe v4) in
    coe
      MAlonzo.Code.Algebra.Structures.du_identity'737'_398
      (coe MAlonzo.Code.Algebra.Structures.d_isMonoid_416 (coe v5))
-- Algebra.Solver.Ring.AlmostCommutativeRing.T.isCommutativeMagma
d_isCommutativeMagma_462 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Algebra.Bundles.T_RawRing_2460 ->
  T_AlmostCommutativeRing_176 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMagma_122
d_isCommutativeMagma_462 ~v0 ~v1 ~v2 ~v3 ~v4 v5
  = du_isCommutativeMagma_462 v5
du_isCommutativeMagma_462 ::
  T_AlmostCommutativeRing_176 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMagma_122
du_isCommutativeMagma_462 v0
  = let v1 = d_isAlmostCommutativeRing_212 (coe v0) in
    let v2 = d_isCommutativeSemiring_62 (coe v1) in
    let v3
          = MAlonzo.Code.Algebra.Structures.d_isSemiring_1358 (coe v2) in
    let v4
          = MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1252
              (coe v3) in
    let v5
          = MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_1158
              (coe v4) in
    coe
      MAlonzo.Code.Algebra.Structures.du_isCommutativeMagma_308
      (coe
         MAlonzo.Code.Algebra.Structures.du_isCommutativeSemigroup_454
         (coe v5))
-- Algebra.Solver.Ring.AlmostCommutativeRing.T.+-isCommutativeMonoid
d_'43''45'isCommutativeMonoid_464 ::
  T_AlmostCommutativeRing_176 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMonoid_406
d_'43''45'isCommutativeMonoid_464 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_1158
      (coe
         MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1252
         (coe
            MAlonzo.Code.Algebra.Structures.d_isSemiring_1358
            (coe
               d_isCommutativeSemiring_62
               (coe d_isAlmostCommutativeRing_212 (coe v0)))))
-- Algebra.Solver.Ring.AlmostCommutativeRing.T.isCommutativeSemigroup
d_isCommutativeSemigroup_466 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Algebra.Bundles.T_RawRing_2460 ->
  T_AlmostCommutativeRing_176 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemigroup_270
d_isCommutativeSemigroup_466 ~v0 ~v1 ~v2 ~v3 ~v4 v5
  = du_isCommutativeSemigroup_466 v5
du_isCommutativeSemigroup_466 ::
  T_AlmostCommutativeRing_176 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemigroup_270
du_isCommutativeSemigroup_466 v0
  = let v1 = d_isAlmostCommutativeRing_212 (coe v0) in
    let v2 = d_isCommutativeSemiring_62 (coe v1) in
    let v3
          = MAlonzo.Code.Algebra.Structures.d_isSemiring_1358 (coe v2) in
    let v4
          = MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1252
              (coe v3) in
    coe
      MAlonzo.Code.Algebra.Structures.du_isCommutativeSemigroup_454
      (coe
         MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_1158
         (coe v4))
-- Algebra.Solver.Ring.AlmostCommutativeRing.T.isMagma
d_isMagma_468 ::
  T_AlmostCommutativeRing_176 ->
  MAlonzo.Code.Algebra.Structures.T_IsMagma_86
d_isMagma_468 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isMagma_202
      (coe
         MAlonzo.Code.Algebra.Structures.d_isSemigroup_368
         (coe
            MAlonzo.Code.Algebra.Structures.d_isMonoid_416
            (coe
               MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_1158
               (coe
                  MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1252
                  (coe
                     MAlonzo.Code.Algebra.Structures.d_isSemiring_1358
                     (coe
                        d_isCommutativeSemiring_62
                        (coe d_isAlmostCommutativeRing_212 (coe v0))))))))
-- Algebra.Solver.Ring.AlmostCommutativeRing.T.isMonoid
d_isMonoid_470 ::
  T_AlmostCommutativeRing_176 ->
  MAlonzo.Code.Algebra.Structures.T_IsMonoid_358
d_isMonoid_470 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isMonoid_416
      (coe
         MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_1158
         (coe
            MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1252
            (coe
               MAlonzo.Code.Algebra.Structures.d_isSemiring_1358
               (coe
                  d_isCommutativeSemiring_62
                  (coe d_isAlmostCommutativeRing_212 (coe v0))))))
-- Algebra.Solver.Ring.AlmostCommutativeRing.T.isSemigroup
d_isSemigroup_472 ::
  T_AlmostCommutativeRing_176 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemigroup_194
d_isSemigroup_472 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isSemigroup_368
      (coe
         MAlonzo.Code.Algebra.Structures.d_isMonoid_416
         (coe
            MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_1158
            (coe
               MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1252
               (coe
                  MAlonzo.Code.Algebra.Structures.d_isSemiring_1358
                  (coe
                     d_isCommutativeSemiring_62
                     (coe d_isAlmostCommutativeRing_212 (coe v0)))))))
-- Algebra.Solver.Ring.AlmostCommutativeRing.T.magma
d_magma_474 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Algebra.Bundles.T_RawRing_2460 ->
  T_AlmostCommutativeRing_176 ->
  MAlonzo.Code.Algebra.Bundles.T_Magma_36
d_magma_474 ~v0 ~v1 ~v2 ~v3 ~v4 v5 = du_magma_474 v5
du_magma_474 ::
  T_AlmostCommutativeRing_176 ->
  MAlonzo.Code.Algebra.Bundles.T_Magma_36
du_magma_474 v0
  = let v1 = coe du_commutativeSemiring_316 (coe v0) in
    let v2
          = coe MAlonzo.Code.Algebra.Bundles.du_semiring_2222 (coe v1) in
    let v3
          = coe
              MAlonzo.Code.Algebra.Bundles.du_semiringWithoutAnnihilatingZero_2048
              (coe v2) in
    let v4
          = coe
              MAlonzo.Code.Algebra.Bundles.du_'43''45'commutativeMonoid_1896
              (coe v3) in
    let v5 = coe MAlonzo.Code.Algebra.Bundles.du_monoid_650 (coe v4) in
    coe
      MAlonzo.Code.Algebra.Bundles.du_magma_254
      (coe MAlonzo.Code.Algebra.Bundles.du_semigroup_566 (coe v5))
-- Algebra.Solver.Ring.AlmostCommutativeRing.T.monoid
d_monoid_476 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Algebra.Bundles.T_RawRing_2460 ->
  T_AlmostCommutativeRing_176 ->
  MAlonzo.Code.Algebra.Bundles.T_Monoid_506
d_monoid_476 ~v0 ~v1 ~v2 ~v3 ~v4 v5 = du_monoid_476 v5
du_monoid_476 ::
  T_AlmostCommutativeRing_176 ->
  MAlonzo.Code.Algebra.Bundles.T_Monoid_506
du_monoid_476 v0
  = let v1 = coe du_commutativeSemiring_316 (coe v0) in
    let v2
          = coe MAlonzo.Code.Algebra.Bundles.du_semiring_2222 (coe v1) in
    let v3
          = coe
              MAlonzo.Code.Algebra.Bundles.du_semiringWithoutAnnihilatingZero_2048
              (coe v2) in
    coe
      MAlonzo.Code.Algebra.Bundles.du_monoid_650
      (coe
         MAlonzo.Code.Algebra.Bundles.du_'43''45'commutativeMonoid_1896
         (coe v3))
-- Algebra.Solver.Ring.AlmostCommutativeRing.T.semigroup
d_semigroup_478 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Algebra.Bundles.T_RawRing_2460 ->
  T_AlmostCommutativeRing_176 ->
  MAlonzo.Code.Algebra.Bundles.T_Semigroup_206
d_semigroup_478 ~v0 ~v1 ~v2 ~v3 ~v4 v5 = du_semigroup_478 v5
du_semigroup_478 ::
  T_AlmostCommutativeRing_176 ->
  MAlonzo.Code.Algebra.Bundles.T_Semigroup_206
du_semigroup_478 v0
  = let v1 = coe du_commutativeSemiring_316 (coe v0) in
    let v2
          = coe MAlonzo.Code.Algebra.Bundles.du_semiring_2222 (coe v1) in
    let v3
          = coe
              MAlonzo.Code.Algebra.Bundles.du_semiringWithoutAnnihilatingZero_2048
              (coe v2) in
    let v4
          = coe
              MAlonzo.Code.Algebra.Bundles.du_'43''45'commutativeMonoid_1896
              (coe v3) in
    coe
      MAlonzo.Code.Algebra.Bundles.du_semigroup_566
      (coe MAlonzo.Code.Algebra.Bundles.du_monoid_650 (coe v4))
-- Algebra.Solver.Ring.AlmostCommutativeRing.T.-_
d_'45'__480 :: T_AlmostCommutativeRing_176 -> AgdaAny -> AgdaAny
d_'45'__480 v0 = coe d_'45'__206 (coe v0)
-- Algebra.Solver.Ring.AlmostCommutativeRing.T.-‿*-distribˡ
d_'45''8255''42''45'distrib'737'_482 ::
  T_AlmostCommutativeRing_176 -> AgdaAny -> AgdaAny -> AgdaAny
d_'45''8255''42''45'distrib'737'_482 v0
  = coe
      d_'45''8255''42''45'distrib'737'_70
      (coe d_isAlmostCommutativeRing_212 (coe v0))
-- Algebra.Solver.Ring.AlmostCommutativeRing.T.-‿+-comm
d_'45''8255''43''45'comm_484 ::
  T_AlmostCommutativeRing_176 -> AgdaAny -> AgdaAny -> AgdaAny
d_'45''8255''43''45'comm_484 v0
  = coe
      d_'45''8255''43''45'comm_76
      (coe d_isAlmostCommutativeRing_212 (coe v0))
-- Algebra.Solver.Ring.AlmostCommutativeRing.T.-‿cong
d_'45''8255'cong_486 ::
  T_AlmostCommutativeRing_176 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'45''8255'cong_486 v0
  = coe
      d_'45''8255'cong_64 (coe d_isAlmostCommutativeRing_212 (coe v0))
-- Algebra.Solver.Ring.AlmostCommutativeRing.T.0#
d_0'35'_488 :: T_AlmostCommutativeRing_176 -> AgdaAny
d_0'35'_488 v0 = coe d_0'35'_208 (coe v0)
-- Algebra.Solver.Ring.AlmostCommutativeRing.T.1#
d_1'35'_490 :: T_AlmostCommutativeRing_176 -> AgdaAny
d_1'35'_490 v0 = coe d_1'35'_210 (coe v0)
-- Algebra.Solver.Ring.AlmostCommutativeRing.T.Carrier
d_Carrier_492 :: T_AlmostCommutativeRing_176 -> ()
d_Carrier_492 = erased
-- Algebra.Solver.Ring.AlmostCommutativeRing.T.commutativeSemiring
d_commutativeSemiring_494 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Algebra.Bundles.T_RawRing_2460 ->
  T_AlmostCommutativeRing_176 ->
  MAlonzo.Code.Algebra.Bundles.T_CommutativeSemiring_2094
d_commutativeSemiring_494 ~v0 ~v1 ~v2 ~v3 ~v4 v5
  = du_commutativeSemiring_494 v5
du_commutativeSemiring_494 ::
  T_AlmostCommutativeRing_176 ->
  MAlonzo.Code.Algebra.Bundles.T_CommutativeSemiring_2094
du_commutativeSemiring_494 v0
  = coe du_commutativeSemiring_316 (coe v0)
-- Algebra.Solver.Ring.AlmostCommutativeRing.T.distrib
d_distrib_496 ::
  T_AlmostCommutativeRing_176 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_distrib_496 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_distrib_1162
      (coe
         MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1252
         (coe
            MAlonzo.Code.Algebra.Structures.d_isSemiring_1358
            (coe
               d_isCommutativeSemiring_62
               (coe d_isAlmostCommutativeRing_212 (coe v0)))))
-- Algebra.Solver.Ring.AlmostCommutativeRing.T.distribʳ
d_distrib'691'_498 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Algebra.Bundles.T_RawRing_2460 ->
  T_AlmostCommutativeRing_176 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_distrib'691'_498 ~v0 ~v1 ~v2 ~v3 ~v4 v5 = du_distrib'691'_498 v5
du_distrib'691'_498 ::
  T_AlmostCommutativeRing_176 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_distrib'691'_498 v0
  = let v1 = d_isAlmostCommutativeRing_212 (coe v0) in
    let v2 = d_isCommutativeSemiring_62 (coe v1) in
    let v3
          = MAlonzo.Code.Algebra.Structures.d_isSemiring_1358 (coe v2) in
    coe
      MAlonzo.Code.Algebra.Structures.du_distrib'691'_1166
      (coe
         MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1252
         (coe v3))
-- Algebra.Solver.Ring.AlmostCommutativeRing.T.distribˡ
d_distrib'737'_500 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Algebra.Bundles.T_RawRing_2460 ->
  T_AlmostCommutativeRing_176 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_distrib'737'_500 ~v0 ~v1 ~v2 ~v3 ~v4 v5 = du_distrib'737'_500 v5
du_distrib'737'_500 ::
  T_AlmostCommutativeRing_176 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_distrib'737'_500 v0
  = let v1 = d_isAlmostCommutativeRing_212 (coe v0) in
    let v2 = d_isCommutativeSemiring_62 (coe v1) in
    let v3
          = MAlonzo.Code.Algebra.Structures.d_isSemiring_1358 (coe v2) in
    coe
      MAlonzo.Code.Algebra.Structures.du_distrib'737'_1164
      (coe
         MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1252
         (coe v3))
-- Algebra.Solver.Ring.AlmostCommutativeRing.T.isAlmostCommutativeRing
d_isAlmostCommutativeRing_502 ::
  T_AlmostCommutativeRing_176 -> T_IsAlmostCommutativeRing_26
d_isAlmostCommutativeRing_502 v0
  = coe d_isAlmostCommutativeRing_212 (coe v0)
-- Algebra.Solver.Ring.AlmostCommutativeRing.T.isCommutativeSemiring
d_isCommutativeSemiring_504 ::
  T_AlmostCommutativeRing_176 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemiring_1344
d_isCommutativeSemiring_504 v0
  = coe
      d_isCommutativeSemiring_62
      (coe d_isAlmostCommutativeRing_212 (coe v0))
-- Algebra.Solver.Ring.AlmostCommutativeRing.T.isCommutativeSemiringWithoutOne
d_isCommutativeSemiringWithoutOne_506 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Algebra.Bundles.T_RawRing_2460 ->
  T_AlmostCommutativeRing_176 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemiringWithoutOne_1044
d_isCommutativeSemiringWithoutOne_506 ~v0 ~v1 ~v2 ~v3 ~v4 v5
  = du_isCommutativeSemiringWithoutOne_506 v5
du_isCommutativeSemiringWithoutOne_506 ::
  T_AlmostCommutativeRing_176 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemiringWithoutOne_1044
du_isCommutativeSemiringWithoutOne_506 v0
  = let v1 = d_isAlmostCommutativeRing_212 (coe v0) in
    coe
      MAlonzo.Code.Algebra.Structures.du_isCommutativeSemiringWithoutOne_1444
      (coe d_isCommutativeSemiring_62 (coe v1))
-- Algebra.Solver.Ring.AlmostCommutativeRing.T.isEquivalence
d_isEquivalence_508 ::
  T_AlmostCommutativeRing_176 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsEquivalence_26
d_isEquivalence_508 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isEquivalence_94
      (coe
         MAlonzo.Code.Algebra.Structures.d_isMagma_202
         (coe
            MAlonzo.Code.Algebra.Structures.d_isSemigroup_368
            (coe
               MAlonzo.Code.Algebra.Structures.d_isMonoid_416
               (coe
                  MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_1158
                  (coe
                     MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1252
                     (coe
                        MAlonzo.Code.Algebra.Structures.d_isSemiring_1358
                        (coe
                           d_isCommutativeSemiring_62
                           (coe d_isAlmostCommutativeRing_212 (coe v0)))))))))
-- Algebra.Solver.Ring.AlmostCommutativeRing.T.isNearSemiring
d_isNearSemiring_510 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Algebra.Bundles.T_RawRing_2460 ->
  T_AlmostCommutativeRing_176 ->
  MAlonzo.Code.Algebra.Structures.T_IsNearSemiring_876
d_isNearSemiring_510 ~v0 ~v1 ~v2 ~v3 ~v4 v5
  = du_isNearSemiring_510 v5
du_isNearSemiring_510 ::
  T_AlmostCommutativeRing_176 ->
  MAlonzo.Code.Algebra.Structures.T_IsNearSemiring_876
du_isNearSemiring_510 v0
  = let v1 = d_isAlmostCommutativeRing_212 (coe v0) in
    let v2 = d_isCommutativeSemiring_62 (coe v1) in
    let v3
          = MAlonzo.Code.Algebra.Structures.d_isSemiring_1358 (coe v2) in
    coe
      MAlonzo.Code.Algebra.Structures.du_isNearSemiring_990
      (coe
         MAlonzo.Code.Algebra.Structures.du_isSemiringWithoutOne_1326
         (coe v3))
-- Algebra.Solver.Ring.AlmostCommutativeRing.T.isPartialEquivalence
d_isPartialEquivalence_512 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Algebra.Bundles.T_RawRing_2460 ->
  T_AlmostCommutativeRing_176 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialEquivalence_16
d_isPartialEquivalence_512 ~v0 ~v1 ~v2 ~v3 ~v4 v5
  = du_isPartialEquivalence_512 v5
du_isPartialEquivalence_512 ::
  T_AlmostCommutativeRing_176 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialEquivalence_16
du_isPartialEquivalence_512 v0
  = let v1 = d_isAlmostCommutativeRing_212 (coe v0) in
    let v2 = d_isCommutativeSemiring_62 (coe v1) in
    let v3
          = MAlonzo.Code.Algebra.Structures.d_isSemiring_1358 (coe v2) in
    let v4
          = MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1252
              (coe v3) in
    let v5
          = MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_1158
              (coe v4) in
    let v6 = MAlonzo.Code.Algebra.Structures.d_isMonoid_416 (coe v5) in
    let v7
          = MAlonzo.Code.Algebra.Structures.d_isSemigroup_368 (coe v6) in
    let v8 = MAlonzo.Code.Algebra.Structures.d_isMagma_202 (coe v7) in
    coe
      MAlonzo.Code.Relation.Binary.Structures.du_isPartialEquivalence_42
      (coe MAlonzo.Code.Algebra.Structures.d_isEquivalence_94 (coe v8))
-- Algebra.Solver.Ring.AlmostCommutativeRing.T.isSemiring
d_isSemiring_514 ::
  T_AlmostCommutativeRing_176 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemiring_1238
d_isSemiring_514 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isSemiring_1358
      (coe
         d_isCommutativeSemiring_62
         (coe d_isAlmostCommutativeRing_212 (coe v0)))
-- Algebra.Solver.Ring.AlmostCommutativeRing.T.isSemiringWithoutAnnihilatingZero
d_isSemiringWithoutAnnihilatingZero_516 ::
  T_AlmostCommutativeRing_176 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemiringWithoutAnnihilatingZero_1142
d_isSemiringWithoutAnnihilatingZero_516 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1252
      (coe
         MAlonzo.Code.Algebra.Structures.d_isSemiring_1358
         (coe
            d_isCommutativeSemiring_62
            (coe d_isAlmostCommutativeRing_212 (coe v0))))
-- Algebra.Solver.Ring.AlmostCommutativeRing.T.isSemiringWithoutOne
d_isSemiringWithoutOne_518 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Algebra.Bundles.T_RawRing_2460 ->
  T_AlmostCommutativeRing_176 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemiringWithoutOne_952
d_isSemiringWithoutOne_518 ~v0 ~v1 ~v2 ~v3 ~v4 v5
  = du_isSemiringWithoutOne_518 v5
du_isSemiringWithoutOne_518 ::
  T_AlmostCommutativeRing_176 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemiringWithoutOne_952
du_isSemiringWithoutOne_518 v0
  = let v1 = d_isAlmostCommutativeRing_212 (coe v0) in
    let v2 = d_isCommutativeSemiring_62 (coe v1) in
    coe
      MAlonzo.Code.Algebra.Structures.du_isSemiringWithoutOne_1326
      (coe MAlonzo.Code.Algebra.Structures.d_isSemiring_1358 (coe v2))
-- Algebra.Solver.Ring.AlmostCommutativeRing.T.rawRing
d_rawRing_520 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Algebra.Bundles.T_RawRing_2460 ->
  T_AlmostCommutativeRing_176 ->
  MAlonzo.Code.Algebra.Bundles.T_RawRing_2460
d_rawRing_520 ~v0 ~v1 ~v2 ~v3 ~v4 v5 = du_rawRing_520 v5
du_rawRing_520 ::
  T_AlmostCommutativeRing_176 ->
  MAlonzo.Code.Algebra.Bundles.T_RawRing_2460
du_rawRing_520 v0 = coe du_rawRing_340 (coe v0)
-- Algebra.Solver.Ring.AlmostCommutativeRing.T.refl
d_refl_522 :: T_AlmostCommutativeRing_176 -> AgdaAny -> AgdaAny
d_refl_522 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d_refl_34
      (coe
         MAlonzo.Code.Algebra.Structures.d_isEquivalence_94
         (coe
            MAlonzo.Code.Algebra.Structures.d_isMagma_202
            (coe
               MAlonzo.Code.Algebra.Structures.d_isSemigroup_368
               (coe
                  MAlonzo.Code.Algebra.Structures.d_isMonoid_416
                  (coe
                     MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_1158
                     (coe
                        MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1252
                        (coe
                           MAlonzo.Code.Algebra.Structures.d_isSemiring_1358
                           (coe
                              d_isCommutativeSemiring_62
                              (coe d_isAlmostCommutativeRing_212 (coe v0))))))))))
-- Algebra.Solver.Ring.AlmostCommutativeRing.T.reflexive
d_reflexive_524 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Algebra.Bundles.T_RawRing_2460 ->
  T_AlmostCommutativeRing_176 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 -> AgdaAny
d_reflexive_524 ~v0 ~v1 ~v2 ~v3 ~v4 v5 = du_reflexive_524 v5
du_reflexive_524 ::
  T_AlmostCommutativeRing_176 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 -> AgdaAny
du_reflexive_524 v0
  = let v1 = d_isAlmostCommutativeRing_212 (coe v0) in
    let v2 = d_isCommutativeSemiring_62 (coe v1) in
    let v3
          = MAlonzo.Code.Algebra.Structures.d_isSemiring_1358 (coe v2) in
    let v4
          = MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1252
              (coe v3) in
    let v5
          = MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_1158
              (coe v4) in
    let v6 = MAlonzo.Code.Algebra.Structures.d_isMonoid_416 (coe v5) in
    let v7
          = MAlonzo.Code.Algebra.Structures.d_isSemigroup_368 (coe v6) in
    let v8 = MAlonzo.Code.Algebra.Structures.d_isMagma_202 (coe v7) in
    \ v9 v10 v11 ->
      coe
        MAlonzo.Code.Relation.Binary.Structures.du_reflexive_40
        (coe MAlonzo.Code.Algebra.Structures.d_isEquivalence_94 (coe v8))
        v9
-- Algebra.Solver.Ring.AlmostCommutativeRing.T.semiring
d_semiring_526 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Algebra.Bundles.T_RawRing_2460 ->
  T_AlmostCommutativeRing_176 ->
  MAlonzo.Code.Algebra.Bundles.T_Semiring_1932
d_semiring_526 ~v0 ~v1 ~v2 ~v3 ~v4 v5 = du_semiring_526 v5
du_semiring_526 ::
  T_AlmostCommutativeRing_176 ->
  MAlonzo.Code.Algebra.Bundles.T_Semiring_1932
du_semiring_526 v0
  = coe
      MAlonzo.Code.Algebra.Bundles.du_semiring_2222
      (coe du_commutativeSemiring_316 (coe v0))
-- Algebra.Solver.Ring.AlmostCommutativeRing.T.setoid
d_setoid_528 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Algebra.Bundles.T_RawRing_2460 ->
  T_AlmostCommutativeRing_176 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44
d_setoid_528 ~v0 ~v1 ~v2 ~v3 ~v4 v5 = du_setoid_528 v5
du_setoid_528 ::
  T_AlmostCommutativeRing_176 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44
du_setoid_528 v0
  = let v1 = d_isAlmostCommutativeRing_212 (coe v0) in
    let v2 = d_isCommutativeSemiring_62 (coe v1) in
    let v3
          = MAlonzo.Code.Algebra.Structures.d_isSemiring_1358 (coe v2) in
    let v4
          = MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1252
              (coe v3) in
    let v5
          = MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_1158
              (coe v4) in
    let v6 = MAlonzo.Code.Algebra.Structures.d_isMonoid_416 (coe v5) in
    let v7
          = MAlonzo.Code.Algebra.Structures.d_isSemigroup_368 (coe v6) in
    coe
      MAlonzo.Code.Algebra.Structures.du_setoid_110
      (coe MAlonzo.Code.Algebra.Structures.d_isMagma_202 (coe v7))
-- Algebra.Solver.Ring.AlmostCommutativeRing.T.sym
d_sym_530 ::
  T_AlmostCommutativeRing_176 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_sym_530 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d_sym_36
      (coe
         MAlonzo.Code.Algebra.Structures.d_isEquivalence_94
         (coe
            MAlonzo.Code.Algebra.Structures.d_isMagma_202
            (coe
               MAlonzo.Code.Algebra.Structures.d_isSemigroup_368
               (coe
                  MAlonzo.Code.Algebra.Structures.d_isMonoid_416
                  (coe
                     MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_1158
                     (coe
                        MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1252
                        (coe
                           MAlonzo.Code.Algebra.Structures.d_isSemiring_1358
                           (coe
                              d_isCommutativeSemiring_62
                              (coe d_isAlmostCommutativeRing_212 (coe v0))))))))))
-- Algebra.Solver.Ring.AlmostCommutativeRing.T.trans
d_trans_532 ::
  T_AlmostCommutativeRing_176 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_trans_532 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d_trans_38
      (coe
         MAlonzo.Code.Algebra.Structures.d_isEquivalence_94
         (coe
            MAlonzo.Code.Algebra.Structures.d_isMagma_202
            (coe
               MAlonzo.Code.Algebra.Structures.d_isSemigroup_368
               (coe
                  MAlonzo.Code.Algebra.Structures.d_isMonoid_416
                  (coe
                     MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_1158
                     (coe
                        MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1252
                        (coe
                           MAlonzo.Code.Algebra.Structures.d_isSemiring_1358
                           (coe
                              d_isCommutativeSemiring_62
                              (coe d_isAlmostCommutativeRing_212 (coe v0))))))))))
-- Algebra.Solver.Ring.AlmostCommutativeRing.T.zero
d_zero_534 ::
  T_AlmostCommutativeRing_176 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_zero_534 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_zero_1254
      (coe
         MAlonzo.Code.Algebra.Structures.d_isSemiring_1358
         (coe
            d_isCommutativeSemiring_62
            (coe d_isAlmostCommutativeRing_212 (coe v0))))
-- Algebra.Solver.Ring.AlmostCommutativeRing.T.zeroʳ
d_zero'691'_536 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Algebra.Bundles.T_RawRing_2460 ->
  T_AlmostCommutativeRing_176 -> AgdaAny -> AgdaAny
d_zero'691'_536 ~v0 ~v1 ~v2 ~v3 ~v4 v5 = du_zero'691'_536 v5
du_zero'691'_536 ::
  T_AlmostCommutativeRing_176 -> AgdaAny -> AgdaAny
du_zero'691'_536 v0
  = let v1 = d_isAlmostCommutativeRing_212 (coe v0) in
    let v2 = d_isCommutativeSemiring_62 (coe v1) in
    let v3
          = MAlonzo.Code.Algebra.Structures.d_isSemiring_1358 (coe v2) in
    coe
      MAlonzo.Code.Algebra.Structures.du_zero'691'_988
      (coe
         MAlonzo.Code.Algebra.Structures.du_isSemiringWithoutOne_1326
         (coe v3))
-- Algebra.Solver.Ring.AlmostCommutativeRing.T.zeroˡ
d_zero'737'_538 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Algebra.Bundles.T_RawRing_2460 ->
  T_AlmostCommutativeRing_176 -> AgdaAny -> AgdaAny
d_zero'737'_538 ~v0 ~v1 ~v2 ~v3 ~v4 v5 = du_zero'737'_538 v5
du_zero'737'_538 ::
  T_AlmostCommutativeRing_176 -> AgdaAny -> AgdaAny
du_zero'737'_538 v0
  = let v1 = d_isAlmostCommutativeRing_212 (coe v0) in
    let v2 = d_isCommutativeSemiring_62 (coe v1) in
    let v3
          = MAlonzo.Code.Algebra.Structures.d_isSemiring_1358 (coe v2) in
    coe
      MAlonzo.Code.Algebra.Structures.du_zero'737'_986
      (coe
         MAlonzo.Code.Algebra.Structures.du_isSemiringWithoutOne_1326
         (coe v3))
-- Algebra.Solver.Ring.AlmostCommutativeRing._.Homomorphic₀
d_Homomorphic'8320'_542 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Algebra.Bundles.T_RawRing_2460 ->
  T_AlmostCommutativeRing_176 ->
  (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny -> ()
d_Homomorphic'8320'_542 = erased
-- Algebra.Solver.Ring.AlmostCommutativeRing._.Homomorphic₁
d_Homomorphic'8321'_544 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Algebra.Bundles.T_RawRing_2460 ->
  T_AlmostCommutativeRing_176 ->
  (AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) -> (AgdaAny -> AgdaAny) -> ()
d_Homomorphic'8321'_544 = erased
-- Algebra.Solver.Ring.AlmostCommutativeRing._.Homomorphic₂
d_Homomorphic'8322'_546 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Algebra.Bundles.T_RawRing_2460 ->
  T_AlmostCommutativeRing_176 ->
  (AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) -> ()
d_Homomorphic'8322'_546 = erased
-- Algebra.Solver.Ring.AlmostCommutativeRing._.Morphism
d_Morphism_548 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Algebra.Bundles.T_RawRing_2460 ->
  T_AlmostCommutativeRing_176 -> ()
d_Morphism_548 = erased
-- Algebra.Solver.Ring.AlmostCommutativeRing._-Raw-AlmostCommutative⟶_.T._*_
d__'42'__594 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Algebra.Bundles.T_RawRing_2460 ->
  T_AlmostCommutativeRing_176 ->
  T__'45'Raw'45'AlmostCommutative'10230'__354 ->
  AgdaAny -> AgdaAny -> AgdaAny
d__'42'__594 ~v0 ~v1 ~v2 ~v3 ~v4 v5 ~v6 = du__'42'__594 v5
du__'42'__594 ::
  T_AlmostCommutativeRing_176 -> AgdaAny -> AgdaAny -> AgdaAny
du__'42'__594 v0 = coe d__'42'__204 (coe v0)
-- Algebra.Solver.Ring.AlmostCommutativeRing._-Raw-AlmostCommutative⟶_.T._+_
d__'43'__596 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Algebra.Bundles.T_RawRing_2460 ->
  T_AlmostCommutativeRing_176 ->
  T__'45'Raw'45'AlmostCommutative'10230'__354 ->
  AgdaAny -> AgdaAny -> AgdaAny
d__'43'__596 ~v0 ~v1 ~v2 ~v3 ~v4 v5 ~v6 = du__'43'__596 v5
du__'43'__596 ::
  T_AlmostCommutativeRing_176 -> AgdaAny -> AgdaAny -> AgdaAny
du__'43'__596 v0 = coe d__'43'__202 (coe v0)
-- Algebra.Solver.Ring.AlmostCommutativeRing._-Raw-AlmostCommutative⟶_.T._≈_
d__'8776'__598 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Algebra.Bundles.T_RawRing_2460 ->
  T_AlmostCommutativeRing_176 ->
  T__'45'Raw'45'AlmostCommutative'10230'__354 ->
  AgdaAny -> AgdaAny -> ()
d__'8776'__598 = erased
-- Algebra.Solver.Ring.AlmostCommutativeRing._-Raw-AlmostCommutative⟶_.T.assoc
d_assoc_600 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Algebra.Bundles.T_RawRing_2460 ->
  T_AlmostCommutativeRing_176 ->
  T__'45'Raw'45'AlmostCommutative'10230'__354 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_assoc_600 ~v0 ~v1 ~v2 ~v3 ~v4 v5 ~v6 = du_assoc_600 v5
du_assoc_600 ::
  T_AlmostCommutativeRing_176 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_assoc_600 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_assoc_204
      (coe
         MAlonzo.Code.Algebra.Structures.d_isSemigroup_368
         (coe
            MAlonzo.Code.Algebra.Structures.d_'42''45'isMonoid_1160
            (coe
               MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1252
               (coe
                  MAlonzo.Code.Algebra.Structures.d_isSemiring_1358
                  (coe
                     d_isCommutativeSemiring_62
                     (coe d_isAlmostCommutativeRing_212 (coe v0)))))))
-- Algebra.Solver.Ring.AlmostCommutativeRing._-Raw-AlmostCommutative⟶_.T.*-comm
d_'42''45'comm_602 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Algebra.Bundles.T_RawRing_2460 ->
  T_AlmostCommutativeRing_176 ->
  T__'45'Raw'45'AlmostCommutative'10230'__354 ->
  AgdaAny -> AgdaAny -> AgdaAny
d_'42''45'comm_602 ~v0 ~v1 ~v2 ~v3 ~v4 v5 ~v6
  = du_'42''45'comm_602 v5
du_'42''45'comm_602 ::
  T_AlmostCommutativeRing_176 -> AgdaAny -> AgdaAny -> AgdaAny
du_'42''45'comm_602 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_'42''45'comm_1360
      (coe
         d_isCommutativeSemiring_62
         (coe d_isAlmostCommutativeRing_212 (coe v0)))
-- Algebra.Solver.Ring.AlmostCommutativeRing._-Raw-AlmostCommutative⟶_.T.*-commutativeMonoid
d_'42''45'commutativeMonoid_604 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Algebra.Bundles.T_RawRing_2460 ->
  T_AlmostCommutativeRing_176 ->
  T__'45'Raw'45'AlmostCommutative'10230'__354 ->
  MAlonzo.Code.Algebra.Bundles.T_CommutativeMonoid_582
d_'42''45'commutativeMonoid_604 ~v0 ~v1 ~v2 ~v3 ~v4 v5 ~v6
  = du_'42''45'commutativeMonoid_604 v5
du_'42''45'commutativeMonoid_604 ::
  T_AlmostCommutativeRing_176 ->
  MAlonzo.Code.Algebra.Bundles.T_CommutativeMonoid_582
du_'42''45'commutativeMonoid_604 v0
  = coe
      MAlonzo.Code.Algebra.Bundles.du_'42''45'commutativeMonoid_2262
      (coe du_commutativeSemiring_316 (coe v0))
-- Algebra.Solver.Ring.AlmostCommutativeRing._-Raw-AlmostCommutative⟶_.T.commutativeSemigroup
d_commutativeSemigroup_606 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Algebra.Bundles.T_RawRing_2460 ->
  T_AlmostCommutativeRing_176 ->
  T__'45'Raw'45'AlmostCommutative'10230'__354 ->
  MAlonzo.Code.Algebra.Bundles.T_CommutativeSemigroup_332
d_commutativeSemigroup_606 ~v0 ~v1 ~v2 ~v3 ~v4 v5 ~v6
  = du_commutativeSemigroup_606 v5
du_commutativeSemigroup_606 ::
  T_AlmostCommutativeRing_176 ->
  MAlonzo.Code.Algebra.Bundles.T_CommutativeSemigroup_332
du_commutativeSemigroup_606 v0
  = let v1 = coe du_commutativeSemiring_316 (coe v0) in
    coe
      MAlonzo.Code.Algebra.Bundles.du_commutativeSemigroup_664
      (coe
         MAlonzo.Code.Algebra.Bundles.du_'42''45'commutativeMonoid_2262
         (coe v1))
-- Algebra.Solver.Ring.AlmostCommutativeRing._-Raw-AlmostCommutative⟶_.T.∙-cong
d_'8729''45'cong_608 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Algebra.Bundles.T_RawRing_2460 ->
  T_AlmostCommutativeRing_176 ->
  T__'45'Raw'45'AlmostCommutative'10230'__354 ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8729''45'cong_608 ~v0 ~v1 ~v2 ~v3 ~v4 v5 ~v6
  = du_'8729''45'cong_608 v5
du_'8729''45'cong_608 ::
  T_AlmostCommutativeRing_176 ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_'8729''45'cong_608 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_'8729''45'cong_96
      (coe
         MAlonzo.Code.Algebra.Structures.d_isMagma_202
         (coe
            MAlonzo.Code.Algebra.Structures.d_isSemigroup_368
            (coe
               MAlonzo.Code.Algebra.Structures.d_'42''45'isMonoid_1160
               (coe
                  MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1252
                  (coe
                     MAlonzo.Code.Algebra.Structures.d_isSemiring_1358
                     (coe
                        d_isCommutativeSemiring_62
                        (coe d_isAlmostCommutativeRing_212 (coe v0))))))))
-- Algebra.Solver.Ring.AlmostCommutativeRing._-Raw-AlmostCommutative⟶_.T.∙-congʳ
d_'8729''45'cong'691'_610 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Algebra.Bundles.T_RawRing_2460 ->
  T_AlmostCommutativeRing_176 ->
  T__'45'Raw'45'AlmostCommutative'10230'__354 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8729''45'cong'691'_610 ~v0 ~v1 ~v2 ~v3 ~v4 v5 ~v6
  = du_'8729''45'cong'691'_610 v5
du_'8729''45'cong'691'_610 ::
  T_AlmostCommutativeRing_176 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_'8729''45'cong'691'_610 v0
  = let v1 = d_isAlmostCommutativeRing_212 (coe v0) in
    let v2 = d_isCommutativeSemiring_62 (coe v1) in
    let v3
          = MAlonzo.Code.Algebra.Structures.d_isSemiring_1358 (coe v2) in
    let v4
          = MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1252
              (coe v3) in
    let v5
          = MAlonzo.Code.Algebra.Structures.d_'42''45'isMonoid_1160
              (coe v4) in
    let v6
          = MAlonzo.Code.Algebra.Structures.d_isSemigroup_368 (coe v5) in
    coe
      MAlonzo.Code.Algebra.Structures.du_'8729''45'cong'691'_116
      (coe MAlonzo.Code.Algebra.Structures.d_isMagma_202 (coe v6))
-- Algebra.Solver.Ring.AlmostCommutativeRing._-Raw-AlmostCommutative⟶_.T.∙-congˡ
d_'8729''45'cong'737'_612 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Algebra.Bundles.T_RawRing_2460 ->
  T_AlmostCommutativeRing_176 ->
  T__'45'Raw'45'AlmostCommutative'10230'__354 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8729''45'cong'737'_612 ~v0 ~v1 ~v2 ~v3 ~v4 v5 ~v6
  = du_'8729''45'cong'737'_612 v5
du_'8729''45'cong'737'_612 ::
  T_AlmostCommutativeRing_176 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_'8729''45'cong'737'_612 v0
  = let v1 = d_isAlmostCommutativeRing_212 (coe v0) in
    let v2 = d_isCommutativeSemiring_62 (coe v1) in
    let v3
          = MAlonzo.Code.Algebra.Structures.d_isSemiring_1358 (coe v2) in
    let v4
          = MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1252
              (coe v3) in
    let v5
          = MAlonzo.Code.Algebra.Structures.d_'42''45'isMonoid_1160
              (coe v4) in
    let v6
          = MAlonzo.Code.Algebra.Structures.d_isSemigroup_368 (coe v5) in
    coe
      MAlonzo.Code.Algebra.Structures.du_'8729''45'cong'737'_112
      (coe MAlonzo.Code.Algebra.Structures.d_isMagma_202 (coe v6))
-- Algebra.Solver.Ring.AlmostCommutativeRing._-Raw-AlmostCommutative⟶_.T.identity
d_identity_614 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Algebra.Bundles.T_RawRing_2460 ->
  T_AlmostCommutativeRing_176 ->
  T__'45'Raw'45'AlmostCommutative'10230'__354 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_identity_614 ~v0 ~v1 ~v2 ~v3 ~v4 v5 ~v6 = du_identity_614 v5
du_identity_614 ::
  T_AlmostCommutativeRing_176 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_identity_614 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_identity_370
      (coe
         MAlonzo.Code.Algebra.Structures.d_'42''45'isMonoid_1160
         (coe
            MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1252
            (coe
               MAlonzo.Code.Algebra.Structures.d_isSemiring_1358
               (coe
                  d_isCommutativeSemiring_62
                  (coe d_isAlmostCommutativeRing_212 (coe v0))))))
-- Algebra.Solver.Ring.AlmostCommutativeRing._-Raw-AlmostCommutative⟶_.T.identityʳ
d_identity'691'_616 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Algebra.Bundles.T_RawRing_2460 ->
  T_AlmostCommutativeRing_176 ->
  T__'45'Raw'45'AlmostCommutative'10230'__354 -> AgdaAny -> AgdaAny
d_identity'691'_616 ~v0 ~v1 ~v2 ~v3 ~v4 v5 ~v6
  = du_identity'691'_616 v5
du_identity'691'_616 ::
  T_AlmostCommutativeRing_176 -> AgdaAny -> AgdaAny
du_identity'691'_616 v0
  = let v1 = d_isAlmostCommutativeRing_212 (coe v0) in
    let v2 = d_isCommutativeSemiring_62 (coe v1) in
    let v3
          = MAlonzo.Code.Algebra.Structures.d_isSemiring_1358 (coe v2) in
    let v4
          = MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1252
              (coe v3) in
    coe
      MAlonzo.Code.Algebra.Structures.du_identity'691'_400
      (coe
         MAlonzo.Code.Algebra.Structures.d_'42''45'isMonoid_1160 (coe v4))
-- Algebra.Solver.Ring.AlmostCommutativeRing._-Raw-AlmostCommutative⟶_.T.identityˡ
d_identity'737'_618 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Algebra.Bundles.T_RawRing_2460 ->
  T_AlmostCommutativeRing_176 ->
  T__'45'Raw'45'AlmostCommutative'10230'__354 -> AgdaAny -> AgdaAny
d_identity'737'_618 ~v0 ~v1 ~v2 ~v3 ~v4 v5 ~v6
  = du_identity'737'_618 v5
du_identity'737'_618 ::
  T_AlmostCommutativeRing_176 -> AgdaAny -> AgdaAny
du_identity'737'_618 v0
  = let v1 = d_isAlmostCommutativeRing_212 (coe v0) in
    let v2 = d_isCommutativeSemiring_62 (coe v1) in
    let v3
          = MAlonzo.Code.Algebra.Structures.d_isSemiring_1358 (coe v2) in
    let v4
          = MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1252
              (coe v3) in
    coe
      MAlonzo.Code.Algebra.Structures.du_identity'737'_398
      (coe
         MAlonzo.Code.Algebra.Structures.d_'42''45'isMonoid_1160 (coe v4))
-- Algebra.Solver.Ring.AlmostCommutativeRing._-Raw-AlmostCommutative⟶_.T.isCommutativeMagma
d_isCommutativeMagma_620 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Algebra.Bundles.T_RawRing_2460 ->
  T_AlmostCommutativeRing_176 ->
  T__'45'Raw'45'AlmostCommutative'10230'__354 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMagma_122
d_isCommutativeMagma_620 ~v0 ~v1 ~v2 ~v3 ~v4 v5 ~v6
  = du_isCommutativeMagma_620 v5
du_isCommutativeMagma_620 ::
  T_AlmostCommutativeRing_176 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMagma_122
du_isCommutativeMagma_620 v0
  = let v1 = d_isAlmostCommutativeRing_212 (coe v0) in
    let v2 = d_isCommutativeSemiring_62 (coe v1) in
    let v3
          = coe
              MAlonzo.Code.Algebra.Structures.du_isCommutativeSemiringWithoutOne_1444
              (coe v2) in
    coe
      MAlonzo.Code.Algebra.Structures.du_isCommutativeMagma_308
      (coe
         MAlonzo.Code.Algebra.Structures.du_'42''45'isCommutativeSemigroup_1128
         (coe v3))
-- Algebra.Solver.Ring.AlmostCommutativeRing._-Raw-AlmostCommutative⟶_.T.*-isCommutativeMonoid
d_'42''45'isCommutativeMonoid_622 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Algebra.Bundles.T_RawRing_2460 ->
  T_AlmostCommutativeRing_176 ->
  T__'45'Raw'45'AlmostCommutative'10230'__354 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMonoid_406
d_'42''45'isCommutativeMonoid_622 ~v0 ~v1 ~v2 ~v3 ~v4 v5 ~v6
  = du_'42''45'isCommutativeMonoid_622 v5
du_'42''45'isCommutativeMonoid_622 ::
  T_AlmostCommutativeRing_176 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMonoid_406
du_'42''45'isCommutativeMonoid_622 v0
  = let v1 = d_isAlmostCommutativeRing_212 (coe v0) in
    coe
      MAlonzo.Code.Algebra.Structures.du_'42''45'isCommutativeMonoid_1452
      (coe d_isCommutativeSemiring_62 (coe v1))
-- Algebra.Solver.Ring.AlmostCommutativeRing._-Raw-AlmostCommutative⟶_.T.*-isCommutativeSemigroup
d_'42''45'isCommutativeSemigroup_624 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Algebra.Bundles.T_RawRing_2460 ->
  T_AlmostCommutativeRing_176 ->
  T__'45'Raw'45'AlmostCommutative'10230'__354 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemigroup_270
d_'42''45'isCommutativeSemigroup_624 ~v0 ~v1 ~v2 ~v3 ~v4 v5 ~v6
  = du_'42''45'isCommutativeSemigroup_624 v5
du_'42''45'isCommutativeSemigroup_624 ::
  T_AlmostCommutativeRing_176 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemigroup_270
du_'42''45'isCommutativeSemigroup_624 v0
  = let v1 = d_isAlmostCommutativeRing_212 (coe v0) in
    let v2 = d_isCommutativeSemiring_62 (coe v1) in
    coe
      MAlonzo.Code.Algebra.Structures.du_'42''45'isCommutativeSemigroup_1128
      (coe
         MAlonzo.Code.Algebra.Structures.du_isCommutativeSemiringWithoutOne_1444
         (coe v2))
-- Algebra.Solver.Ring.AlmostCommutativeRing._-Raw-AlmostCommutative⟶_.T.isMagma
d_isMagma_626 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Algebra.Bundles.T_RawRing_2460 ->
  T_AlmostCommutativeRing_176 ->
  T__'45'Raw'45'AlmostCommutative'10230'__354 ->
  MAlonzo.Code.Algebra.Structures.T_IsMagma_86
d_isMagma_626 ~v0 ~v1 ~v2 ~v3 ~v4 v5 ~v6 = du_isMagma_626 v5
du_isMagma_626 ::
  T_AlmostCommutativeRing_176 ->
  MAlonzo.Code.Algebra.Structures.T_IsMagma_86
du_isMagma_626 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isMagma_202
      (coe
         MAlonzo.Code.Algebra.Structures.d_isSemigroup_368
         (coe
            MAlonzo.Code.Algebra.Structures.d_'42''45'isMonoid_1160
            (coe
               MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1252
               (coe
                  MAlonzo.Code.Algebra.Structures.d_isSemiring_1358
                  (coe
                     d_isCommutativeSemiring_62
                     (coe d_isAlmostCommutativeRing_212 (coe v0)))))))
-- Algebra.Solver.Ring.AlmostCommutativeRing._-Raw-AlmostCommutative⟶_.T.*-isMonoid
d_'42''45'isMonoid_628 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Algebra.Bundles.T_RawRing_2460 ->
  T_AlmostCommutativeRing_176 ->
  T__'45'Raw'45'AlmostCommutative'10230'__354 ->
  MAlonzo.Code.Algebra.Structures.T_IsMonoid_358
d_'42''45'isMonoid_628 ~v0 ~v1 ~v2 ~v3 ~v4 v5 ~v6
  = du_'42''45'isMonoid_628 v5
du_'42''45'isMonoid_628 ::
  T_AlmostCommutativeRing_176 ->
  MAlonzo.Code.Algebra.Structures.T_IsMonoid_358
du_'42''45'isMonoid_628 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_'42''45'isMonoid_1160
      (coe
         MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1252
         (coe
            MAlonzo.Code.Algebra.Structures.d_isSemiring_1358
            (coe
               d_isCommutativeSemiring_62
               (coe d_isAlmostCommutativeRing_212 (coe v0)))))
-- Algebra.Solver.Ring.AlmostCommutativeRing._-Raw-AlmostCommutative⟶_.T.isSemigroup
d_isSemigroup_630 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Algebra.Bundles.T_RawRing_2460 ->
  T_AlmostCommutativeRing_176 ->
  T__'45'Raw'45'AlmostCommutative'10230'__354 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemigroup_194
d_isSemigroup_630 ~v0 ~v1 ~v2 ~v3 ~v4 v5 ~v6
  = du_isSemigroup_630 v5
du_isSemigroup_630 ::
  T_AlmostCommutativeRing_176 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemigroup_194
du_isSemigroup_630 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isSemigroup_368
      (coe
         MAlonzo.Code.Algebra.Structures.d_'42''45'isMonoid_1160
         (coe
            MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1252
            (coe
               MAlonzo.Code.Algebra.Structures.d_isSemiring_1358
               (coe
                  d_isCommutativeSemiring_62
                  (coe d_isAlmostCommutativeRing_212 (coe v0))))))
-- Algebra.Solver.Ring.AlmostCommutativeRing._-Raw-AlmostCommutative⟶_.T.magma
d_magma_632 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Algebra.Bundles.T_RawRing_2460 ->
  T_AlmostCommutativeRing_176 ->
  T__'45'Raw'45'AlmostCommutative'10230'__354 ->
  MAlonzo.Code.Algebra.Bundles.T_Magma_36
d_magma_632 ~v0 ~v1 ~v2 ~v3 ~v4 v5 ~v6 = du_magma_632 v5
du_magma_632 ::
  T_AlmostCommutativeRing_176 ->
  MAlonzo.Code.Algebra.Bundles.T_Magma_36
du_magma_632 v0
  = let v1 = coe du_commutativeSemiring_316 (coe v0) in
    let v2
          = coe MAlonzo.Code.Algebra.Bundles.du_semiring_2222 (coe v1) in
    let v3
          = coe
              MAlonzo.Code.Algebra.Bundles.du_semiringWithoutAnnihilatingZero_2048
              (coe v2) in
    let v4
          = coe
              MAlonzo.Code.Algebra.Bundles.du_'42''45'monoid_1916 (coe v3) in
    coe
      MAlonzo.Code.Algebra.Bundles.du_magma_254
      (coe MAlonzo.Code.Algebra.Bundles.du_semigroup_566 (coe v4))
-- Algebra.Solver.Ring.AlmostCommutativeRing._-Raw-AlmostCommutative⟶_.T.*-monoid
d_'42''45'monoid_634 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Algebra.Bundles.T_RawRing_2460 ->
  T_AlmostCommutativeRing_176 ->
  T__'45'Raw'45'AlmostCommutative'10230'__354 ->
  MAlonzo.Code.Algebra.Bundles.T_Monoid_506
d_'42''45'monoid_634 ~v0 ~v1 ~v2 ~v3 ~v4 v5 ~v6
  = du_'42''45'monoid_634 v5
du_'42''45'monoid_634 ::
  T_AlmostCommutativeRing_176 ->
  MAlonzo.Code.Algebra.Bundles.T_Monoid_506
du_'42''45'monoid_634 v0
  = let v1 = coe du_commutativeSemiring_316 (coe v0) in
    let v2
          = coe MAlonzo.Code.Algebra.Bundles.du_semiring_2222 (coe v1) in
    coe
      MAlonzo.Code.Algebra.Bundles.du_'42''45'monoid_1916
      (coe
         MAlonzo.Code.Algebra.Bundles.du_semiringWithoutAnnihilatingZero_2048
         (coe v2))
-- Algebra.Solver.Ring.AlmostCommutativeRing._-Raw-AlmostCommutative⟶_.T.semigroup
d_semigroup_636 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Algebra.Bundles.T_RawRing_2460 ->
  T_AlmostCommutativeRing_176 ->
  T__'45'Raw'45'AlmostCommutative'10230'__354 ->
  MAlonzo.Code.Algebra.Bundles.T_Semigroup_206
d_semigroup_636 ~v0 ~v1 ~v2 ~v3 ~v4 v5 ~v6 = du_semigroup_636 v5
du_semigroup_636 ::
  T_AlmostCommutativeRing_176 ->
  MAlonzo.Code.Algebra.Bundles.T_Semigroup_206
du_semigroup_636 v0
  = let v1 = coe du_commutativeSemiring_316 (coe v0) in
    let v2
          = coe MAlonzo.Code.Algebra.Bundles.du_semiring_2222 (coe v1) in
    let v3
          = coe
              MAlonzo.Code.Algebra.Bundles.du_semiringWithoutAnnihilatingZero_2048
              (coe v2) in
    coe
      MAlonzo.Code.Algebra.Bundles.du_semigroup_566
      (coe MAlonzo.Code.Algebra.Bundles.du_'42''45'monoid_1916 (coe v3))
-- Algebra.Solver.Ring.AlmostCommutativeRing._-Raw-AlmostCommutative⟶_.T.assoc
d_assoc_638 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Algebra.Bundles.T_RawRing_2460 ->
  T_AlmostCommutativeRing_176 ->
  T__'45'Raw'45'AlmostCommutative'10230'__354 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_assoc_638 ~v0 ~v1 ~v2 ~v3 ~v4 v5 ~v6 = du_assoc_638 v5
du_assoc_638 ::
  T_AlmostCommutativeRing_176 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_assoc_638 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_assoc_204
      (coe
         MAlonzo.Code.Algebra.Structures.d_isSemigroup_368
         (coe
            MAlonzo.Code.Algebra.Structures.d_isMonoid_416
            (coe
               MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_1158
               (coe
                  MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1252
                  (coe
                     MAlonzo.Code.Algebra.Structures.d_isSemiring_1358
                     (coe
                        d_isCommutativeSemiring_62
                        (coe d_isAlmostCommutativeRing_212 (coe v0))))))))
-- Algebra.Solver.Ring.AlmostCommutativeRing._-Raw-AlmostCommutative⟶_.T.comm
d_comm_640 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Algebra.Bundles.T_RawRing_2460 ->
  T_AlmostCommutativeRing_176 ->
  T__'45'Raw'45'AlmostCommutative'10230'__354 ->
  AgdaAny -> AgdaAny -> AgdaAny
d_comm_640 ~v0 ~v1 ~v2 ~v3 ~v4 v5 ~v6 = du_comm_640 v5
du_comm_640 ::
  T_AlmostCommutativeRing_176 -> AgdaAny -> AgdaAny -> AgdaAny
du_comm_640 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_comm_418
      (coe
         MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_1158
         (coe
            MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1252
            (coe
               MAlonzo.Code.Algebra.Structures.d_isSemiring_1358
               (coe
                  d_isCommutativeSemiring_62
                  (coe d_isAlmostCommutativeRing_212 (coe v0))))))
-- Algebra.Solver.Ring.AlmostCommutativeRing._-Raw-AlmostCommutative⟶_.T.+-commutativeMonoid
d_'43''45'commutativeMonoid_642 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Algebra.Bundles.T_RawRing_2460 ->
  T_AlmostCommutativeRing_176 ->
  T__'45'Raw'45'AlmostCommutative'10230'__354 ->
  MAlonzo.Code.Algebra.Bundles.T_CommutativeMonoid_582
d_'43''45'commutativeMonoid_642 ~v0 ~v1 ~v2 ~v3 ~v4 v5 ~v6
  = du_'43''45'commutativeMonoid_642 v5
du_'43''45'commutativeMonoid_642 ::
  T_AlmostCommutativeRing_176 ->
  MAlonzo.Code.Algebra.Bundles.T_CommutativeMonoid_582
du_'43''45'commutativeMonoid_642 v0
  = let v1 = coe du_commutativeSemiring_316 (coe v0) in
    let v2
          = coe MAlonzo.Code.Algebra.Bundles.du_semiring_2222 (coe v1) in
    coe
      MAlonzo.Code.Algebra.Bundles.du_'43''45'commutativeMonoid_1896
      (coe
         MAlonzo.Code.Algebra.Bundles.du_semiringWithoutAnnihilatingZero_2048
         (coe v2))
-- Algebra.Solver.Ring.AlmostCommutativeRing._-Raw-AlmostCommutative⟶_.T.∙-cong
d_'8729''45'cong_644 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Algebra.Bundles.T_RawRing_2460 ->
  T_AlmostCommutativeRing_176 ->
  T__'45'Raw'45'AlmostCommutative'10230'__354 ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8729''45'cong_644 ~v0 ~v1 ~v2 ~v3 ~v4 v5 ~v6
  = du_'8729''45'cong_644 v5
du_'8729''45'cong_644 ::
  T_AlmostCommutativeRing_176 ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_'8729''45'cong_644 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_'8729''45'cong_96
      (coe
         MAlonzo.Code.Algebra.Structures.d_isMagma_202
         (coe
            MAlonzo.Code.Algebra.Structures.d_isSemigroup_368
            (coe
               MAlonzo.Code.Algebra.Structures.d_isMonoid_416
               (coe
                  MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_1158
                  (coe
                     MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1252
                     (coe
                        MAlonzo.Code.Algebra.Structures.d_isSemiring_1358
                        (coe
                           d_isCommutativeSemiring_62
                           (coe d_isAlmostCommutativeRing_212 (coe v0)))))))))
-- Algebra.Solver.Ring.AlmostCommutativeRing._-Raw-AlmostCommutative⟶_.T.∙-congʳ
d_'8729''45'cong'691'_646 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Algebra.Bundles.T_RawRing_2460 ->
  T_AlmostCommutativeRing_176 ->
  T__'45'Raw'45'AlmostCommutative'10230'__354 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8729''45'cong'691'_646 ~v0 ~v1 ~v2 ~v3 ~v4 v5 ~v6
  = du_'8729''45'cong'691'_646 v5
du_'8729''45'cong'691'_646 ::
  T_AlmostCommutativeRing_176 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_'8729''45'cong'691'_646 v0
  = let v1 = d_isAlmostCommutativeRing_212 (coe v0) in
    let v2 = d_isCommutativeSemiring_62 (coe v1) in
    let v3
          = MAlonzo.Code.Algebra.Structures.d_isSemiring_1358 (coe v2) in
    let v4
          = MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1252
              (coe v3) in
    let v5
          = MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_1158
              (coe v4) in
    let v6 = MAlonzo.Code.Algebra.Structures.d_isMonoid_416 (coe v5) in
    let v7
          = MAlonzo.Code.Algebra.Structures.d_isSemigroup_368 (coe v6) in
    coe
      MAlonzo.Code.Algebra.Structures.du_'8729''45'cong'691'_116
      (coe MAlonzo.Code.Algebra.Structures.d_isMagma_202 (coe v7))
-- Algebra.Solver.Ring.AlmostCommutativeRing._-Raw-AlmostCommutative⟶_.T.∙-congˡ
d_'8729''45'cong'737'_648 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Algebra.Bundles.T_RawRing_2460 ->
  T_AlmostCommutativeRing_176 ->
  T__'45'Raw'45'AlmostCommutative'10230'__354 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8729''45'cong'737'_648 ~v0 ~v1 ~v2 ~v3 ~v4 v5 ~v6
  = du_'8729''45'cong'737'_648 v5
du_'8729''45'cong'737'_648 ::
  T_AlmostCommutativeRing_176 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_'8729''45'cong'737'_648 v0
  = let v1 = d_isAlmostCommutativeRing_212 (coe v0) in
    let v2 = d_isCommutativeSemiring_62 (coe v1) in
    let v3
          = MAlonzo.Code.Algebra.Structures.d_isSemiring_1358 (coe v2) in
    let v4
          = MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1252
              (coe v3) in
    let v5
          = MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_1158
              (coe v4) in
    let v6 = MAlonzo.Code.Algebra.Structures.d_isMonoid_416 (coe v5) in
    let v7
          = MAlonzo.Code.Algebra.Structures.d_isSemigroup_368 (coe v6) in
    coe
      MAlonzo.Code.Algebra.Structures.du_'8729''45'cong'737'_112
      (coe MAlonzo.Code.Algebra.Structures.d_isMagma_202 (coe v7))
-- Algebra.Solver.Ring.AlmostCommutativeRing._-Raw-AlmostCommutative⟶_.T.identity
d_identity_650 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Algebra.Bundles.T_RawRing_2460 ->
  T_AlmostCommutativeRing_176 ->
  T__'45'Raw'45'AlmostCommutative'10230'__354 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_identity_650 ~v0 ~v1 ~v2 ~v3 ~v4 v5 ~v6 = du_identity_650 v5
du_identity_650 ::
  T_AlmostCommutativeRing_176 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_identity_650 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_identity_370
      (coe
         MAlonzo.Code.Algebra.Structures.d_isMonoid_416
         (coe
            MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_1158
            (coe
               MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1252
               (coe
                  MAlonzo.Code.Algebra.Structures.d_isSemiring_1358
                  (coe
                     d_isCommutativeSemiring_62
                     (coe d_isAlmostCommutativeRing_212 (coe v0)))))))
-- Algebra.Solver.Ring.AlmostCommutativeRing._-Raw-AlmostCommutative⟶_.T.identityʳ
d_identity'691'_652 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Algebra.Bundles.T_RawRing_2460 ->
  T_AlmostCommutativeRing_176 ->
  T__'45'Raw'45'AlmostCommutative'10230'__354 -> AgdaAny -> AgdaAny
d_identity'691'_652 ~v0 ~v1 ~v2 ~v3 ~v4 v5 ~v6
  = du_identity'691'_652 v5
du_identity'691'_652 ::
  T_AlmostCommutativeRing_176 -> AgdaAny -> AgdaAny
du_identity'691'_652 v0
  = let v1 = d_isAlmostCommutativeRing_212 (coe v0) in
    let v2 = d_isCommutativeSemiring_62 (coe v1) in
    let v3
          = MAlonzo.Code.Algebra.Structures.d_isSemiring_1358 (coe v2) in
    let v4
          = MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1252
              (coe v3) in
    let v5
          = MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_1158
              (coe v4) in
    coe
      MAlonzo.Code.Algebra.Structures.du_identity'691'_400
      (coe MAlonzo.Code.Algebra.Structures.d_isMonoid_416 (coe v5))
-- Algebra.Solver.Ring.AlmostCommutativeRing._-Raw-AlmostCommutative⟶_.T.identityˡ
d_identity'737'_654 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Algebra.Bundles.T_RawRing_2460 ->
  T_AlmostCommutativeRing_176 ->
  T__'45'Raw'45'AlmostCommutative'10230'__354 -> AgdaAny -> AgdaAny
d_identity'737'_654 ~v0 ~v1 ~v2 ~v3 ~v4 v5 ~v6
  = du_identity'737'_654 v5
du_identity'737'_654 ::
  T_AlmostCommutativeRing_176 -> AgdaAny -> AgdaAny
du_identity'737'_654 v0
  = let v1 = d_isAlmostCommutativeRing_212 (coe v0) in
    let v2 = d_isCommutativeSemiring_62 (coe v1) in
    let v3
          = MAlonzo.Code.Algebra.Structures.d_isSemiring_1358 (coe v2) in
    let v4
          = MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1252
              (coe v3) in
    let v5
          = MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_1158
              (coe v4) in
    coe
      MAlonzo.Code.Algebra.Structures.du_identity'737'_398
      (coe MAlonzo.Code.Algebra.Structures.d_isMonoid_416 (coe v5))
-- Algebra.Solver.Ring.AlmostCommutativeRing._-Raw-AlmostCommutative⟶_.T.isCommutativeMagma
d_isCommutativeMagma_656 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Algebra.Bundles.T_RawRing_2460 ->
  T_AlmostCommutativeRing_176 ->
  T__'45'Raw'45'AlmostCommutative'10230'__354 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMagma_122
d_isCommutativeMagma_656 ~v0 ~v1 ~v2 ~v3 ~v4 v5 ~v6
  = du_isCommutativeMagma_656 v5
du_isCommutativeMagma_656 ::
  T_AlmostCommutativeRing_176 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMagma_122
du_isCommutativeMagma_656 v0
  = let v1 = d_isAlmostCommutativeRing_212 (coe v0) in
    let v2 = d_isCommutativeSemiring_62 (coe v1) in
    let v3
          = MAlonzo.Code.Algebra.Structures.d_isSemiring_1358 (coe v2) in
    let v4
          = MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1252
              (coe v3) in
    let v5
          = MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_1158
              (coe v4) in
    coe
      MAlonzo.Code.Algebra.Structures.du_isCommutativeMagma_308
      (coe
         MAlonzo.Code.Algebra.Structures.du_isCommutativeSemigroup_454
         (coe v5))
-- Algebra.Solver.Ring.AlmostCommutativeRing._-Raw-AlmostCommutative⟶_.T.+-isCommutativeMonoid
d_'43''45'isCommutativeMonoid_658 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Algebra.Bundles.T_RawRing_2460 ->
  T_AlmostCommutativeRing_176 ->
  T__'45'Raw'45'AlmostCommutative'10230'__354 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMonoid_406
d_'43''45'isCommutativeMonoid_658 ~v0 ~v1 ~v2 ~v3 ~v4 v5 ~v6
  = du_'43''45'isCommutativeMonoid_658 v5
du_'43''45'isCommutativeMonoid_658 ::
  T_AlmostCommutativeRing_176 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMonoid_406
du_'43''45'isCommutativeMonoid_658 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_1158
      (coe
         MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1252
         (coe
            MAlonzo.Code.Algebra.Structures.d_isSemiring_1358
            (coe
               d_isCommutativeSemiring_62
               (coe d_isAlmostCommutativeRing_212 (coe v0)))))
-- Algebra.Solver.Ring.AlmostCommutativeRing._-Raw-AlmostCommutative⟶_.T.isCommutativeSemigroup
d_isCommutativeSemigroup_660 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Algebra.Bundles.T_RawRing_2460 ->
  T_AlmostCommutativeRing_176 ->
  T__'45'Raw'45'AlmostCommutative'10230'__354 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemigroup_270
d_isCommutativeSemigroup_660 ~v0 ~v1 ~v2 ~v3 ~v4 v5 ~v6
  = du_isCommutativeSemigroup_660 v5
du_isCommutativeSemigroup_660 ::
  T_AlmostCommutativeRing_176 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemigroup_270
du_isCommutativeSemigroup_660 v0
  = let v1 = d_isAlmostCommutativeRing_212 (coe v0) in
    let v2 = d_isCommutativeSemiring_62 (coe v1) in
    let v3
          = MAlonzo.Code.Algebra.Structures.d_isSemiring_1358 (coe v2) in
    let v4
          = MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1252
              (coe v3) in
    coe
      MAlonzo.Code.Algebra.Structures.du_isCommutativeSemigroup_454
      (coe
         MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_1158
         (coe v4))
-- Algebra.Solver.Ring.AlmostCommutativeRing._-Raw-AlmostCommutative⟶_.T.isMagma
d_isMagma_662 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Algebra.Bundles.T_RawRing_2460 ->
  T_AlmostCommutativeRing_176 ->
  T__'45'Raw'45'AlmostCommutative'10230'__354 ->
  MAlonzo.Code.Algebra.Structures.T_IsMagma_86
d_isMagma_662 ~v0 ~v1 ~v2 ~v3 ~v4 v5 ~v6 = du_isMagma_662 v5
du_isMagma_662 ::
  T_AlmostCommutativeRing_176 ->
  MAlonzo.Code.Algebra.Structures.T_IsMagma_86
du_isMagma_662 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isMagma_202
      (coe
         MAlonzo.Code.Algebra.Structures.d_isSemigroup_368
         (coe
            MAlonzo.Code.Algebra.Structures.d_isMonoid_416
            (coe
               MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_1158
               (coe
                  MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1252
                  (coe
                     MAlonzo.Code.Algebra.Structures.d_isSemiring_1358
                     (coe
                        d_isCommutativeSemiring_62
                        (coe d_isAlmostCommutativeRing_212 (coe v0))))))))
-- Algebra.Solver.Ring.AlmostCommutativeRing._-Raw-AlmostCommutative⟶_.T.isMonoid
d_isMonoid_664 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Algebra.Bundles.T_RawRing_2460 ->
  T_AlmostCommutativeRing_176 ->
  T__'45'Raw'45'AlmostCommutative'10230'__354 ->
  MAlonzo.Code.Algebra.Structures.T_IsMonoid_358
d_isMonoid_664 ~v0 ~v1 ~v2 ~v3 ~v4 v5 ~v6 = du_isMonoid_664 v5
du_isMonoid_664 ::
  T_AlmostCommutativeRing_176 ->
  MAlonzo.Code.Algebra.Structures.T_IsMonoid_358
du_isMonoid_664 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isMonoid_416
      (coe
         MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_1158
         (coe
            MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1252
            (coe
               MAlonzo.Code.Algebra.Structures.d_isSemiring_1358
               (coe
                  d_isCommutativeSemiring_62
                  (coe d_isAlmostCommutativeRing_212 (coe v0))))))
-- Algebra.Solver.Ring.AlmostCommutativeRing._-Raw-AlmostCommutative⟶_.T.isSemigroup
d_isSemigroup_666 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Algebra.Bundles.T_RawRing_2460 ->
  T_AlmostCommutativeRing_176 ->
  T__'45'Raw'45'AlmostCommutative'10230'__354 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemigroup_194
d_isSemigroup_666 ~v0 ~v1 ~v2 ~v3 ~v4 v5 ~v6
  = du_isSemigroup_666 v5
du_isSemigroup_666 ::
  T_AlmostCommutativeRing_176 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemigroup_194
du_isSemigroup_666 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isSemigroup_368
      (coe
         MAlonzo.Code.Algebra.Structures.d_isMonoid_416
         (coe
            MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_1158
            (coe
               MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1252
               (coe
                  MAlonzo.Code.Algebra.Structures.d_isSemiring_1358
                  (coe
                     d_isCommutativeSemiring_62
                     (coe d_isAlmostCommutativeRing_212 (coe v0)))))))
-- Algebra.Solver.Ring.AlmostCommutativeRing._-Raw-AlmostCommutative⟶_.T.magma
d_magma_668 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Algebra.Bundles.T_RawRing_2460 ->
  T_AlmostCommutativeRing_176 ->
  T__'45'Raw'45'AlmostCommutative'10230'__354 ->
  MAlonzo.Code.Algebra.Bundles.T_Magma_36
d_magma_668 ~v0 ~v1 ~v2 ~v3 ~v4 v5 ~v6 = du_magma_668 v5
du_magma_668 ::
  T_AlmostCommutativeRing_176 ->
  MAlonzo.Code.Algebra.Bundles.T_Magma_36
du_magma_668 v0
  = let v1 = coe du_commutativeSemiring_316 (coe v0) in
    let v2
          = coe MAlonzo.Code.Algebra.Bundles.du_semiring_2222 (coe v1) in
    let v3
          = coe
              MAlonzo.Code.Algebra.Bundles.du_semiringWithoutAnnihilatingZero_2048
              (coe v2) in
    let v4
          = coe
              MAlonzo.Code.Algebra.Bundles.du_'43''45'commutativeMonoid_1896
              (coe v3) in
    let v5 = coe MAlonzo.Code.Algebra.Bundles.du_monoid_650 (coe v4) in
    coe
      MAlonzo.Code.Algebra.Bundles.du_magma_254
      (coe MAlonzo.Code.Algebra.Bundles.du_semigroup_566 (coe v5))
-- Algebra.Solver.Ring.AlmostCommutativeRing._-Raw-AlmostCommutative⟶_.T.monoid
d_monoid_670 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Algebra.Bundles.T_RawRing_2460 ->
  T_AlmostCommutativeRing_176 ->
  T__'45'Raw'45'AlmostCommutative'10230'__354 ->
  MAlonzo.Code.Algebra.Bundles.T_Monoid_506
d_monoid_670 ~v0 ~v1 ~v2 ~v3 ~v4 v5 ~v6 = du_monoid_670 v5
du_monoid_670 ::
  T_AlmostCommutativeRing_176 ->
  MAlonzo.Code.Algebra.Bundles.T_Monoid_506
du_monoid_670 v0
  = let v1 = coe du_commutativeSemiring_316 (coe v0) in
    let v2
          = coe MAlonzo.Code.Algebra.Bundles.du_semiring_2222 (coe v1) in
    let v3
          = coe
              MAlonzo.Code.Algebra.Bundles.du_semiringWithoutAnnihilatingZero_2048
              (coe v2) in
    coe
      MAlonzo.Code.Algebra.Bundles.du_monoid_650
      (coe
         MAlonzo.Code.Algebra.Bundles.du_'43''45'commutativeMonoid_1896
         (coe v3))
-- Algebra.Solver.Ring.AlmostCommutativeRing._-Raw-AlmostCommutative⟶_.T.semigroup
d_semigroup_672 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Algebra.Bundles.T_RawRing_2460 ->
  T_AlmostCommutativeRing_176 ->
  T__'45'Raw'45'AlmostCommutative'10230'__354 ->
  MAlonzo.Code.Algebra.Bundles.T_Semigroup_206
d_semigroup_672 ~v0 ~v1 ~v2 ~v3 ~v4 v5 ~v6 = du_semigroup_672 v5
du_semigroup_672 ::
  T_AlmostCommutativeRing_176 ->
  MAlonzo.Code.Algebra.Bundles.T_Semigroup_206
du_semigroup_672 v0
  = let v1 = coe du_commutativeSemiring_316 (coe v0) in
    let v2
          = coe MAlonzo.Code.Algebra.Bundles.du_semiring_2222 (coe v1) in
    let v3
          = coe
              MAlonzo.Code.Algebra.Bundles.du_semiringWithoutAnnihilatingZero_2048
              (coe v2) in
    let v4
          = coe
              MAlonzo.Code.Algebra.Bundles.du_'43''45'commutativeMonoid_1896
              (coe v3) in
    coe
      MAlonzo.Code.Algebra.Bundles.du_semigroup_566
      (coe MAlonzo.Code.Algebra.Bundles.du_monoid_650 (coe v4))
-- Algebra.Solver.Ring.AlmostCommutativeRing._-Raw-AlmostCommutative⟶_.T.-_
d_'45'__674 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Algebra.Bundles.T_RawRing_2460 ->
  T_AlmostCommutativeRing_176 ->
  T__'45'Raw'45'AlmostCommutative'10230'__354 -> AgdaAny -> AgdaAny
d_'45'__674 ~v0 ~v1 ~v2 ~v3 ~v4 v5 ~v6 = du_'45'__674 v5
du_'45'__674 :: T_AlmostCommutativeRing_176 -> AgdaAny -> AgdaAny
du_'45'__674 v0 = coe d_'45'__206 (coe v0)
-- Algebra.Solver.Ring.AlmostCommutativeRing._-Raw-AlmostCommutative⟶_.T.-‿*-distribˡ
d_'45''8255''42''45'distrib'737'_676 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Algebra.Bundles.T_RawRing_2460 ->
  T_AlmostCommutativeRing_176 ->
  T__'45'Raw'45'AlmostCommutative'10230'__354 ->
  AgdaAny -> AgdaAny -> AgdaAny
d_'45''8255''42''45'distrib'737'_676 ~v0 ~v1 ~v2 ~v3 ~v4 v5 ~v6
  = du_'45''8255''42''45'distrib'737'_676 v5
du_'45''8255''42''45'distrib'737'_676 ::
  T_AlmostCommutativeRing_176 -> AgdaAny -> AgdaAny -> AgdaAny
du_'45''8255''42''45'distrib'737'_676 v0
  = coe
      d_'45''8255''42''45'distrib'737'_70
      (coe d_isAlmostCommutativeRing_212 (coe v0))
-- Algebra.Solver.Ring.AlmostCommutativeRing._-Raw-AlmostCommutative⟶_.T.-‿+-comm
d_'45''8255''43''45'comm_678 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Algebra.Bundles.T_RawRing_2460 ->
  T_AlmostCommutativeRing_176 ->
  T__'45'Raw'45'AlmostCommutative'10230'__354 ->
  AgdaAny -> AgdaAny -> AgdaAny
d_'45''8255''43''45'comm_678 ~v0 ~v1 ~v2 ~v3 ~v4 v5 ~v6
  = du_'45''8255''43''45'comm_678 v5
du_'45''8255''43''45'comm_678 ::
  T_AlmostCommutativeRing_176 -> AgdaAny -> AgdaAny -> AgdaAny
du_'45''8255''43''45'comm_678 v0
  = coe
      d_'45''8255''43''45'comm_76
      (coe d_isAlmostCommutativeRing_212 (coe v0))
-- Algebra.Solver.Ring.AlmostCommutativeRing._-Raw-AlmostCommutative⟶_.T.-‿cong
d_'45''8255'cong_680 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Algebra.Bundles.T_RawRing_2460 ->
  T_AlmostCommutativeRing_176 ->
  T__'45'Raw'45'AlmostCommutative'10230'__354 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'45''8255'cong_680 ~v0 ~v1 ~v2 ~v3 ~v4 v5 ~v6
  = du_'45''8255'cong_680 v5
du_'45''8255'cong_680 ::
  T_AlmostCommutativeRing_176 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_'45''8255'cong_680 v0
  = coe
      d_'45''8255'cong_64 (coe d_isAlmostCommutativeRing_212 (coe v0))
-- Algebra.Solver.Ring.AlmostCommutativeRing._-Raw-AlmostCommutative⟶_.T.0#
d_0'35'_682 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Algebra.Bundles.T_RawRing_2460 ->
  T_AlmostCommutativeRing_176 ->
  T__'45'Raw'45'AlmostCommutative'10230'__354 -> AgdaAny
d_0'35'_682 ~v0 ~v1 ~v2 ~v3 ~v4 v5 ~v6 = du_0'35'_682 v5
du_0'35'_682 :: T_AlmostCommutativeRing_176 -> AgdaAny
du_0'35'_682 v0 = coe d_0'35'_208 (coe v0)
-- Algebra.Solver.Ring.AlmostCommutativeRing._-Raw-AlmostCommutative⟶_.T.1#
d_1'35'_684 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Algebra.Bundles.T_RawRing_2460 ->
  T_AlmostCommutativeRing_176 ->
  T__'45'Raw'45'AlmostCommutative'10230'__354 -> AgdaAny
d_1'35'_684 ~v0 ~v1 ~v2 ~v3 ~v4 v5 ~v6 = du_1'35'_684 v5
du_1'35'_684 :: T_AlmostCommutativeRing_176 -> AgdaAny
du_1'35'_684 v0 = coe d_1'35'_210 (coe v0)
-- Algebra.Solver.Ring.AlmostCommutativeRing._-Raw-AlmostCommutative⟶_.T.Carrier
d_Carrier_686 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Algebra.Bundles.T_RawRing_2460 ->
  T_AlmostCommutativeRing_176 ->
  T__'45'Raw'45'AlmostCommutative'10230'__354 -> ()
d_Carrier_686 = erased
-- Algebra.Solver.Ring.AlmostCommutativeRing._-Raw-AlmostCommutative⟶_.T.commutativeSemiring
d_commutativeSemiring_688 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Algebra.Bundles.T_RawRing_2460 ->
  T_AlmostCommutativeRing_176 ->
  T__'45'Raw'45'AlmostCommutative'10230'__354 ->
  MAlonzo.Code.Algebra.Bundles.T_CommutativeSemiring_2094
d_commutativeSemiring_688 ~v0 ~v1 ~v2 ~v3 ~v4 v5 ~v6
  = du_commutativeSemiring_688 v5
du_commutativeSemiring_688 ::
  T_AlmostCommutativeRing_176 ->
  MAlonzo.Code.Algebra.Bundles.T_CommutativeSemiring_2094
du_commutativeSemiring_688 v0
  = coe du_commutativeSemiring_316 (coe v0)
-- Algebra.Solver.Ring.AlmostCommutativeRing._-Raw-AlmostCommutative⟶_.T.distrib
d_distrib_690 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Algebra.Bundles.T_RawRing_2460 ->
  T_AlmostCommutativeRing_176 ->
  T__'45'Raw'45'AlmostCommutative'10230'__354 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_distrib_690 ~v0 ~v1 ~v2 ~v3 ~v4 v5 ~v6 = du_distrib_690 v5
du_distrib_690 ::
  T_AlmostCommutativeRing_176 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_distrib_690 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_distrib_1162
      (coe
         MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1252
         (coe
            MAlonzo.Code.Algebra.Structures.d_isSemiring_1358
            (coe
               d_isCommutativeSemiring_62
               (coe d_isAlmostCommutativeRing_212 (coe v0)))))
-- Algebra.Solver.Ring.AlmostCommutativeRing._-Raw-AlmostCommutative⟶_.T.distribʳ
d_distrib'691'_692 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Algebra.Bundles.T_RawRing_2460 ->
  T_AlmostCommutativeRing_176 ->
  T__'45'Raw'45'AlmostCommutative'10230'__354 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_distrib'691'_692 ~v0 ~v1 ~v2 ~v3 ~v4 v5 ~v6
  = du_distrib'691'_692 v5
du_distrib'691'_692 ::
  T_AlmostCommutativeRing_176 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_distrib'691'_692 v0
  = let v1 = d_isAlmostCommutativeRing_212 (coe v0) in
    let v2 = d_isCommutativeSemiring_62 (coe v1) in
    let v3
          = MAlonzo.Code.Algebra.Structures.d_isSemiring_1358 (coe v2) in
    coe
      MAlonzo.Code.Algebra.Structures.du_distrib'691'_1166
      (coe
         MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1252
         (coe v3))
-- Algebra.Solver.Ring.AlmostCommutativeRing._-Raw-AlmostCommutative⟶_.T.distribˡ
d_distrib'737'_694 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Algebra.Bundles.T_RawRing_2460 ->
  T_AlmostCommutativeRing_176 ->
  T__'45'Raw'45'AlmostCommutative'10230'__354 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_distrib'737'_694 ~v0 ~v1 ~v2 ~v3 ~v4 v5 ~v6
  = du_distrib'737'_694 v5
du_distrib'737'_694 ::
  T_AlmostCommutativeRing_176 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_distrib'737'_694 v0
  = let v1 = d_isAlmostCommutativeRing_212 (coe v0) in
    let v2 = d_isCommutativeSemiring_62 (coe v1) in
    let v3
          = MAlonzo.Code.Algebra.Structures.d_isSemiring_1358 (coe v2) in
    coe
      MAlonzo.Code.Algebra.Structures.du_distrib'737'_1164
      (coe
         MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1252
         (coe v3))
-- Algebra.Solver.Ring.AlmostCommutativeRing._-Raw-AlmostCommutative⟶_.T.isAlmostCommutativeRing
d_isAlmostCommutativeRing_696 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Algebra.Bundles.T_RawRing_2460 ->
  T_AlmostCommutativeRing_176 ->
  T__'45'Raw'45'AlmostCommutative'10230'__354 ->
  T_IsAlmostCommutativeRing_26
d_isAlmostCommutativeRing_696 ~v0 ~v1 ~v2 ~v3 ~v4 v5 ~v6
  = du_isAlmostCommutativeRing_696 v5
du_isAlmostCommutativeRing_696 ::
  T_AlmostCommutativeRing_176 -> T_IsAlmostCommutativeRing_26
du_isAlmostCommutativeRing_696 v0
  = coe d_isAlmostCommutativeRing_212 (coe v0)
-- Algebra.Solver.Ring.AlmostCommutativeRing._-Raw-AlmostCommutative⟶_.T.isCommutativeSemiring
d_isCommutativeSemiring_698 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Algebra.Bundles.T_RawRing_2460 ->
  T_AlmostCommutativeRing_176 ->
  T__'45'Raw'45'AlmostCommutative'10230'__354 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemiring_1344
d_isCommutativeSemiring_698 ~v0 ~v1 ~v2 ~v3 ~v4 v5 ~v6
  = du_isCommutativeSemiring_698 v5
du_isCommutativeSemiring_698 ::
  T_AlmostCommutativeRing_176 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemiring_1344
du_isCommutativeSemiring_698 v0
  = coe
      d_isCommutativeSemiring_62
      (coe d_isAlmostCommutativeRing_212 (coe v0))
-- Algebra.Solver.Ring.AlmostCommutativeRing._-Raw-AlmostCommutative⟶_.T.isCommutativeSemiringWithoutOne
d_isCommutativeSemiringWithoutOne_700 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Algebra.Bundles.T_RawRing_2460 ->
  T_AlmostCommutativeRing_176 ->
  T__'45'Raw'45'AlmostCommutative'10230'__354 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemiringWithoutOne_1044
d_isCommutativeSemiringWithoutOne_700 ~v0 ~v1 ~v2 ~v3 ~v4 v5 ~v6
  = du_isCommutativeSemiringWithoutOne_700 v5
du_isCommutativeSemiringWithoutOne_700 ::
  T_AlmostCommutativeRing_176 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemiringWithoutOne_1044
du_isCommutativeSemiringWithoutOne_700 v0
  = let v1 = d_isAlmostCommutativeRing_212 (coe v0) in
    coe
      MAlonzo.Code.Algebra.Structures.du_isCommutativeSemiringWithoutOne_1444
      (coe d_isCommutativeSemiring_62 (coe v1))
-- Algebra.Solver.Ring.AlmostCommutativeRing._-Raw-AlmostCommutative⟶_.T.isEquivalence
d_isEquivalence_702 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Algebra.Bundles.T_RawRing_2460 ->
  T_AlmostCommutativeRing_176 ->
  T__'45'Raw'45'AlmostCommutative'10230'__354 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsEquivalence_26
d_isEquivalence_702 ~v0 ~v1 ~v2 ~v3 ~v4 v5 ~v6
  = du_isEquivalence_702 v5
du_isEquivalence_702 ::
  T_AlmostCommutativeRing_176 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsEquivalence_26
du_isEquivalence_702 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isEquivalence_94
      (coe
         MAlonzo.Code.Algebra.Structures.d_isMagma_202
         (coe
            MAlonzo.Code.Algebra.Structures.d_isSemigroup_368
            (coe
               MAlonzo.Code.Algebra.Structures.d_isMonoid_416
               (coe
                  MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_1158
                  (coe
                     MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1252
                     (coe
                        MAlonzo.Code.Algebra.Structures.d_isSemiring_1358
                        (coe
                           d_isCommutativeSemiring_62
                           (coe d_isAlmostCommutativeRing_212 (coe v0)))))))))
-- Algebra.Solver.Ring.AlmostCommutativeRing._-Raw-AlmostCommutative⟶_.T.isNearSemiring
d_isNearSemiring_704 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Algebra.Bundles.T_RawRing_2460 ->
  T_AlmostCommutativeRing_176 ->
  T__'45'Raw'45'AlmostCommutative'10230'__354 ->
  MAlonzo.Code.Algebra.Structures.T_IsNearSemiring_876
d_isNearSemiring_704 ~v0 ~v1 ~v2 ~v3 ~v4 v5 ~v6
  = du_isNearSemiring_704 v5
du_isNearSemiring_704 ::
  T_AlmostCommutativeRing_176 ->
  MAlonzo.Code.Algebra.Structures.T_IsNearSemiring_876
du_isNearSemiring_704 v0
  = let v1 = d_isAlmostCommutativeRing_212 (coe v0) in
    let v2 = d_isCommutativeSemiring_62 (coe v1) in
    let v3
          = MAlonzo.Code.Algebra.Structures.d_isSemiring_1358 (coe v2) in
    coe
      MAlonzo.Code.Algebra.Structures.du_isNearSemiring_990
      (coe
         MAlonzo.Code.Algebra.Structures.du_isSemiringWithoutOne_1326
         (coe v3))
-- Algebra.Solver.Ring.AlmostCommutativeRing._-Raw-AlmostCommutative⟶_.T.isPartialEquivalence
d_isPartialEquivalence_706 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Algebra.Bundles.T_RawRing_2460 ->
  T_AlmostCommutativeRing_176 ->
  T__'45'Raw'45'AlmostCommutative'10230'__354 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialEquivalence_16
d_isPartialEquivalence_706 ~v0 ~v1 ~v2 ~v3 ~v4 v5 ~v6
  = du_isPartialEquivalence_706 v5
du_isPartialEquivalence_706 ::
  T_AlmostCommutativeRing_176 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialEquivalence_16
du_isPartialEquivalence_706 v0
  = let v1 = d_isAlmostCommutativeRing_212 (coe v0) in
    let v2 = d_isCommutativeSemiring_62 (coe v1) in
    let v3
          = MAlonzo.Code.Algebra.Structures.d_isSemiring_1358 (coe v2) in
    let v4
          = MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1252
              (coe v3) in
    let v5
          = MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_1158
              (coe v4) in
    let v6 = MAlonzo.Code.Algebra.Structures.d_isMonoid_416 (coe v5) in
    let v7
          = MAlonzo.Code.Algebra.Structures.d_isSemigroup_368 (coe v6) in
    let v8 = MAlonzo.Code.Algebra.Structures.d_isMagma_202 (coe v7) in
    coe
      MAlonzo.Code.Relation.Binary.Structures.du_isPartialEquivalence_42
      (coe MAlonzo.Code.Algebra.Structures.d_isEquivalence_94 (coe v8))
-- Algebra.Solver.Ring.AlmostCommutativeRing._-Raw-AlmostCommutative⟶_.T.isSemiring
d_isSemiring_708 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Algebra.Bundles.T_RawRing_2460 ->
  T_AlmostCommutativeRing_176 ->
  T__'45'Raw'45'AlmostCommutative'10230'__354 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemiring_1238
d_isSemiring_708 ~v0 ~v1 ~v2 ~v3 ~v4 v5 ~v6 = du_isSemiring_708 v5
du_isSemiring_708 ::
  T_AlmostCommutativeRing_176 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemiring_1238
du_isSemiring_708 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isSemiring_1358
      (coe
         d_isCommutativeSemiring_62
         (coe d_isAlmostCommutativeRing_212 (coe v0)))
-- Algebra.Solver.Ring.AlmostCommutativeRing._-Raw-AlmostCommutative⟶_.T.isSemiringWithoutAnnihilatingZero
d_isSemiringWithoutAnnihilatingZero_710 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Algebra.Bundles.T_RawRing_2460 ->
  T_AlmostCommutativeRing_176 ->
  T__'45'Raw'45'AlmostCommutative'10230'__354 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemiringWithoutAnnihilatingZero_1142
d_isSemiringWithoutAnnihilatingZero_710 ~v0 ~v1 ~v2 ~v3 ~v4 v5 ~v6
  = du_isSemiringWithoutAnnihilatingZero_710 v5
du_isSemiringWithoutAnnihilatingZero_710 ::
  T_AlmostCommutativeRing_176 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemiringWithoutAnnihilatingZero_1142
du_isSemiringWithoutAnnihilatingZero_710 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1252
      (coe
         MAlonzo.Code.Algebra.Structures.d_isSemiring_1358
         (coe
            d_isCommutativeSemiring_62
            (coe d_isAlmostCommutativeRing_212 (coe v0))))
-- Algebra.Solver.Ring.AlmostCommutativeRing._-Raw-AlmostCommutative⟶_.T.isSemiringWithoutOne
d_isSemiringWithoutOne_712 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Algebra.Bundles.T_RawRing_2460 ->
  T_AlmostCommutativeRing_176 ->
  T__'45'Raw'45'AlmostCommutative'10230'__354 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemiringWithoutOne_952
d_isSemiringWithoutOne_712 ~v0 ~v1 ~v2 ~v3 ~v4 v5 ~v6
  = du_isSemiringWithoutOne_712 v5
du_isSemiringWithoutOne_712 ::
  T_AlmostCommutativeRing_176 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemiringWithoutOne_952
du_isSemiringWithoutOne_712 v0
  = let v1 = d_isAlmostCommutativeRing_212 (coe v0) in
    let v2 = d_isCommutativeSemiring_62 (coe v1) in
    coe
      MAlonzo.Code.Algebra.Structures.du_isSemiringWithoutOne_1326
      (coe MAlonzo.Code.Algebra.Structures.d_isSemiring_1358 (coe v2))
-- Algebra.Solver.Ring.AlmostCommutativeRing._-Raw-AlmostCommutative⟶_.T.rawRing
d_rawRing_714 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Algebra.Bundles.T_RawRing_2460 ->
  T_AlmostCommutativeRing_176 ->
  T__'45'Raw'45'AlmostCommutative'10230'__354 ->
  MAlonzo.Code.Algebra.Bundles.T_RawRing_2460
d_rawRing_714 ~v0 ~v1 ~v2 ~v3 ~v4 v5 ~v6 = du_rawRing_714 v5
du_rawRing_714 ::
  T_AlmostCommutativeRing_176 ->
  MAlonzo.Code.Algebra.Bundles.T_RawRing_2460
du_rawRing_714 v0 = coe du_rawRing_340 (coe v0)
-- Algebra.Solver.Ring.AlmostCommutativeRing._-Raw-AlmostCommutative⟶_.T.refl
d_refl_716 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Algebra.Bundles.T_RawRing_2460 ->
  T_AlmostCommutativeRing_176 ->
  T__'45'Raw'45'AlmostCommutative'10230'__354 -> AgdaAny -> AgdaAny
d_refl_716 ~v0 ~v1 ~v2 ~v3 ~v4 v5 ~v6 = du_refl_716 v5
du_refl_716 :: T_AlmostCommutativeRing_176 -> AgdaAny -> AgdaAny
du_refl_716 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d_refl_34
      (coe
         MAlonzo.Code.Algebra.Structures.d_isEquivalence_94
         (coe
            MAlonzo.Code.Algebra.Structures.d_isMagma_202
            (coe
               MAlonzo.Code.Algebra.Structures.d_isSemigroup_368
               (coe
                  MAlonzo.Code.Algebra.Structures.d_isMonoid_416
                  (coe
                     MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_1158
                     (coe
                        MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1252
                        (coe
                           MAlonzo.Code.Algebra.Structures.d_isSemiring_1358
                           (coe
                              d_isCommutativeSemiring_62
                              (coe d_isAlmostCommutativeRing_212 (coe v0))))))))))
-- Algebra.Solver.Ring.AlmostCommutativeRing._-Raw-AlmostCommutative⟶_.T.reflexive
d_reflexive_718 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Algebra.Bundles.T_RawRing_2460 ->
  T_AlmostCommutativeRing_176 ->
  T__'45'Raw'45'AlmostCommutative'10230'__354 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 -> AgdaAny
d_reflexive_718 ~v0 ~v1 ~v2 ~v3 ~v4 v5 ~v6 = du_reflexive_718 v5
du_reflexive_718 ::
  T_AlmostCommutativeRing_176 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 -> AgdaAny
du_reflexive_718 v0
  = let v1 = d_isAlmostCommutativeRing_212 (coe v0) in
    let v2 = d_isCommutativeSemiring_62 (coe v1) in
    let v3
          = MAlonzo.Code.Algebra.Structures.d_isSemiring_1358 (coe v2) in
    let v4
          = MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1252
              (coe v3) in
    let v5
          = MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_1158
              (coe v4) in
    let v6 = MAlonzo.Code.Algebra.Structures.d_isMonoid_416 (coe v5) in
    let v7
          = MAlonzo.Code.Algebra.Structures.d_isSemigroup_368 (coe v6) in
    let v8 = MAlonzo.Code.Algebra.Structures.d_isMagma_202 (coe v7) in
    \ v9 v10 v11 ->
      coe
        MAlonzo.Code.Relation.Binary.Structures.du_reflexive_40
        (coe MAlonzo.Code.Algebra.Structures.d_isEquivalence_94 (coe v8))
        v9
-- Algebra.Solver.Ring.AlmostCommutativeRing._-Raw-AlmostCommutative⟶_.T.semiring
d_semiring_720 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Algebra.Bundles.T_RawRing_2460 ->
  T_AlmostCommutativeRing_176 ->
  T__'45'Raw'45'AlmostCommutative'10230'__354 ->
  MAlonzo.Code.Algebra.Bundles.T_Semiring_1932
d_semiring_720 ~v0 ~v1 ~v2 ~v3 ~v4 v5 ~v6 = du_semiring_720 v5
du_semiring_720 ::
  T_AlmostCommutativeRing_176 ->
  MAlonzo.Code.Algebra.Bundles.T_Semiring_1932
du_semiring_720 v0
  = coe
      MAlonzo.Code.Algebra.Bundles.du_semiring_2222
      (coe du_commutativeSemiring_316 (coe v0))
-- Algebra.Solver.Ring.AlmostCommutativeRing._-Raw-AlmostCommutative⟶_.T.setoid
d_setoid_722 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Algebra.Bundles.T_RawRing_2460 ->
  T_AlmostCommutativeRing_176 ->
  T__'45'Raw'45'AlmostCommutative'10230'__354 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44
d_setoid_722 ~v0 ~v1 ~v2 ~v3 ~v4 v5 ~v6 = du_setoid_722 v5
du_setoid_722 ::
  T_AlmostCommutativeRing_176 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44
du_setoid_722 v0
  = let v1 = d_isAlmostCommutativeRing_212 (coe v0) in
    let v2 = d_isCommutativeSemiring_62 (coe v1) in
    let v3
          = MAlonzo.Code.Algebra.Structures.d_isSemiring_1358 (coe v2) in
    let v4
          = MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1252
              (coe v3) in
    let v5
          = MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_1158
              (coe v4) in
    let v6 = MAlonzo.Code.Algebra.Structures.d_isMonoid_416 (coe v5) in
    let v7
          = MAlonzo.Code.Algebra.Structures.d_isSemigroup_368 (coe v6) in
    coe
      MAlonzo.Code.Algebra.Structures.du_setoid_110
      (coe MAlonzo.Code.Algebra.Structures.d_isMagma_202 (coe v7))
-- Algebra.Solver.Ring.AlmostCommutativeRing._-Raw-AlmostCommutative⟶_.T.sym
d_sym_724 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Algebra.Bundles.T_RawRing_2460 ->
  T_AlmostCommutativeRing_176 ->
  T__'45'Raw'45'AlmostCommutative'10230'__354 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_sym_724 ~v0 ~v1 ~v2 ~v3 ~v4 v5 ~v6 = du_sym_724 v5
du_sym_724 ::
  T_AlmostCommutativeRing_176 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_sym_724 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d_sym_36
      (coe
         MAlonzo.Code.Algebra.Structures.d_isEquivalence_94
         (coe
            MAlonzo.Code.Algebra.Structures.d_isMagma_202
            (coe
               MAlonzo.Code.Algebra.Structures.d_isSemigroup_368
               (coe
                  MAlonzo.Code.Algebra.Structures.d_isMonoid_416
                  (coe
                     MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_1158
                     (coe
                        MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1252
                        (coe
                           MAlonzo.Code.Algebra.Structures.d_isSemiring_1358
                           (coe
                              d_isCommutativeSemiring_62
                              (coe d_isAlmostCommutativeRing_212 (coe v0))))))))))
-- Algebra.Solver.Ring.AlmostCommutativeRing._-Raw-AlmostCommutative⟶_.T.trans
d_trans_726 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Algebra.Bundles.T_RawRing_2460 ->
  T_AlmostCommutativeRing_176 ->
  T__'45'Raw'45'AlmostCommutative'10230'__354 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_trans_726 ~v0 ~v1 ~v2 ~v3 ~v4 v5 ~v6 = du_trans_726 v5
du_trans_726 ::
  T_AlmostCommutativeRing_176 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_trans_726 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d_trans_38
      (coe
         MAlonzo.Code.Algebra.Structures.d_isEquivalence_94
         (coe
            MAlonzo.Code.Algebra.Structures.d_isMagma_202
            (coe
               MAlonzo.Code.Algebra.Structures.d_isSemigroup_368
               (coe
                  MAlonzo.Code.Algebra.Structures.d_isMonoid_416
                  (coe
                     MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_1158
                     (coe
                        MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1252
                        (coe
                           MAlonzo.Code.Algebra.Structures.d_isSemiring_1358
                           (coe
                              d_isCommutativeSemiring_62
                              (coe d_isAlmostCommutativeRing_212 (coe v0))))))))))
-- Algebra.Solver.Ring.AlmostCommutativeRing._-Raw-AlmostCommutative⟶_.T.zero
d_zero_728 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Algebra.Bundles.T_RawRing_2460 ->
  T_AlmostCommutativeRing_176 ->
  T__'45'Raw'45'AlmostCommutative'10230'__354 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_zero_728 ~v0 ~v1 ~v2 ~v3 ~v4 v5 ~v6 = du_zero_728 v5
du_zero_728 ::
  T_AlmostCommutativeRing_176 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_zero_728 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_zero_1254
      (coe
         MAlonzo.Code.Algebra.Structures.d_isSemiring_1358
         (coe
            d_isCommutativeSemiring_62
            (coe d_isAlmostCommutativeRing_212 (coe v0))))
-- Algebra.Solver.Ring.AlmostCommutativeRing._-Raw-AlmostCommutative⟶_.T.zeroʳ
d_zero'691'_730 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Algebra.Bundles.T_RawRing_2460 ->
  T_AlmostCommutativeRing_176 ->
  T__'45'Raw'45'AlmostCommutative'10230'__354 -> AgdaAny -> AgdaAny
d_zero'691'_730 ~v0 ~v1 ~v2 ~v3 ~v4 v5 ~v6 = du_zero'691'_730 v5
du_zero'691'_730 ::
  T_AlmostCommutativeRing_176 -> AgdaAny -> AgdaAny
du_zero'691'_730 v0
  = let v1 = d_isAlmostCommutativeRing_212 (coe v0) in
    let v2 = d_isCommutativeSemiring_62 (coe v1) in
    let v3
          = MAlonzo.Code.Algebra.Structures.d_isSemiring_1358 (coe v2) in
    coe
      MAlonzo.Code.Algebra.Structures.du_zero'691'_988
      (coe
         MAlonzo.Code.Algebra.Structures.du_isSemiringWithoutOne_1326
         (coe v3))
-- Algebra.Solver.Ring.AlmostCommutativeRing._-Raw-AlmostCommutative⟶_.T.zeroˡ
d_zero'737'_732 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Algebra.Bundles.T_RawRing_2460 ->
  T_AlmostCommutativeRing_176 ->
  T__'45'Raw'45'AlmostCommutative'10230'__354 -> AgdaAny -> AgdaAny
d_zero'737'_732 ~v0 ~v1 ~v2 ~v3 ~v4 v5 ~v6 = du_zero'737'_732 v5
du_zero'737'_732 ::
  T_AlmostCommutativeRing_176 -> AgdaAny -> AgdaAny
du_zero'737'_732 v0
  = let v1 = d_isAlmostCommutativeRing_212 (coe v0) in
    let v2 = d_isCommutativeSemiring_62 (coe v1) in
    let v3
          = MAlonzo.Code.Algebra.Structures.d_isSemiring_1358 (coe v2) in
    coe
      MAlonzo.Code.Algebra.Structures.du_zero'737'_986
      (coe
         MAlonzo.Code.Algebra.Structures.du_isSemiringWithoutOne_1326
         (coe v3))
-- Algebra.Solver.Ring.AlmostCommutativeRing._-Raw-AlmostCommutative⟶_.⟦_⟧
d_'10214'_'10215'_744 ::
  T__'45'Raw'45'AlmostCommutative'10230'__354 -> AgdaAny -> AgdaAny
d_'10214'_'10215'_744 v0
  = case coe v0 of
      C__'45'Raw'45'AlmostCommutative'10230'_'46'constructor_8329 v1 v2 v3 v4 v5 v6
        -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Algebra.Solver.Ring.AlmostCommutativeRing._-Raw-AlmostCommutative⟶_.+-homo
d_'43''45'homo_746 ::
  T__'45'Raw'45'AlmostCommutative'10230'__354 ->
  AgdaAny -> AgdaAny -> AgdaAny
d_'43''45'homo_746 v0
  = case coe v0 of
      C__'45'Raw'45'AlmostCommutative'10230'_'46'constructor_8329 v1 v2 v3 v4 v5 v6
        -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Algebra.Solver.Ring.AlmostCommutativeRing._-Raw-AlmostCommutative⟶_.*-homo
d_'42''45'homo_748 ::
  T__'45'Raw'45'AlmostCommutative'10230'__354 ->
  AgdaAny -> AgdaAny -> AgdaAny
d_'42''45'homo_748 v0
  = case coe v0 of
      C__'45'Raw'45'AlmostCommutative'10230'_'46'constructor_8329 v1 v2 v3 v4 v5 v6
        -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Algebra.Solver.Ring.AlmostCommutativeRing._-Raw-AlmostCommutative⟶_.-‿homo
d_'45''8255'homo_750 ::
  T__'45'Raw'45'AlmostCommutative'10230'__354 -> AgdaAny -> AgdaAny
d_'45''8255'homo_750 v0
  = case coe v0 of
      C__'45'Raw'45'AlmostCommutative'10230'_'46'constructor_8329 v1 v2 v3 v4 v5 v6
        -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Algebra.Solver.Ring.AlmostCommutativeRing._-Raw-AlmostCommutative⟶_.0-homo
d_0'45'homo_752 ::
  T__'45'Raw'45'AlmostCommutative'10230'__354 -> AgdaAny
d_0'45'homo_752 v0
  = case coe v0 of
      C__'45'Raw'45'AlmostCommutative'10230'_'46'constructor_8329 v1 v2 v3 v4 v5 v6
        -> coe v5
      _ -> MAlonzo.RTE.mazUnreachableError
-- Algebra.Solver.Ring.AlmostCommutativeRing._-Raw-AlmostCommutative⟶_.1-homo
d_1'45'homo_754 ::
  T__'45'Raw'45'AlmostCommutative'10230'__354 -> AgdaAny
d_1'45'homo_754 v0
  = case coe v0 of
      C__'45'Raw'45'AlmostCommutative'10230'_'46'constructor_8329 v1 v2 v3 v4 v5 v6
        -> coe v6
      _ -> MAlonzo.RTE.mazUnreachableError
-- Algebra.Solver.Ring.AlmostCommutativeRing.-raw-almostCommutative⟶
d_'45'raw'45'almostCommutative'10230'_762 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  T_AlmostCommutativeRing_176 ->
  T__'45'Raw'45'AlmostCommutative'10230'__354
d_'45'raw'45'almostCommutative'10230'_762 ~v0 ~v1 v2
  = du_'45'raw'45'almostCommutative'10230'_762 v2
du_'45'raw'45'almostCommutative'10230'_762 ::
  T_AlmostCommutativeRing_176 ->
  T__'45'Raw'45'AlmostCommutative'10230'__354
du_'45'raw'45'almostCommutative'10230'_762 v0
  = coe
      C__'45'Raw'45'AlmostCommutative'10230'_'46'constructor_8329
      (coe (\ v1 -> v1))
      (coe
         (\ v1 v2 ->
            coe
              MAlonzo.Code.Relation.Binary.Structures.d_refl_34
              (MAlonzo.Code.Algebra.Structures.d_isEquivalence_94
                 (coe
                    MAlonzo.Code.Algebra.Structures.d_isMagma_202
                    (coe
                       MAlonzo.Code.Algebra.Structures.d_isSemigroup_368
                       (coe
                          MAlonzo.Code.Algebra.Structures.d_isMonoid_416
                          (coe
                             MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_1158
                             (coe
                                MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1252
                                (coe
                                   MAlonzo.Code.Algebra.Structures.d_isSemiring_1358
                                   (coe
                                      d_isCommutativeSemiring_62
                                      (coe d_isAlmostCommutativeRing_212 (coe v0))))))))))
              (let v3 = coe du_rawRing_340 (coe v0) in
               coe MAlonzo.Code.Algebra.Bundles.d__'43'__2484 v3 v1 v2)))
      (coe
         (\ v1 v2 ->
            coe
              MAlonzo.Code.Relation.Binary.Structures.d_refl_34
              (MAlonzo.Code.Algebra.Structures.d_isEquivalence_94
                 (coe
                    MAlonzo.Code.Algebra.Structures.d_isMagma_202
                    (coe
                       MAlonzo.Code.Algebra.Structures.d_isSemigroup_368
                       (coe
                          MAlonzo.Code.Algebra.Structures.d_isMonoid_416
                          (coe
                             MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_1158
                             (coe
                                MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1252
                                (coe
                                   MAlonzo.Code.Algebra.Structures.d_isSemiring_1358
                                   (coe
                                      d_isCommutativeSemiring_62
                                      (coe d_isAlmostCommutativeRing_212 (coe v0))))))))))
              (let v3 = coe du_rawRing_340 (coe v0) in
               coe MAlonzo.Code.Algebra.Bundles.d__'42'__2486 v3 v1 v2)))
      (coe
         (\ v1 ->
            coe
              MAlonzo.Code.Relation.Binary.Structures.d_refl_34
              (MAlonzo.Code.Algebra.Structures.d_isEquivalence_94
                 (coe
                    MAlonzo.Code.Algebra.Structures.d_isMagma_202
                    (coe
                       MAlonzo.Code.Algebra.Structures.d_isSemigroup_368
                       (coe
                          MAlonzo.Code.Algebra.Structures.d_isMonoid_416
                          (coe
                             MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_1158
                             (coe
                                MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1252
                                (coe
                                   MAlonzo.Code.Algebra.Structures.d_isSemiring_1358
                                   (coe
                                      d_isCommutativeSemiring_62
                                      (coe d_isAlmostCommutativeRing_212 (coe v0))))))))))
              (let v2 = coe du_rawRing_340 (coe v0) in
               coe MAlonzo.Code.Algebra.Bundles.d_'45'__2488 v2 v1)))
      (coe
         MAlonzo.Code.Relation.Binary.Structures.d_refl_34
         (MAlonzo.Code.Algebra.Structures.d_isEquivalence_94
            (coe
               MAlonzo.Code.Algebra.Structures.d_isMagma_202
               (coe
                  MAlonzo.Code.Algebra.Structures.d_isSemigroup_368
                  (coe
                     MAlonzo.Code.Algebra.Structures.d_isMonoid_416
                     (coe
                        MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_1158
                        (coe
                           MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1252
                           (coe
                              MAlonzo.Code.Algebra.Structures.d_isSemiring_1358
                              (coe
                                 d_isCommutativeSemiring_62
                                 (coe d_isAlmostCommutativeRing_212 (coe v0))))))))))
         (let v1 = coe du_rawRing_340 (coe v0) in
          MAlonzo.Code.Algebra.Bundles.d_0'35'_2490 (coe v1)))
      (coe
         MAlonzo.Code.Relation.Binary.Structures.d_refl_34
         (MAlonzo.Code.Algebra.Structures.d_isEquivalence_94
            (coe
               MAlonzo.Code.Algebra.Structures.d_isMagma_202
               (coe
                  MAlonzo.Code.Algebra.Structures.d_isSemigroup_368
                  (coe
                     MAlonzo.Code.Algebra.Structures.d_isMonoid_416
                     (coe
                        MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_1158
                        (coe
                           MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1252
                           (coe
                              MAlonzo.Code.Algebra.Structures.d_isSemiring_1358
                              (coe
                                 d_isCommutativeSemiring_62
                                 (coe d_isAlmostCommutativeRing_212 (coe v0))))))))))
         (let v1 = coe du_rawRing_340 (coe v0) in
          MAlonzo.Code.Algebra.Bundles.d_1'35'_2492 (coe v1)))
-- Algebra.Solver.Ring.AlmostCommutativeRing._._._*_
d__'42'__772 ::
  T_AlmostCommutativeRing_176 -> AgdaAny -> AgdaAny -> AgdaAny
d__'42'__772 v0 = coe d__'42'__204 (coe v0)
-- Algebra.Solver.Ring.AlmostCommutativeRing._._._+_
d__'43'__774 ::
  T_AlmostCommutativeRing_176 -> AgdaAny -> AgdaAny -> AgdaAny
d__'43'__774 v0 = coe d__'43'__202 (coe v0)
-- Algebra.Solver.Ring.AlmostCommutativeRing._._._≈_
d__'8776'__776 ::
  T_AlmostCommutativeRing_176 -> AgdaAny -> AgdaAny -> ()
d__'8776'__776 = erased
-- Algebra.Solver.Ring.AlmostCommutativeRing._._.assoc
d_assoc_778 ::
  T_AlmostCommutativeRing_176 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_assoc_778 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_assoc_204
      (coe
         MAlonzo.Code.Algebra.Structures.d_isSemigroup_368
         (coe
            MAlonzo.Code.Algebra.Structures.d_'42''45'isMonoid_1160
            (coe
               MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1252
               (coe
                  MAlonzo.Code.Algebra.Structures.d_isSemiring_1358
                  (coe
                     d_isCommutativeSemiring_62
                     (coe d_isAlmostCommutativeRing_212 (coe v0)))))))
-- Algebra.Solver.Ring.AlmostCommutativeRing._._.*-comm
d_'42''45'comm_780 ::
  T_AlmostCommutativeRing_176 -> AgdaAny -> AgdaAny -> AgdaAny
d_'42''45'comm_780 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_'42''45'comm_1360
      (coe
         d_isCommutativeSemiring_62
         (coe d_isAlmostCommutativeRing_212 (coe v0)))
-- Algebra.Solver.Ring.AlmostCommutativeRing._._.*-commutativeMonoid
d_'42''45'commutativeMonoid_782 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  T_AlmostCommutativeRing_176 ->
  MAlonzo.Code.Algebra.Bundles.T_CommutativeMonoid_582
d_'42''45'commutativeMonoid_782 ~v0 ~v1 v2
  = du_'42''45'commutativeMonoid_782 v2
du_'42''45'commutativeMonoid_782 ::
  T_AlmostCommutativeRing_176 ->
  MAlonzo.Code.Algebra.Bundles.T_CommutativeMonoid_582
du_'42''45'commutativeMonoid_782 v0
  = coe
      MAlonzo.Code.Algebra.Bundles.du_'42''45'commutativeMonoid_2262
      (coe du_commutativeSemiring_316 (coe v0))
-- Algebra.Solver.Ring.AlmostCommutativeRing._._.commutativeSemigroup
d_commutativeSemigroup_784 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  T_AlmostCommutativeRing_176 ->
  MAlonzo.Code.Algebra.Bundles.T_CommutativeSemigroup_332
d_commutativeSemigroup_784 ~v0 ~v1 v2
  = du_commutativeSemigroup_784 v2
du_commutativeSemigroup_784 ::
  T_AlmostCommutativeRing_176 ->
  MAlonzo.Code.Algebra.Bundles.T_CommutativeSemigroup_332
du_commutativeSemigroup_784 v0
  = let v1 = coe du_commutativeSemiring_316 (coe v0) in
    coe
      MAlonzo.Code.Algebra.Bundles.du_commutativeSemigroup_664
      (coe
         MAlonzo.Code.Algebra.Bundles.du_'42''45'commutativeMonoid_2262
         (coe v1))
-- Algebra.Solver.Ring.AlmostCommutativeRing._._.∙-cong
d_'8729''45'cong_786 ::
  T_AlmostCommutativeRing_176 ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8729''45'cong_786 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_'8729''45'cong_96
      (coe
         MAlonzo.Code.Algebra.Structures.d_isMagma_202
         (coe
            MAlonzo.Code.Algebra.Structures.d_isSemigroup_368
            (coe
               MAlonzo.Code.Algebra.Structures.d_'42''45'isMonoid_1160
               (coe
                  MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1252
                  (coe
                     MAlonzo.Code.Algebra.Structures.d_isSemiring_1358
                     (coe
                        d_isCommutativeSemiring_62
                        (coe d_isAlmostCommutativeRing_212 (coe v0))))))))
-- Algebra.Solver.Ring.AlmostCommutativeRing._._.∙-congʳ
d_'8729''45'cong'691'_788 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  T_AlmostCommutativeRing_176 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8729''45'cong'691'_788 ~v0 ~v1 v2
  = du_'8729''45'cong'691'_788 v2
du_'8729''45'cong'691'_788 ::
  T_AlmostCommutativeRing_176 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_'8729''45'cong'691'_788 v0
  = let v1 = d_isAlmostCommutativeRing_212 (coe v0) in
    let v2 = d_isCommutativeSemiring_62 (coe v1) in
    let v3
          = MAlonzo.Code.Algebra.Structures.d_isSemiring_1358 (coe v2) in
    let v4
          = MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1252
              (coe v3) in
    let v5
          = MAlonzo.Code.Algebra.Structures.d_'42''45'isMonoid_1160
              (coe v4) in
    let v6
          = MAlonzo.Code.Algebra.Structures.d_isSemigroup_368 (coe v5) in
    coe
      MAlonzo.Code.Algebra.Structures.du_'8729''45'cong'691'_116
      (coe MAlonzo.Code.Algebra.Structures.d_isMagma_202 (coe v6))
-- Algebra.Solver.Ring.AlmostCommutativeRing._._.∙-congˡ
d_'8729''45'cong'737'_790 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  T_AlmostCommutativeRing_176 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8729''45'cong'737'_790 ~v0 ~v1 v2
  = du_'8729''45'cong'737'_790 v2
du_'8729''45'cong'737'_790 ::
  T_AlmostCommutativeRing_176 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_'8729''45'cong'737'_790 v0
  = let v1 = d_isAlmostCommutativeRing_212 (coe v0) in
    let v2 = d_isCommutativeSemiring_62 (coe v1) in
    let v3
          = MAlonzo.Code.Algebra.Structures.d_isSemiring_1358 (coe v2) in
    let v4
          = MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1252
              (coe v3) in
    let v5
          = MAlonzo.Code.Algebra.Structures.d_'42''45'isMonoid_1160
              (coe v4) in
    let v6
          = MAlonzo.Code.Algebra.Structures.d_isSemigroup_368 (coe v5) in
    coe
      MAlonzo.Code.Algebra.Structures.du_'8729''45'cong'737'_112
      (coe MAlonzo.Code.Algebra.Structures.d_isMagma_202 (coe v6))
-- Algebra.Solver.Ring.AlmostCommutativeRing._._.identity
d_identity_792 ::
  T_AlmostCommutativeRing_176 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_identity_792 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_identity_370
      (coe
         MAlonzo.Code.Algebra.Structures.d_'42''45'isMonoid_1160
         (coe
            MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1252
            (coe
               MAlonzo.Code.Algebra.Structures.d_isSemiring_1358
               (coe
                  d_isCommutativeSemiring_62
                  (coe d_isAlmostCommutativeRing_212 (coe v0))))))
-- Algebra.Solver.Ring.AlmostCommutativeRing._._.identityʳ
d_identity'691'_794 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  T_AlmostCommutativeRing_176 -> AgdaAny -> AgdaAny
d_identity'691'_794 ~v0 ~v1 v2 = du_identity'691'_794 v2
du_identity'691'_794 ::
  T_AlmostCommutativeRing_176 -> AgdaAny -> AgdaAny
du_identity'691'_794 v0
  = let v1 = d_isAlmostCommutativeRing_212 (coe v0) in
    let v2 = d_isCommutativeSemiring_62 (coe v1) in
    let v3
          = MAlonzo.Code.Algebra.Structures.d_isSemiring_1358 (coe v2) in
    let v4
          = MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1252
              (coe v3) in
    coe
      MAlonzo.Code.Algebra.Structures.du_identity'691'_400
      (coe
         MAlonzo.Code.Algebra.Structures.d_'42''45'isMonoid_1160 (coe v4))
-- Algebra.Solver.Ring.AlmostCommutativeRing._._.identityˡ
d_identity'737'_796 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  T_AlmostCommutativeRing_176 -> AgdaAny -> AgdaAny
d_identity'737'_796 ~v0 ~v1 v2 = du_identity'737'_796 v2
du_identity'737'_796 ::
  T_AlmostCommutativeRing_176 -> AgdaAny -> AgdaAny
du_identity'737'_796 v0
  = let v1 = d_isAlmostCommutativeRing_212 (coe v0) in
    let v2 = d_isCommutativeSemiring_62 (coe v1) in
    let v3
          = MAlonzo.Code.Algebra.Structures.d_isSemiring_1358 (coe v2) in
    let v4
          = MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1252
              (coe v3) in
    coe
      MAlonzo.Code.Algebra.Structures.du_identity'737'_398
      (coe
         MAlonzo.Code.Algebra.Structures.d_'42''45'isMonoid_1160 (coe v4))
-- Algebra.Solver.Ring.AlmostCommutativeRing._._.isCommutativeMagma
d_isCommutativeMagma_798 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  T_AlmostCommutativeRing_176 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMagma_122
d_isCommutativeMagma_798 ~v0 ~v1 v2 = du_isCommutativeMagma_798 v2
du_isCommutativeMagma_798 ::
  T_AlmostCommutativeRing_176 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMagma_122
du_isCommutativeMagma_798 v0
  = let v1 = d_isAlmostCommutativeRing_212 (coe v0) in
    let v2 = d_isCommutativeSemiring_62 (coe v1) in
    let v3
          = coe
              MAlonzo.Code.Algebra.Structures.du_isCommutativeSemiringWithoutOne_1444
              (coe v2) in
    coe
      MAlonzo.Code.Algebra.Structures.du_isCommutativeMagma_308
      (coe
         MAlonzo.Code.Algebra.Structures.du_'42''45'isCommutativeSemigroup_1128
         (coe v3))
-- Algebra.Solver.Ring.AlmostCommutativeRing._._.*-isCommutativeMonoid
d_'42''45'isCommutativeMonoid_800 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  T_AlmostCommutativeRing_176 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMonoid_406
d_'42''45'isCommutativeMonoid_800 ~v0 ~v1 v2
  = du_'42''45'isCommutativeMonoid_800 v2
du_'42''45'isCommutativeMonoid_800 ::
  T_AlmostCommutativeRing_176 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMonoid_406
du_'42''45'isCommutativeMonoid_800 v0
  = let v1 = d_isAlmostCommutativeRing_212 (coe v0) in
    coe
      MAlonzo.Code.Algebra.Structures.du_'42''45'isCommutativeMonoid_1452
      (coe d_isCommutativeSemiring_62 (coe v1))
-- Algebra.Solver.Ring.AlmostCommutativeRing._._.*-isCommutativeSemigroup
d_'42''45'isCommutativeSemigroup_802 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  T_AlmostCommutativeRing_176 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemigroup_270
d_'42''45'isCommutativeSemigroup_802 ~v0 ~v1 v2
  = du_'42''45'isCommutativeSemigroup_802 v2
du_'42''45'isCommutativeSemigroup_802 ::
  T_AlmostCommutativeRing_176 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemigroup_270
du_'42''45'isCommutativeSemigroup_802 v0
  = let v1 = d_isAlmostCommutativeRing_212 (coe v0) in
    let v2 = d_isCommutativeSemiring_62 (coe v1) in
    coe
      MAlonzo.Code.Algebra.Structures.du_'42''45'isCommutativeSemigroup_1128
      (coe
         MAlonzo.Code.Algebra.Structures.du_isCommutativeSemiringWithoutOne_1444
         (coe v2))
-- Algebra.Solver.Ring.AlmostCommutativeRing._._.isMagma
d_isMagma_804 ::
  T_AlmostCommutativeRing_176 ->
  MAlonzo.Code.Algebra.Structures.T_IsMagma_86
d_isMagma_804 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isMagma_202
      (coe
         MAlonzo.Code.Algebra.Structures.d_isSemigroup_368
         (coe
            MAlonzo.Code.Algebra.Structures.d_'42''45'isMonoid_1160
            (coe
               MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1252
               (coe
                  MAlonzo.Code.Algebra.Structures.d_isSemiring_1358
                  (coe
                     d_isCommutativeSemiring_62
                     (coe d_isAlmostCommutativeRing_212 (coe v0)))))))
-- Algebra.Solver.Ring.AlmostCommutativeRing._._.*-isMonoid
d_'42''45'isMonoid_806 ::
  T_AlmostCommutativeRing_176 ->
  MAlonzo.Code.Algebra.Structures.T_IsMonoid_358
d_'42''45'isMonoid_806 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_'42''45'isMonoid_1160
      (coe
         MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1252
         (coe
            MAlonzo.Code.Algebra.Structures.d_isSemiring_1358
            (coe
               d_isCommutativeSemiring_62
               (coe d_isAlmostCommutativeRing_212 (coe v0)))))
-- Algebra.Solver.Ring.AlmostCommutativeRing._._.isSemigroup
d_isSemigroup_808 ::
  T_AlmostCommutativeRing_176 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemigroup_194
d_isSemigroup_808 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isSemigroup_368
      (coe
         MAlonzo.Code.Algebra.Structures.d_'42''45'isMonoid_1160
         (coe
            MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1252
            (coe
               MAlonzo.Code.Algebra.Structures.d_isSemiring_1358
               (coe
                  d_isCommutativeSemiring_62
                  (coe d_isAlmostCommutativeRing_212 (coe v0))))))
-- Algebra.Solver.Ring.AlmostCommutativeRing._._.magma
d_magma_810 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  T_AlmostCommutativeRing_176 ->
  MAlonzo.Code.Algebra.Bundles.T_Magma_36
d_magma_810 ~v0 ~v1 v2 = du_magma_810 v2
du_magma_810 ::
  T_AlmostCommutativeRing_176 ->
  MAlonzo.Code.Algebra.Bundles.T_Magma_36
du_magma_810 v0
  = let v1 = coe du_commutativeSemiring_316 (coe v0) in
    let v2
          = coe MAlonzo.Code.Algebra.Bundles.du_semiring_2222 (coe v1) in
    let v3
          = coe
              MAlonzo.Code.Algebra.Bundles.du_semiringWithoutAnnihilatingZero_2048
              (coe v2) in
    let v4
          = coe
              MAlonzo.Code.Algebra.Bundles.du_'42''45'monoid_1916 (coe v3) in
    coe
      MAlonzo.Code.Algebra.Bundles.du_magma_254
      (coe MAlonzo.Code.Algebra.Bundles.du_semigroup_566 (coe v4))
-- Algebra.Solver.Ring.AlmostCommutativeRing._._.*-monoid
d_'42''45'monoid_812 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  T_AlmostCommutativeRing_176 ->
  MAlonzo.Code.Algebra.Bundles.T_Monoid_506
d_'42''45'monoid_812 ~v0 ~v1 v2 = du_'42''45'monoid_812 v2
du_'42''45'monoid_812 ::
  T_AlmostCommutativeRing_176 ->
  MAlonzo.Code.Algebra.Bundles.T_Monoid_506
du_'42''45'monoid_812 v0
  = let v1 = coe du_commutativeSemiring_316 (coe v0) in
    let v2
          = coe MAlonzo.Code.Algebra.Bundles.du_semiring_2222 (coe v1) in
    coe
      MAlonzo.Code.Algebra.Bundles.du_'42''45'monoid_1916
      (coe
         MAlonzo.Code.Algebra.Bundles.du_semiringWithoutAnnihilatingZero_2048
         (coe v2))
-- Algebra.Solver.Ring.AlmostCommutativeRing._._.semigroup
d_semigroup_814 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  T_AlmostCommutativeRing_176 ->
  MAlonzo.Code.Algebra.Bundles.T_Semigroup_206
d_semigroup_814 ~v0 ~v1 v2 = du_semigroup_814 v2
du_semigroup_814 ::
  T_AlmostCommutativeRing_176 ->
  MAlonzo.Code.Algebra.Bundles.T_Semigroup_206
du_semigroup_814 v0
  = let v1 = coe du_commutativeSemiring_316 (coe v0) in
    let v2
          = coe MAlonzo.Code.Algebra.Bundles.du_semiring_2222 (coe v1) in
    let v3
          = coe
              MAlonzo.Code.Algebra.Bundles.du_semiringWithoutAnnihilatingZero_2048
              (coe v2) in
    coe
      MAlonzo.Code.Algebra.Bundles.du_semigroup_566
      (coe MAlonzo.Code.Algebra.Bundles.du_'42''45'monoid_1916 (coe v3))
-- Algebra.Solver.Ring.AlmostCommutativeRing._._.assoc
d_assoc_816 ::
  T_AlmostCommutativeRing_176 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_assoc_816 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_assoc_204
      (coe
         MAlonzo.Code.Algebra.Structures.d_isSemigroup_368
         (coe
            MAlonzo.Code.Algebra.Structures.d_isMonoid_416
            (coe
               MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_1158
               (coe
                  MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1252
                  (coe
                     MAlonzo.Code.Algebra.Structures.d_isSemiring_1358
                     (coe
                        d_isCommutativeSemiring_62
                        (coe d_isAlmostCommutativeRing_212 (coe v0))))))))
-- Algebra.Solver.Ring.AlmostCommutativeRing._._.comm
d_comm_818 ::
  T_AlmostCommutativeRing_176 -> AgdaAny -> AgdaAny -> AgdaAny
d_comm_818 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_comm_418
      (coe
         MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_1158
         (coe
            MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1252
            (coe
               MAlonzo.Code.Algebra.Structures.d_isSemiring_1358
               (coe
                  d_isCommutativeSemiring_62
                  (coe d_isAlmostCommutativeRing_212 (coe v0))))))
-- Algebra.Solver.Ring.AlmostCommutativeRing._._.+-commutativeMonoid
d_'43''45'commutativeMonoid_820 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  T_AlmostCommutativeRing_176 ->
  MAlonzo.Code.Algebra.Bundles.T_CommutativeMonoid_582
d_'43''45'commutativeMonoid_820 ~v0 ~v1 v2
  = du_'43''45'commutativeMonoid_820 v2
du_'43''45'commutativeMonoid_820 ::
  T_AlmostCommutativeRing_176 ->
  MAlonzo.Code.Algebra.Bundles.T_CommutativeMonoid_582
du_'43''45'commutativeMonoid_820 v0
  = let v1 = coe du_commutativeSemiring_316 (coe v0) in
    let v2
          = coe MAlonzo.Code.Algebra.Bundles.du_semiring_2222 (coe v1) in
    coe
      MAlonzo.Code.Algebra.Bundles.du_'43''45'commutativeMonoid_1896
      (coe
         MAlonzo.Code.Algebra.Bundles.du_semiringWithoutAnnihilatingZero_2048
         (coe v2))
-- Algebra.Solver.Ring.AlmostCommutativeRing._._.∙-cong
d_'8729''45'cong_822 ::
  T_AlmostCommutativeRing_176 ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8729''45'cong_822 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_'8729''45'cong_96
      (coe
         MAlonzo.Code.Algebra.Structures.d_isMagma_202
         (coe
            MAlonzo.Code.Algebra.Structures.d_isSemigroup_368
            (coe
               MAlonzo.Code.Algebra.Structures.d_isMonoid_416
               (coe
                  MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_1158
                  (coe
                     MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1252
                     (coe
                        MAlonzo.Code.Algebra.Structures.d_isSemiring_1358
                        (coe
                           d_isCommutativeSemiring_62
                           (coe d_isAlmostCommutativeRing_212 (coe v0)))))))))
-- Algebra.Solver.Ring.AlmostCommutativeRing._._.∙-congʳ
d_'8729''45'cong'691'_824 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  T_AlmostCommutativeRing_176 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8729''45'cong'691'_824 ~v0 ~v1 v2
  = du_'8729''45'cong'691'_824 v2
du_'8729''45'cong'691'_824 ::
  T_AlmostCommutativeRing_176 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_'8729''45'cong'691'_824 v0
  = let v1 = d_isAlmostCommutativeRing_212 (coe v0) in
    let v2 = d_isCommutativeSemiring_62 (coe v1) in
    let v3
          = MAlonzo.Code.Algebra.Structures.d_isSemiring_1358 (coe v2) in
    let v4
          = MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1252
              (coe v3) in
    let v5
          = MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_1158
              (coe v4) in
    let v6 = MAlonzo.Code.Algebra.Structures.d_isMonoid_416 (coe v5) in
    let v7
          = MAlonzo.Code.Algebra.Structures.d_isSemigroup_368 (coe v6) in
    coe
      MAlonzo.Code.Algebra.Structures.du_'8729''45'cong'691'_116
      (coe MAlonzo.Code.Algebra.Structures.d_isMagma_202 (coe v7))
-- Algebra.Solver.Ring.AlmostCommutativeRing._._.∙-congˡ
d_'8729''45'cong'737'_826 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  T_AlmostCommutativeRing_176 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8729''45'cong'737'_826 ~v0 ~v1 v2
  = du_'8729''45'cong'737'_826 v2
du_'8729''45'cong'737'_826 ::
  T_AlmostCommutativeRing_176 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_'8729''45'cong'737'_826 v0
  = let v1 = d_isAlmostCommutativeRing_212 (coe v0) in
    let v2 = d_isCommutativeSemiring_62 (coe v1) in
    let v3
          = MAlonzo.Code.Algebra.Structures.d_isSemiring_1358 (coe v2) in
    let v4
          = MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1252
              (coe v3) in
    let v5
          = MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_1158
              (coe v4) in
    let v6 = MAlonzo.Code.Algebra.Structures.d_isMonoid_416 (coe v5) in
    let v7
          = MAlonzo.Code.Algebra.Structures.d_isSemigroup_368 (coe v6) in
    coe
      MAlonzo.Code.Algebra.Structures.du_'8729''45'cong'737'_112
      (coe MAlonzo.Code.Algebra.Structures.d_isMagma_202 (coe v7))
-- Algebra.Solver.Ring.AlmostCommutativeRing._._.identity
d_identity_828 ::
  T_AlmostCommutativeRing_176 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_identity_828 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_identity_370
      (coe
         MAlonzo.Code.Algebra.Structures.d_isMonoid_416
         (coe
            MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_1158
            (coe
               MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1252
               (coe
                  MAlonzo.Code.Algebra.Structures.d_isSemiring_1358
                  (coe
                     d_isCommutativeSemiring_62
                     (coe d_isAlmostCommutativeRing_212 (coe v0)))))))
-- Algebra.Solver.Ring.AlmostCommutativeRing._._.identityʳ
d_identity'691'_830 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  T_AlmostCommutativeRing_176 -> AgdaAny -> AgdaAny
d_identity'691'_830 ~v0 ~v1 v2 = du_identity'691'_830 v2
du_identity'691'_830 ::
  T_AlmostCommutativeRing_176 -> AgdaAny -> AgdaAny
du_identity'691'_830 v0
  = let v1 = d_isAlmostCommutativeRing_212 (coe v0) in
    let v2 = d_isCommutativeSemiring_62 (coe v1) in
    let v3
          = MAlonzo.Code.Algebra.Structures.d_isSemiring_1358 (coe v2) in
    let v4
          = MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1252
              (coe v3) in
    let v5
          = MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_1158
              (coe v4) in
    coe
      MAlonzo.Code.Algebra.Structures.du_identity'691'_400
      (coe MAlonzo.Code.Algebra.Structures.d_isMonoid_416 (coe v5))
-- Algebra.Solver.Ring.AlmostCommutativeRing._._.identityˡ
d_identity'737'_832 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  T_AlmostCommutativeRing_176 -> AgdaAny -> AgdaAny
d_identity'737'_832 ~v0 ~v1 v2 = du_identity'737'_832 v2
du_identity'737'_832 ::
  T_AlmostCommutativeRing_176 -> AgdaAny -> AgdaAny
du_identity'737'_832 v0
  = let v1 = d_isAlmostCommutativeRing_212 (coe v0) in
    let v2 = d_isCommutativeSemiring_62 (coe v1) in
    let v3
          = MAlonzo.Code.Algebra.Structures.d_isSemiring_1358 (coe v2) in
    let v4
          = MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1252
              (coe v3) in
    let v5
          = MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_1158
              (coe v4) in
    coe
      MAlonzo.Code.Algebra.Structures.du_identity'737'_398
      (coe MAlonzo.Code.Algebra.Structures.d_isMonoid_416 (coe v5))
-- Algebra.Solver.Ring.AlmostCommutativeRing._._.isCommutativeMagma
d_isCommutativeMagma_834 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  T_AlmostCommutativeRing_176 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMagma_122
d_isCommutativeMagma_834 ~v0 ~v1 v2 = du_isCommutativeMagma_834 v2
du_isCommutativeMagma_834 ::
  T_AlmostCommutativeRing_176 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMagma_122
du_isCommutativeMagma_834 v0
  = let v1 = d_isAlmostCommutativeRing_212 (coe v0) in
    let v2 = d_isCommutativeSemiring_62 (coe v1) in
    let v3
          = MAlonzo.Code.Algebra.Structures.d_isSemiring_1358 (coe v2) in
    let v4
          = MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1252
              (coe v3) in
    let v5
          = MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_1158
              (coe v4) in
    coe
      MAlonzo.Code.Algebra.Structures.du_isCommutativeMagma_308
      (coe
         MAlonzo.Code.Algebra.Structures.du_isCommutativeSemigroup_454
         (coe v5))
-- Algebra.Solver.Ring.AlmostCommutativeRing._._.+-isCommutativeMonoid
d_'43''45'isCommutativeMonoid_836 ::
  T_AlmostCommutativeRing_176 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMonoid_406
d_'43''45'isCommutativeMonoid_836 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_1158
      (coe
         MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1252
         (coe
            MAlonzo.Code.Algebra.Structures.d_isSemiring_1358
            (coe
               d_isCommutativeSemiring_62
               (coe d_isAlmostCommutativeRing_212 (coe v0)))))
-- Algebra.Solver.Ring.AlmostCommutativeRing._._.isCommutativeSemigroup
d_isCommutativeSemigroup_838 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  T_AlmostCommutativeRing_176 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemigroup_270
d_isCommutativeSemigroup_838 ~v0 ~v1 v2
  = du_isCommutativeSemigroup_838 v2
du_isCommutativeSemigroup_838 ::
  T_AlmostCommutativeRing_176 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemigroup_270
du_isCommutativeSemigroup_838 v0
  = let v1 = d_isAlmostCommutativeRing_212 (coe v0) in
    let v2 = d_isCommutativeSemiring_62 (coe v1) in
    let v3
          = MAlonzo.Code.Algebra.Structures.d_isSemiring_1358 (coe v2) in
    let v4
          = MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1252
              (coe v3) in
    coe
      MAlonzo.Code.Algebra.Structures.du_isCommutativeSemigroup_454
      (coe
         MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_1158
         (coe v4))
-- Algebra.Solver.Ring.AlmostCommutativeRing._._.isMagma
d_isMagma_840 ::
  T_AlmostCommutativeRing_176 ->
  MAlonzo.Code.Algebra.Structures.T_IsMagma_86
d_isMagma_840 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isMagma_202
      (coe
         MAlonzo.Code.Algebra.Structures.d_isSemigroup_368
         (coe
            MAlonzo.Code.Algebra.Structures.d_isMonoid_416
            (coe
               MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_1158
               (coe
                  MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1252
                  (coe
                     MAlonzo.Code.Algebra.Structures.d_isSemiring_1358
                     (coe
                        d_isCommutativeSemiring_62
                        (coe d_isAlmostCommutativeRing_212 (coe v0))))))))
-- Algebra.Solver.Ring.AlmostCommutativeRing._._.isMonoid
d_isMonoid_842 ::
  T_AlmostCommutativeRing_176 ->
  MAlonzo.Code.Algebra.Structures.T_IsMonoid_358
d_isMonoid_842 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isMonoid_416
      (coe
         MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_1158
         (coe
            MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1252
            (coe
               MAlonzo.Code.Algebra.Structures.d_isSemiring_1358
               (coe
                  d_isCommutativeSemiring_62
                  (coe d_isAlmostCommutativeRing_212 (coe v0))))))
-- Algebra.Solver.Ring.AlmostCommutativeRing._._.isSemigroup
d_isSemigroup_844 ::
  T_AlmostCommutativeRing_176 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemigroup_194
d_isSemigroup_844 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isSemigroup_368
      (coe
         MAlonzo.Code.Algebra.Structures.d_isMonoid_416
         (coe
            MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_1158
            (coe
               MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1252
               (coe
                  MAlonzo.Code.Algebra.Structures.d_isSemiring_1358
                  (coe
                     d_isCommutativeSemiring_62
                     (coe d_isAlmostCommutativeRing_212 (coe v0)))))))
-- Algebra.Solver.Ring.AlmostCommutativeRing._._.magma
d_magma_846 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  T_AlmostCommutativeRing_176 ->
  MAlonzo.Code.Algebra.Bundles.T_Magma_36
d_magma_846 ~v0 ~v1 v2 = du_magma_846 v2
du_magma_846 ::
  T_AlmostCommutativeRing_176 ->
  MAlonzo.Code.Algebra.Bundles.T_Magma_36
du_magma_846 v0
  = let v1 = coe du_commutativeSemiring_316 (coe v0) in
    let v2
          = coe MAlonzo.Code.Algebra.Bundles.du_semiring_2222 (coe v1) in
    let v3
          = coe
              MAlonzo.Code.Algebra.Bundles.du_semiringWithoutAnnihilatingZero_2048
              (coe v2) in
    let v4
          = coe
              MAlonzo.Code.Algebra.Bundles.du_'43''45'commutativeMonoid_1896
              (coe v3) in
    let v5 = coe MAlonzo.Code.Algebra.Bundles.du_monoid_650 (coe v4) in
    coe
      MAlonzo.Code.Algebra.Bundles.du_magma_254
      (coe MAlonzo.Code.Algebra.Bundles.du_semigroup_566 (coe v5))
-- Algebra.Solver.Ring.AlmostCommutativeRing._._.monoid
d_monoid_848 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  T_AlmostCommutativeRing_176 ->
  MAlonzo.Code.Algebra.Bundles.T_Monoid_506
d_monoid_848 ~v0 ~v1 v2 = du_monoid_848 v2
du_monoid_848 ::
  T_AlmostCommutativeRing_176 ->
  MAlonzo.Code.Algebra.Bundles.T_Monoid_506
du_monoid_848 v0
  = let v1 = coe du_commutativeSemiring_316 (coe v0) in
    let v2
          = coe MAlonzo.Code.Algebra.Bundles.du_semiring_2222 (coe v1) in
    let v3
          = coe
              MAlonzo.Code.Algebra.Bundles.du_semiringWithoutAnnihilatingZero_2048
              (coe v2) in
    coe
      MAlonzo.Code.Algebra.Bundles.du_monoid_650
      (coe
         MAlonzo.Code.Algebra.Bundles.du_'43''45'commutativeMonoid_1896
         (coe v3))
-- Algebra.Solver.Ring.AlmostCommutativeRing._._.semigroup
d_semigroup_850 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  T_AlmostCommutativeRing_176 ->
  MAlonzo.Code.Algebra.Bundles.T_Semigroup_206
d_semigroup_850 ~v0 ~v1 v2 = du_semigroup_850 v2
du_semigroup_850 ::
  T_AlmostCommutativeRing_176 ->
  MAlonzo.Code.Algebra.Bundles.T_Semigroup_206
du_semigroup_850 v0
  = let v1 = coe du_commutativeSemiring_316 (coe v0) in
    let v2
          = coe MAlonzo.Code.Algebra.Bundles.du_semiring_2222 (coe v1) in
    let v3
          = coe
              MAlonzo.Code.Algebra.Bundles.du_semiringWithoutAnnihilatingZero_2048
              (coe v2) in
    let v4
          = coe
              MAlonzo.Code.Algebra.Bundles.du_'43''45'commutativeMonoid_1896
              (coe v3) in
    coe
      MAlonzo.Code.Algebra.Bundles.du_semigroup_566
      (coe MAlonzo.Code.Algebra.Bundles.du_monoid_650 (coe v4))
-- Algebra.Solver.Ring.AlmostCommutativeRing._._.-_
d_'45'__852 :: T_AlmostCommutativeRing_176 -> AgdaAny -> AgdaAny
d_'45'__852 v0 = coe d_'45'__206 (coe v0)
-- Algebra.Solver.Ring.AlmostCommutativeRing._._.-‿*-distribˡ
d_'45''8255''42''45'distrib'737'_854 ::
  T_AlmostCommutativeRing_176 -> AgdaAny -> AgdaAny -> AgdaAny
d_'45''8255''42''45'distrib'737'_854 v0
  = coe
      d_'45''8255''42''45'distrib'737'_70
      (coe d_isAlmostCommutativeRing_212 (coe v0))
-- Algebra.Solver.Ring.AlmostCommutativeRing._._.-‿+-comm
d_'45''8255''43''45'comm_856 ::
  T_AlmostCommutativeRing_176 -> AgdaAny -> AgdaAny -> AgdaAny
d_'45''8255''43''45'comm_856 v0
  = coe
      d_'45''8255''43''45'comm_76
      (coe d_isAlmostCommutativeRing_212 (coe v0))
-- Algebra.Solver.Ring.AlmostCommutativeRing._._.-‿cong
d_'45''8255'cong_858 ::
  T_AlmostCommutativeRing_176 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'45''8255'cong_858 v0
  = coe
      d_'45''8255'cong_64 (coe d_isAlmostCommutativeRing_212 (coe v0))
-- Algebra.Solver.Ring.AlmostCommutativeRing._._.0#
d_0'35'_860 :: T_AlmostCommutativeRing_176 -> AgdaAny
d_0'35'_860 v0 = coe d_0'35'_208 (coe v0)
-- Algebra.Solver.Ring.AlmostCommutativeRing._._.1#
d_1'35'_862 :: T_AlmostCommutativeRing_176 -> AgdaAny
d_1'35'_862 v0 = coe d_1'35'_210 (coe v0)
-- Algebra.Solver.Ring.AlmostCommutativeRing._._.Carrier
d_Carrier_864 :: T_AlmostCommutativeRing_176 -> ()
d_Carrier_864 = erased
-- Algebra.Solver.Ring.AlmostCommutativeRing._._.commutativeSemiring
d_commutativeSemiring_866 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  T_AlmostCommutativeRing_176 ->
  MAlonzo.Code.Algebra.Bundles.T_CommutativeSemiring_2094
d_commutativeSemiring_866 ~v0 ~v1 v2
  = du_commutativeSemiring_866 v2
du_commutativeSemiring_866 ::
  T_AlmostCommutativeRing_176 ->
  MAlonzo.Code.Algebra.Bundles.T_CommutativeSemiring_2094
du_commutativeSemiring_866 v0
  = coe du_commutativeSemiring_316 (coe v0)
-- Algebra.Solver.Ring.AlmostCommutativeRing._._.distrib
d_distrib_868 ::
  T_AlmostCommutativeRing_176 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_distrib_868 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_distrib_1162
      (coe
         MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1252
         (coe
            MAlonzo.Code.Algebra.Structures.d_isSemiring_1358
            (coe
               d_isCommutativeSemiring_62
               (coe d_isAlmostCommutativeRing_212 (coe v0)))))
-- Algebra.Solver.Ring.AlmostCommutativeRing._._.distribʳ
d_distrib'691'_870 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  T_AlmostCommutativeRing_176 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_distrib'691'_870 ~v0 ~v1 v2 = du_distrib'691'_870 v2
du_distrib'691'_870 ::
  T_AlmostCommutativeRing_176 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_distrib'691'_870 v0
  = let v1 = d_isAlmostCommutativeRing_212 (coe v0) in
    let v2 = d_isCommutativeSemiring_62 (coe v1) in
    let v3
          = MAlonzo.Code.Algebra.Structures.d_isSemiring_1358 (coe v2) in
    coe
      MAlonzo.Code.Algebra.Structures.du_distrib'691'_1166
      (coe
         MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1252
         (coe v3))
-- Algebra.Solver.Ring.AlmostCommutativeRing._._.distribˡ
d_distrib'737'_872 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  T_AlmostCommutativeRing_176 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_distrib'737'_872 ~v0 ~v1 v2 = du_distrib'737'_872 v2
du_distrib'737'_872 ::
  T_AlmostCommutativeRing_176 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_distrib'737'_872 v0
  = let v1 = d_isAlmostCommutativeRing_212 (coe v0) in
    let v2 = d_isCommutativeSemiring_62 (coe v1) in
    let v3
          = MAlonzo.Code.Algebra.Structures.d_isSemiring_1358 (coe v2) in
    coe
      MAlonzo.Code.Algebra.Structures.du_distrib'737'_1164
      (coe
         MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1252
         (coe v3))
-- Algebra.Solver.Ring.AlmostCommutativeRing._._.isAlmostCommutativeRing
d_isAlmostCommutativeRing_874 ::
  T_AlmostCommutativeRing_176 -> T_IsAlmostCommutativeRing_26
d_isAlmostCommutativeRing_874 v0
  = coe d_isAlmostCommutativeRing_212 (coe v0)
-- Algebra.Solver.Ring.AlmostCommutativeRing._._.isCommutativeSemiring
d_isCommutativeSemiring_876 ::
  T_AlmostCommutativeRing_176 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemiring_1344
d_isCommutativeSemiring_876 v0
  = coe
      d_isCommutativeSemiring_62
      (coe d_isAlmostCommutativeRing_212 (coe v0))
-- Algebra.Solver.Ring.AlmostCommutativeRing._._.isCommutativeSemiringWithoutOne
d_isCommutativeSemiringWithoutOne_878 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  T_AlmostCommutativeRing_176 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemiringWithoutOne_1044
d_isCommutativeSemiringWithoutOne_878 ~v0 ~v1 v2
  = du_isCommutativeSemiringWithoutOne_878 v2
du_isCommutativeSemiringWithoutOne_878 ::
  T_AlmostCommutativeRing_176 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemiringWithoutOne_1044
du_isCommutativeSemiringWithoutOne_878 v0
  = let v1 = d_isAlmostCommutativeRing_212 (coe v0) in
    coe
      MAlonzo.Code.Algebra.Structures.du_isCommutativeSemiringWithoutOne_1444
      (coe d_isCommutativeSemiring_62 (coe v1))
-- Algebra.Solver.Ring.AlmostCommutativeRing._._.isEquivalence
d_isEquivalence_880 ::
  T_AlmostCommutativeRing_176 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsEquivalence_26
d_isEquivalence_880 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isEquivalence_94
      (coe
         MAlonzo.Code.Algebra.Structures.d_isMagma_202
         (coe
            MAlonzo.Code.Algebra.Structures.d_isSemigroup_368
            (coe
               MAlonzo.Code.Algebra.Structures.d_isMonoid_416
               (coe
                  MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_1158
                  (coe
                     MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1252
                     (coe
                        MAlonzo.Code.Algebra.Structures.d_isSemiring_1358
                        (coe
                           d_isCommutativeSemiring_62
                           (coe d_isAlmostCommutativeRing_212 (coe v0)))))))))
-- Algebra.Solver.Ring.AlmostCommutativeRing._._.isNearSemiring
d_isNearSemiring_882 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  T_AlmostCommutativeRing_176 ->
  MAlonzo.Code.Algebra.Structures.T_IsNearSemiring_876
d_isNearSemiring_882 ~v0 ~v1 v2 = du_isNearSemiring_882 v2
du_isNearSemiring_882 ::
  T_AlmostCommutativeRing_176 ->
  MAlonzo.Code.Algebra.Structures.T_IsNearSemiring_876
du_isNearSemiring_882 v0
  = let v1 = d_isAlmostCommutativeRing_212 (coe v0) in
    let v2 = d_isCommutativeSemiring_62 (coe v1) in
    let v3
          = MAlonzo.Code.Algebra.Structures.d_isSemiring_1358 (coe v2) in
    coe
      MAlonzo.Code.Algebra.Structures.du_isNearSemiring_990
      (coe
         MAlonzo.Code.Algebra.Structures.du_isSemiringWithoutOne_1326
         (coe v3))
-- Algebra.Solver.Ring.AlmostCommutativeRing._._.isPartialEquivalence
d_isPartialEquivalence_884 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  T_AlmostCommutativeRing_176 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialEquivalence_16
d_isPartialEquivalence_884 ~v0 ~v1 v2
  = du_isPartialEquivalence_884 v2
du_isPartialEquivalence_884 ::
  T_AlmostCommutativeRing_176 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialEquivalence_16
du_isPartialEquivalence_884 v0
  = let v1 = d_isAlmostCommutativeRing_212 (coe v0) in
    let v2 = d_isCommutativeSemiring_62 (coe v1) in
    let v3
          = MAlonzo.Code.Algebra.Structures.d_isSemiring_1358 (coe v2) in
    let v4
          = MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1252
              (coe v3) in
    let v5
          = MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_1158
              (coe v4) in
    let v6 = MAlonzo.Code.Algebra.Structures.d_isMonoid_416 (coe v5) in
    let v7
          = MAlonzo.Code.Algebra.Structures.d_isSemigroup_368 (coe v6) in
    let v8 = MAlonzo.Code.Algebra.Structures.d_isMagma_202 (coe v7) in
    coe
      MAlonzo.Code.Relation.Binary.Structures.du_isPartialEquivalence_42
      (coe MAlonzo.Code.Algebra.Structures.d_isEquivalence_94 (coe v8))
-- Algebra.Solver.Ring.AlmostCommutativeRing._._.isSemiring
d_isSemiring_886 ::
  T_AlmostCommutativeRing_176 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemiring_1238
d_isSemiring_886 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isSemiring_1358
      (coe
         d_isCommutativeSemiring_62
         (coe d_isAlmostCommutativeRing_212 (coe v0)))
-- Algebra.Solver.Ring.AlmostCommutativeRing._._.isSemiringWithoutAnnihilatingZero
d_isSemiringWithoutAnnihilatingZero_888 ::
  T_AlmostCommutativeRing_176 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemiringWithoutAnnihilatingZero_1142
d_isSemiringWithoutAnnihilatingZero_888 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1252
      (coe
         MAlonzo.Code.Algebra.Structures.d_isSemiring_1358
         (coe
            d_isCommutativeSemiring_62
            (coe d_isAlmostCommutativeRing_212 (coe v0))))
-- Algebra.Solver.Ring.AlmostCommutativeRing._._.isSemiringWithoutOne
d_isSemiringWithoutOne_890 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  T_AlmostCommutativeRing_176 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemiringWithoutOne_952
d_isSemiringWithoutOne_890 ~v0 ~v1 v2
  = du_isSemiringWithoutOne_890 v2
du_isSemiringWithoutOne_890 ::
  T_AlmostCommutativeRing_176 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemiringWithoutOne_952
du_isSemiringWithoutOne_890 v0
  = let v1 = d_isAlmostCommutativeRing_212 (coe v0) in
    let v2 = d_isCommutativeSemiring_62 (coe v1) in
    coe
      MAlonzo.Code.Algebra.Structures.du_isSemiringWithoutOne_1326
      (coe MAlonzo.Code.Algebra.Structures.d_isSemiring_1358 (coe v2))
-- Algebra.Solver.Ring.AlmostCommutativeRing._._.rawRing
d_rawRing_892 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  T_AlmostCommutativeRing_176 ->
  MAlonzo.Code.Algebra.Bundles.T_RawRing_2460
d_rawRing_892 ~v0 ~v1 v2 = du_rawRing_892 v2
du_rawRing_892 ::
  T_AlmostCommutativeRing_176 ->
  MAlonzo.Code.Algebra.Bundles.T_RawRing_2460
du_rawRing_892 v0 = coe du_rawRing_340 (coe v0)
-- Algebra.Solver.Ring.AlmostCommutativeRing._._.refl
d_refl_894 :: T_AlmostCommutativeRing_176 -> AgdaAny -> AgdaAny
d_refl_894 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d_refl_34
      (coe
         MAlonzo.Code.Algebra.Structures.d_isEquivalence_94
         (coe
            MAlonzo.Code.Algebra.Structures.d_isMagma_202
            (coe
               MAlonzo.Code.Algebra.Structures.d_isSemigroup_368
               (coe
                  MAlonzo.Code.Algebra.Structures.d_isMonoid_416
                  (coe
                     MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_1158
                     (coe
                        MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1252
                        (coe
                           MAlonzo.Code.Algebra.Structures.d_isSemiring_1358
                           (coe
                              d_isCommutativeSemiring_62
                              (coe d_isAlmostCommutativeRing_212 (coe v0))))))))))
-- Algebra.Solver.Ring.AlmostCommutativeRing._._.reflexive
d_reflexive_896 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  T_AlmostCommutativeRing_176 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 -> AgdaAny
d_reflexive_896 ~v0 ~v1 v2 = du_reflexive_896 v2
du_reflexive_896 ::
  T_AlmostCommutativeRing_176 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 -> AgdaAny
du_reflexive_896 v0
  = let v1 = d_isAlmostCommutativeRing_212 (coe v0) in
    let v2 = d_isCommutativeSemiring_62 (coe v1) in
    let v3
          = MAlonzo.Code.Algebra.Structures.d_isSemiring_1358 (coe v2) in
    let v4
          = MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1252
              (coe v3) in
    let v5
          = MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_1158
              (coe v4) in
    let v6 = MAlonzo.Code.Algebra.Structures.d_isMonoid_416 (coe v5) in
    let v7
          = MAlonzo.Code.Algebra.Structures.d_isSemigroup_368 (coe v6) in
    let v8 = MAlonzo.Code.Algebra.Structures.d_isMagma_202 (coe v7) in
    \ v9 v10 v11 ->
      coe
        MAlonzo.Code.Relation.Binary.Structures.du_reflexive_40
        (coe MAlonzo.Code.Algebra.Structures.d_isEquivalence_94 (coe v8))
        v9
-- Algebra.Solver.Ring.AlmostCommutativeRing._._.semiring
d_semiring_898 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  T_AlmostCommutativeRing_176 ->
  MAlonzo.Code.Algebra.Bundles.T_Semiring_1932
d_semiring_898 ~v0 ~v1 v2 = du_semiring_898 v2
du_semiring_898 ::
  T_AlmostCommutativeRing_176 ->
  MAlonzo.Code.Algebra.Bundles.T_Semiring_1932
du_semiring_898 v0
  = coe
      MAlonzo.Code.Algebra.Bundles.du_semiring_2222
      (coe du_commutativeSemiring_316 (coe v0))
-- Algebra.Solver.Ring.AlmostCommutativeRing._._.setoid
d_setoid_900 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  T_AlmostCommutativeRing_176 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44
d_setoid_900 ~v0 ~v1 v2 = du_setoid_900 v2
du_setoid_900 ::
  T_AlmostCommutativeRing_176 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44
du_setoid_900 v0
  = let v1 = d_isAlmostCommutativeRing_212 (coe v0) in
    let v2 = d_isCommutativeSemiring_62 (coe v1) in
    let v3
          = MAlonzo.Code.Algebra.Structures.d_isSemiring_1358 (coe v2) in
    let v4
          = MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1252
              (coe v3) in
    let v5
          = MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_1158
              (coe v4) in
    let v6 = MAlonzo.Code.Algebra.Structures.d_isMonoid_416 (coe v5) in
    let v7
          = MAlonzo.Code.Algebra.Structures.d_isSemigroup_368 (coe v6) in
    coe
      MAlonzo.Code.Algebra.Structures.du_setoid_110
      (coe MAlonzo.Code.Algebra.Structures.d_isMagma_202 (coe v7))
-- Algebra.Solver.Ring.AlmostCommutativeRing._._.sym
d_sym_902 ::
  T_AlmostCommutativeRing_176 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_sym_902 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d_sym_36
      (coe
         MAlonzo.Code.Algebra.Structures.d_isEquivalence_94
         (coe
            MAlonzo.Code.Algebra.Structures.d_isMagma_202
            (coe
               MAlonzo.Code.Algebra.Structures.d_isSemigroup_368
               (coe
                  MAlonzo.Code.Algebra.Structures.d_isMonoid_416
                  (coe
                     MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_1158
                     (coe
                        MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1252
                        (coe
                           MAlonzo.Code.Algebra.Structures.d_isSemiring_1358
                           (coe
                              d_isCommutativeSemiring_62
                              (coe d_isAlmostCommutativeRing_212 (coe v0))))))))))
-- Algebra.Solver.Ring.AlmostCommutativeRing._._.trans
d_trans_904 ::
  T_AlmostCommutativeRing_176 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_trans_904 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d_trans_38
      (coe
         MAlonzo.Code.Algebra.Structures.d_isEquivalence_94
         (coe
            MAlonzo.Code.Algebra.Structures.d_isMagma_202
            (coe
               MAlonzo.Code.Algebra.Structures.d_isSemigroup_368
               (coe
                  MAlonzo.Code.Algebra.Structures.d_isMonoid_416
                  (coe
                     MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_1158
                     (coe
                        MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1252
                        (coe
                           MAlonzo.Code.Algebra.Structures.d_isSemiring_1358
                           (coe
                              d_isCommutativeSemiring_62
                              (coe d_isAlmostCommutativeRing_212 (coe v0))))))))))
-- Algebra.Solver.Ring.AlmostCommutativeRing._._.zero
d_zero_906 ::
  T_AlmostCommutativeRing_176 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_zero_906 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_zero_1254
      (coe
         MAlonzo.Code.Algebra.Structures.d_isSemiring_1358
         (coe
            d_isCommutativeSemiring_62
            (coe d_isAlmostCommutativeRing_212 (coe v0))))
-- Algebra.Solver.Ring.AlmostCommutativeRing._._.zeroʳ
d_zero'691'_908 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  T_AlmostCommutativeRing_176 -> AgdaAny -> AgdaAny
d_zero'691'_908 ~v0 ~v1 v2 = du_zero'691'_908 v2
du_zero'691'_908 ::
  T_AlmostCommutativeRing_176 -> AgdaAny -> AgdaAny
du_zero'691'_908 v0
  = let v1 = d_isAlmostCommutativeRing_212 (coe v0) in
    let v2 = d_isCommutativeSemiring_62 (coe v1) in
    let v3
          = MAlonzo.Code.Algebra.Structures.d_isSemiring_1358 (coe v2) in
    coe
      MAlonzo.Code.Algebra.Structures.du_zero'691'_988
      (coe
         MAlonzo.Code.Algebra.Structures.du_isSemiringWithoutOne_1326
         (coe v3))
-- Algebra.Solver.Ring.AlmostCommutativeRing._._.zeroˡ
d_zero'737'_910 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  T_AlmostCommutativeRing_176 -> AgdaAny -> AgdaAny
d_zero'737'_910 ~v0 ~v1 v2 = du_zero'737'_910 v2
du_zero'737'_910 ::
  T_AlmostCommutativeRing_176 -> AgdaAny -> AgdaAny
du_zero'737'_910 v0
  = let v1 = d_isAlmostCommutativeRing_212 (coe v0) in
    let v2 = d_isCommutativeSemiring_62 (coe v1) in
    let v3
          = MAlonzo.Code.Algebra.Structures.d_isSemiring_1358 (coe v2) in
    coe
      MAlonzo.Code.Algebra.Structures.du_zero'737'_986
      (coe
         MAlonzo.Code.Algebra.Structures.du_isSemiringWithoutOne_1326
         (coe v3))
-- Algebra.Solver.Ring.AlmostCommutativeRing.Induced-equivalence
d_Induced'45'equivalence_934 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Algebra.Bundles.T_RawRing_2460 ->
  T_AlmostCommutativeRing_176 ->
  T__'45'Raw'45'AlmostCommutative'10230'__354 ->
  AgdaAny -> AgdaAny -> ()
d_Induced'45'equivalence_934 = erased
-- Algebra.Solver.Ring.AlmostCommutativeRing._._._*_
d__'42'__950 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Algebra.Bundles.T_RawRing_2460 ->
  T_AlmostCommutativeRing_176 ->
  T__'45'Raw'45'AlmostCommutative'10230'__354 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d__'42'__950 ~v0 ~v1 ~v2 ~v3 ~v4 v5 ~v6 ~v7 ~v8 = du__'42'__950 v5
du__'42'__950 ::
  T_AlmostCommutativeRing_176 -> AgdaAny -> AgdaAny -> AgdaAny
du__'42'__950 v0 = coe d__'42'__204 (coe v0)
-- Algebra.Solver.Ring.AlmostCommutativeRing._._._+_
d__'43'__952 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Algebra.Bundles.T_RawRing_2460 ->
  T_AlmostCommutativeRing_176 ->
  T__'45'Raw'45'AlmostCommutative'10230'__354 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d__'43'__952 ~v0 ~v1 ~v2 ~v3 ~v4 v5 ~v6 ~v7 ~v8 = du__'43'__952 v5
du__'43'__952 ::
  T_AlmostCommutativeRing_176 -> AgdaAny -> AgdaAny -> AgdaAny
du__'43'__952 v0 = coe d__'43'__202 (coe v0)
-- Algebra.Solver.Ring.AlmostCommutativeRing._._._≈_
d__'8776'__954 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Algebra.Bundles.T_RawRing_2460 ->
  T_AlmostCommutativeRing_176 ->
  T__'45'Raw'45'AlmostCommutative'10230'__354 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> ()
d__'8776'__954 = erased
-- Algebra.Solver.Ring.AlmostCommutativeRing._._.assoc
d_assoc_956 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Algebra.Bundles.T_RawRing_2460 ->
  T_AlmostCommutativeRing_176 ->
  T__'45'Raw'45'AlmostCommutative'10230'__354 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_assoc_956 ~v0 ~v1 ~v2 ~v3 ~v4 v5 ~v6 ~v7 ~v8 = du_assoc_956 v5
du_assoc_956 ::
  T_AlmostCommutativeRing_176 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_assoc_956 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_assoc_204
      (coe
         MAlonzo.Code.Algebra.Structures.d_isSemigroup_368
         (coe
            MAlonzo.Code.Algebra.Structures.d_'42''45'isMonoid_1160
            (coe
               MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1252
               (coe
                  MAlonzo.Code.Algebra.Structures.d_isSemiring_1358
                  (coe
                     d_isCommutativeSemiring_62
                     (coe d_isAlmostCommutativeRing_212 (coe v0)))))))
-- Algebra.Solver.Ring.AlmostCommutativeRing._._.*-comm
d_'42''45'comm_958 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Algebra.Bundles.T_RawRing_2460 ->
  T_AlmostCommutativeRing_176 ->
  T__'45'Raw'45'AlmostCommutative'10230'__354 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'42''45'comm_958 ~v0 ~v1 ~v2 ~v3 ~v4 v5 ~v6 ~v7 ~v8
  = du_'42''45'comm_958 v5
du_'42''45'comm_958 ::
  T_AlmostCommutativeRing_176 -> AgdaAny -> AgdaAny -> AgdaAny
du_'42''45'comm_958 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_'42''45'comm_1360
      (coe
         d_isCommutativeSemiring_62
         (coe d_isAlmostCommutativeRing_212 (coe v0)))
-- Algebra.Solver.Ring.AlmostCommutativeRing._._.*-commutativeMonoid
d_'42''45'commutativeMonoid_960 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Algebra.Bundles.T_RawRing_2460 ->
  T_AlmostCommutativeRing_176 ->
  T__'45'Raw'45'AlmostCommutative'10230'__354 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Algebra.Bundles.T_CommutativeMonoid_582
d_'42''45'commutativeMonoid_960 ~v0 ~v1 ~v2 ~v3 ~v4 v5 ~v6 ~v7 ~v8
  = du_'42''45'commutativeMonoid_960 v5
du_'42''45'commutativeMonoid_960 ::
  T_AlmostCommutativeRing_176 ->
  MAlonzo.Code.Algebra.Bundles.T_CommutativeMonoid_582
du_'42''45'commutativeMonoid_960 v0
  = coe
      MAlonzo.Code.Algebra.Bundles.du_'42''45'commutativeMonoid_2262
      (coe du_commutativeSemiring_316 (coe v0))
-- Algebra.Solver.Ring.AlmostCommutativeRing._._.commutativeSemigroup
d_commutativeSemigroup_962 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Algebra.Bundles.T_RawRing_2460 ->
  T_AlmostCommutativeRing_176 ->
  T__'45'Raw'45'AlmostCommutative'10230'__354 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Algebra.Bundles.T_CommutativeSemigroup_332
d_commutativeSemigroup_962 ~v0 ~v1 ~v2 ~v3 ~v4 v5 ~v6 ~v7 ~v8
  = du_commutativeSemigroup_962 v5
du_commutativeSemigroup_962 ::
  T_AlmostCommutativeRing_176 ->
  MAlonzo.Code.Algebra.Bundles.T_CommutativeSemigroup_332
du_commutativeSemigroup_962 v0
  = let v1 = coe du_commutativeSemiring_316 (coe v0) in
    coe
      MAlonzo.Code.Algebra.Bundles.du_commutativeSemigroup_664
      (coe
         MAlonzo.Code.Algebra.Bundles.du_'42''45'commutativeMonoid_2262
         (coe v1))
-- Algebra.Solver.Ring.AlmostCommutativeRing._._.∙-cong
d_'8729''45'cong_964 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Algebra.Bundles.T_RawRing_2460 ->
  T_AlmostCommutativeRing_176 ->
  T__'45'Raw'45'AlmostCommutative'10230'__354 ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8729''45'cong_964 ~v0 ~v1 ~v2 ~v3 ~v4 v5 ~v6 ~v7 ~v8
  = du_'8729''45'cong_964 v5
du_'8729''45'cong_964 ::
  T_AlmostCommutativeRing_176 ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_'8729''45'cong_964 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_'8729''45'cong_96
      (coe
         MAlonzo.Code.Algebra.Structures.d_isMagma_202
         (coe
            MAlonzo.Code.Algebra.Structures.d_isSemigroup_368
            (coe
               MAlonzo.Code.Algebra.Structures.d_'42''45'isMonoid_1160
               (coe
                  MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1252
                  (coe
                     MAlonzo.Code.Algebra.Structures.d_isSemiring_1358
                     (coe
                        d_isCommutativeSemiring_62
                        (coe d_isAlmostCommutativeRing_212 (coe v0))))))))
-- Algebra.Solver.Ring.AlmostCommutativeRing._._.∙-congʳ
d_'8729''45'cong'691'_966 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Algebra.Bundles.T_RawRing_2460 ->
  T_AlmostCommutativeRing_176 ->
  T__'45'Raw'45'AlmostCommutative'10230'__354 ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8729''45'cong'691'_966 ~v0 ~v1 ~v2 ~v3 ~v4 v5 ~v6 ~v7 ~v8
  = du_'8729''45'cong'691'_966 v5
du_'8729''45'cong'691'_966 ::
  T_AlmostCommutativeRing_176 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_'8729''45'cong'691'_966 v0
  = let v1 = d_isAlmostCommutativeRing_212 (coe v0) in
    let v2 = d_isCommutativeSemiring_62 (coe v1) in
    let v3
          = MAlonzo.Code.Algebra.Structures.d_isSemiring_1358 (coe v2) in
    let v4
          = MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1252
              (coe v3) in
    let v5
          = MAlonzo.Code.Algebra.Structures.d_'42''45'isMonoid_1160
              (coe v4) in
    let v6
          = MAlonzo.Code.Algebra.Structures.d_isSemigroup_368 (coe v5) in
    coe
      MAlonzo.Code.Algebra.Structures.du_'8729''45'cong'691'_116
      (coe MAlonzo.Code.Algebra.Structures.d_isMagma_202 (coe v6))
-- Algebra.Solver.Ring.AlmostCommutativeRing._._.∙-congˡ
d_'8729''45'cong'737'_968 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Algebra.Bundles.T_RawRing_2460 ->
  T_AlmostCommutativeRing_176 ->
  T__'45'Raw'45'AlmostCommutative'10230'__354 ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8729''45'cong'737'_968 ~v0 ~v1 ~v2 ~v3 ~v4 v5 ~v6 ~v7 ~v8
  = du_'8729''45'cong'737'_968 v5
du_'8729''45'cong'737'_968 ::
  T_AlmostCommutativeRing_176 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_'8729''45'cong'737'_968 v0
  = let v1 = d_isAlmostCommutativeRing_212 (coe v0) in
    let v2 = d_isCommutativeSemiring_62 (coe v1) in
    let v3
          = MAlonzo.Code.Algebra.Structures.d_isSemiring_1358 (coe v2) in
    let v4
          = MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1252
              (coe v3) in
    let v5
          = MAlonzo.Code.Algebra.Structures.d_'42''45'isMonoid_1160
              (coe v4) in
    let v6
          = MAlonzo.Code.Algebra.Structures.d_isSemigroup_368 (coe v5) in
    coe
      MAlonzo.Code.Algebra.Structures.du_'8729''45'cong'737'_112
      (coe MAlonzo.Code.Algebra.Structures.d_isMagma_202 (coe v6))
-- Algebra.Solver.Ring.AlmostCommutativeRing._._.identity
d_identity_970 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Algebra.Bundles.T_RawRing_2460 ->
  T_AlmostCommutativeRing_176 ->
  T__'45'Raw'45'AlmostCommutative'10230'__354 ->
  AgdaAny -> AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_identity_970 ~v0 ~v1 ~v2 ~v3 ~v4 v5 ~v6 ~v7 ~v8
  = du_identity_970 v5
du_identity_970 ::
  T_AlmostCommutativeRing_176 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_identity_970 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_identity_370
      (coe
         MAlonzo.Code.Algebra.Structures.d_'42''45'isMonoid_1160
         (coe
            MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1252
            (coe
               MAlonzo.Code.Algebra.Structures.d_isSemiring_1358
               (coe
                  d_isCommutativeSemiring_62
                  (coe d_isAlmostCommutativeRing_212 (coe v0))))))
-- Algebra.Solver.Ring.AlmostCommutativeRing._._.identityʳ
d_identity'691'_972 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Algebra.Bundles.T_RawRing_2460 ->
  T_AlmostCommutativeRing_176 ->
  T__'45'Raw'45'AlmostCommutative'10230'__354 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_identity'691'_972 ~v0 ~v1 ~v2 ~v3 ~v4 v5 ~v6 ~v7 ~v8
  = du_identity'691'_972 v5
du_identity'691'_972 ::
  T_AlmostCommutativeRing_176 -> AgdaAny -> AgdaAny
du_identity'691'_972 v0
  = let v1 = d_isAlmostCommutativeRing_212 (coe v0) in
    let v2 = d_isCommutativeSemiring_62 (coe v1) in
    let v3
          = MAlonzo.Code.Algebra.Structures.d_isSemiring_1358 (coe v2) in
    let v4
          = MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1252
              (coe v3) in
    coe
      MAlonzo.Code.Algebra.Structures.du_identity'691'_400
      (coe
         MAlonzo.Code.Algebra.Structures.d_'42''45'isMonoid_1160 (coe v4))
-- Algebra.Solver.Ring.AlmostCommutativeRing._._.identityˡ
d_identity'737'_974 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Algebra.Bundles.T_RawRing_2460 ->
  T_AlmostCommutativeRing_176 ->
  T__'45'Raw'45'AlmostCommutative'10230'__354 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_identity'737'_974 ~v0 ~v1 ~v2 ~v3 ~v4 v5 ~v6 ~v7 ~v8
  = du_identity'737'_974 v5
du_identity'737'_974 ::
  T_AlmostCommutativeRing_176 -> AgdaAny -> AgdaAny
du_identity'737'_974 v0
  = let v1 = d_isAlmostCommutativeRing_212 (coe v0) in
    let v2 = d_isCommutativeSemiring_62 (coe v1) in
    let v3
          = MAlonzo.Code.Algebra.Structures.d_isSemiring_1358 (coe v2) in
    let v4
          = MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1252
              (coe v3) in
    coe
      MAlonzo.Code.Algebra.Structures.du_identity'737'_398
      (coe
         MAlonzo.Code.Algebra.Structures.d_'42''45'isMonoid_1160 (coe v4))
-- Algebra.Solver.Ring.AlmostCommutativeRing._._.isCommutativeMagma
d_isCommutativeMagma_976 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Algebra.Bundles.T_RawRing_2460 ->
  T_AlmostCommutativeRing_176 ->
  T__'45'Raw'45'AlmostCommutative'10230'__354 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Algebra.Structures.T_IsCommutativeMagma_122
d_isCommutativeMagma_976 ~v0 ~v1 ~v2 ~v3 ~v4 v5 ~v6 ~v7 ~v8
  = du_isCommutativeMagma_976 v5
du_isCommutativeMagma_976 ::
  T_AlmostCommutativeRing_176 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMagma_122
du_isCommutativeMagma_976 v0
  = let v1 = d_isAlmostCommutativeRing_212 (coe v0) in
    let v2 = d_isCommutativeSemiring_62 (coe v1) in
    let v3
          = coe
              MAlonzo.Code.Algebra.Structures.du_isCommutativeSemiringWithoutOne_1444
              (coe v2) in
    coe
      MAlonzo.Code.Algebra.Structures.du_isCommutativeMagma_308
      (coe
         MAlonzo.Code.Algebra.Structures.du_'42''45'isCommutativeSemigroup_1128
         (coe v3))
-- Algebra.Solver.Ring.AlmostCommutativeRing._._.*-isCommutativeMonoid
d_'42''45'isCommutativeMonoid_978 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Algebra.Bundles.T_RawRing_2460 ->
  T_AlmostCommutativeRing_176 ->
  T__'45'Raw'45'AlmostCommutative'10230'__354 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMonoid_406
d_'42''45'isCommutativeMonoid_978 ~v0 ~v1 ~v2 ~v3 ~v4 v5 ~v6 ~v7
                                  ~v8
  = du_'42''45'isCommutativeMonoid_978 v5
du_'42''45'isCommutativeMonoid_978 ::
  T_AlmostCommutativeRing_176 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMonoid_406
du_'42''45'isCommutativeMonoid_978 v0
  = let v1 = d_isAlmostCommutativeRing_212 (coe v0) in
    coe
      MAlonzo.Code.Algebra.Structures.du_'42''45'isCommutativeMonoid_1452
      (coe d_isCommutativeSemiring_62 (coe v1))
-- Algebra.Solver.Ring.AlmostCommutativeRing._._.*-isCommutativeSemigroup
d_'42''45'isCommutativeSemigroup_980 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Algebra.Bundles.T_RawRing_2460 ->
  T_AlmostCommutativeRing_176 ->
  T__'45'Raw'45'AlmostCommutative'10230'__354 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemigroup_270
d_'42''45'isCommutativeSemigroup_980 ~v0 ~v1 ~v2 ~v3 ~v4 v5 ~v6 ~v7
                                     ~v8
  = du_'42''45'isCommutativeSemigroup_980 v5
du_'42''45'isCommutativeSemigroup_980 ::
  T_AlmostCommutativeRing_176 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemigroup_270
du_'42''45'isCommutativeSemigroup_980 v0
  = let v1 = d_isAlmostCommutativeRing_212 (coe v0) in
    let v2 = d_isCommutativeSemiring_62 (coe v1) in
    coe
      MAlonzo.Code.Algebra.Structures.du_'42''45'isCommutativeSemigroup_1128
      (coe
         MAlonzo.Code.Algebra.Structures.du_isCommutativeSemiringWithoutOne_1444
         (coe v2))
-- Algebra.Solver.Ring.AlmostCommutativeRing._._.isMagma
d_isMagma_982 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Algebra.Bundles.T_RawRing_2460 ->
  T_AlmostCommutativeRing_176 ->
  T__'45'Raw'45'AlmostCommutative'10230'__354 ->
  AgdaAny -> AgdaAny -> MAlonzo.Code.Algebra.Structures.T_IsMagma_86
d_isMagma_982 ~v0 ~v1 ~v2 ~v3 ~v4 v5 ~v6 ~v7 ~v8
  = du_isMagma_982 v5
du_isMagma_982 ::
  T_AlmostCommutativeRing_176 ->
  MAlonzo.Code.Algebra.Structures.T_IsMagma_86
du_isMagma_982 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isMagma_202
      (coe
         MAlonzo.Code.Algebra.Structures.d_isSemigroup_368
         (coe
            MAlonzo.Code.Algebra.Structures.d_'42''45'isMonoid_1160
            (coe
               MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1252
               (coe
                  MAlonzo.Code.Algebra.Structures.d_isSemiring_1358
                  (coe
                     d_isCommutativeSemiring_62
                     (coe d_isAlmostCommutativeRing_212 (coe v0)))))))
-- Algebra.Solver.Ring.AlmostCommutativeRing._._.*-isMonoid
d_'42''45'isMonoid_984 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Algebra.Bundles.T_RawRing_2460 ->
  T_AlmostCommutativeRing_176 ->
  T__'45'Raw'45'AlmostCommutative'10230'__354 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Algebra.Structures.T_IsMonoid_358
d_'42''45'isMonoid_984 ~v0 ~v1 ~v2 ~v3 ~v4 v5 ~v6 ~v7 ~v8
  = du_'42''45'isMonoid_984 v5
du_'42''45'isMonoid_984 ::
  T_AlmostCommutativeRing_176 ->
  MAlonzo.Code.Algebra.Structures.T_IsMonoid_358
du_'42''45'isMonoid_984 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_'42''45'isMonoid_1160
      (coe
         MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1252
         (coe
            MAlonzo.Code.Algebra.Structures.d_isSemiring_1358
            (coe
               d_isCommutativeSemiring_62
               (coe d_isAlmostCommutativeRing_212 (coe v0)))))
-- Algebra.Solver.Ring.AlmostCommutativeRing._._.isSemigroup
d_isSemigroup_986 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Algebra.Bundles.T_RawRing_2460 ->
  T_AlmostCommutativeRing_176 ->
  T__'45'Raw'45'AlmostCommutative'10230'__354 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Algebra.Structures.T_IsSemigroup_194
d_isSemigroup_986 ~v0 ~v1 ~v2 ~v3 ~v4 v5 ~v6 ~v7 ~v8
  = du_isSemigroup_986 v5
du_isSemigroup_986 ::
  T_AlmostCommutativeRing_176 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemigroup_194
du_isSemigroup_986 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isSemigroup_368
      (coe
         MAlonzo.Code.Algebra.Structures.d_'42''45'isMonoid_1160
         (coe
            MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1252
            (coe
               MAlonzo.Code.Algebra.Structures.d_isSemiring_1358
               (coe
                  d_isCommutativeSemiring_62
                  (coe d_isAlmostCommutativeRing_212 (coe v0))))))
-- Algebra.Solver.Ring.AlmostCommutativeRing._._.magma
d_magma_988 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Algebra.Bundles.T_RawRing_2460 ->
  T_AlmostCommutativeRing_176 ->
  T__'45'Raw'45'AlmostCommutative'10230'__354 ->
  AgdaAny -> AgdaAny -> MAlonzo.Code.Algebra.Bundles.T_Magma_36
d_magma_988 ~v0 ~v1 ~v2 ~v3 ~v4 v5 ~v6 ~v7 ~v8 = du_magma_988 v5
du_magma_988 ::
  T_AlmostCommutativeRing_176 ->
  MAlonzo.Code.Algebra.Bundles.T_Magma_36
du_magma_988 v0
  = let v1 = coe du_commutativeSemiring_316 (coe v0) in
    let v2
          = coe MAlonzo.Code.Algebra.Bundles.du_semiring_2222 (coe v1) in
    let v3
          = coe
              MAlonzo.Code.Algebra.Bundles.du_semiringWithoutAnnihilatingZero_2048
              (coe v2) in
    let v4
          = coe
              MAlonzo.Code.Algebra.Bundles.du_'42''45'monoid_1916 (coe v3) in
    coe
      MAlonzo.Code.Algebra.Bundles.du_magma_254
      (coe MAlonzo.Code.Algebra.Bundles.du_semigroup_566 (coe v4))
-- Algebra.Solver.Ring.AlmostCommutativeRing._._.*-monoid
d_'42''45'monoid_990 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Algebra.Bundles.T_RawRing_2460 ->
  T_AlmostCommutativeRing_176 ->
  T__'45'Raw'45'AlmostCommutative'10230'__354 ->
  AgdaAny -> AgdaAny -> MAlonzo.Code.Algebra.Bundles.T_Monoid_506
d_'42''45'monoid_990 ~v0 ~v1 ~v2 ~v3 ~v4 v5 ~v6 ~v7 ~v8
  = du_'42''45'monoid_990 v5
du_'42''45'monoid_990 ::
  T_AlmostCommutativeRing_176 ->
  MAlonzo.Code.Algebra.Bundles.T_Monoid_506
du_'42''45'monoid_990 v0
  = let v1 = coe du_commutativeSemiring_316 (coe v0) in
    let v2
          = coe MAlonzo.Code.Algebra.Bundles.du_semiring_2222 (coe v1) in
    coe
      MAlonzo.Code.Algebra.Bundles.du_'42''45'monoid_1916
      (coe
         MAlonzo.Code.Algebra.Bundles.du_semiringWithoutAnnihilatingZero_2048
         (coe v2))
-- Algebra.Solver.Ring.AlmostCommutativeRing._._.semigroup
d_semigroup_992 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Algebra.Bundles.T_RawRing_2460 ->
  T_AlmostCommutativeRing_176 ->
  T__'45'Raw'45'AlmostCommutative'10230'__354 ->
  AgdaAny -> AgdaAny -> MAlonzo.Code.Algebra.Bundles.T_Semigroup_206
d_semigroup_992 ~v0 ~v1 ~v2 ~v3 ~v4 v5 ~v6 ~v7 ~v8
  = du_semigroup_992 v5
du_semigroup_992 ::
  T_AlmostCommutativeRing_176 ->
  MAlonzo.Code.Algebra.Bundles.T_Semigroup_206
du_semigroup_992 v0
  = let v1 = coe du_commutativeSemiring_316 (coe v0) in
    let v2
          = coe MAlonzo.Code.Algebra.Bundles.du_semiring_2222 (coe v1) in
    let v3
          = coe
              MAlonzo.Code.Algebra.Bundles.du_semiringWithoutAnnihilatingZero_2048
              (coe v2) in
    coe
      MAlonzo.Code.Algebra.Bundles.du_semigroup_566
      (coe MAlonzo.Code.Algebra.Bundles.du_'42''45'monoid_1916 (coe v3))
-- Algebra.Solver.Ring.AlmostCommutativeRing._._.assoc
d_assoc_994 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Algebra.Bundles.T_RawRing_2460 ->
  T_AlmostCommutativeRing_176 ->
  T__'45'Raw'45'AlmostCommutative'10230'__354 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_assoc_994 ~v0 ~v1 ~v2 ~v3 ~v4 v5 ~v6 ~v7 ~v8 = du_assoc_994 v5
du_assoc_994 ::
  T_AlmostCommutativeRing_176 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_assoc_994 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_assoc_204
      (coe
         MAlonzo.Code.Algebra.Structures.d_isSemigroup_368
         (coe
            MAlonzo.Code.Algebra.Structures.d_isMonoid_416
            (coe
               MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_1158
               (coe
                  MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1252
                  (coe
                     MAlonzo.Code.Algebra.Structures.d_isSemiring_1358
                     (coe
                        d_isCommutativeSemiring_62
                        (coe d_isAlmostCommutativeRing_212 (coe v0))))))))
-- Algebra.Solver.Ring.AlmostCommutativeRing._._.comm
d_comm_996 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Algebra.Bundles.T_RawRing_2460 ->
  T_AlmostCommutativeRing_176 ->
  T__'45'Raw'45'AlmostCommutative'10230'__354 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_comm_996 ~v0 ~v1 ~v2 ~v3 ~v4 v5 ~v6 ~v7 ~v8 = du_comm_996 v5
du_comm_996 ::
  T_AlmostCommutativeRing_176 -> AgdaAny -> AgdaAny -> AgdaAny
du_comm_996 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_comm_418
      (coe
         MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_1158
         (coe
            MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1252
            (coe
               MAlonzo.Code.Algebra.Structures.d_isSemiring_1358
               (coe
                  d_isCommutativeSemiring_62
                  (coe d_isAlmostCommutativeRing_212 (coe v0))))))
-- Algebra.Solver.Ring.AlmostCommutativeRing._._.+-commutativeMonoid
d_'43''45'commutativeMonoid_998 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Algebra.Bundles.T_RawRing_2460 ->
  T_AlmostCommutativeRing_176 ->
  T__'45'Raw'45'AlmostCommutative'10230'__354 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Algebra.Bundles.T_CommutativeMonoid_582
d_'43''45'commutativeMonoid_998 ~v0 ~v1 ~v2 ~v3 ~v4 v5 ~v6 ~v7 ~v8
  = du_'43''45'commutativeMonoid_998 v5
du_'43''45'commutativeMonoid_998 ::
  T_AlmostCommutativeRing_176 ->
  MAlonzo.Code.Algebra.Bundles.T_CommutativeMonoid_582
du_'43''45'commutativeMonoid_998 v0
  = let v1 = coe du_commutativeSemiring_316 (coe v0) in
    let v2
          = coe MAlonzo.Code.Algebra.Bundles.du_semiring_2222 (coe v1) in
    coe
      MAlonzo.Code.Algebra.Bundles.du_'43''45'commutativeMonoid_1896
      (coe
         MAlonzo.Code.Algebra.Bundles.du_semiringWithoutAnnihilatingZero_2048
         (coe v2))
-- Algebra.Solver.Ring.AlmostCommutativeRing._._.∙-cong
d_'8729''45'cong_1000 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Algebra.Bundles.T_RawRing_2460 ->
  T_AlmostCommutativeRing_176 ->
  T__'45'Raw'45'AlmostCommutative'10230'__354 ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8729''45'cong_1000 ~v0 ~v1 ~v2 ~v3 ~v4 v5 ~v6 ~v7 ~v8
  = du_'8729''45'cong_1000 v5
du_'8729''45'cong_1000 ::
  T_AlmostCommutativeRing_176 ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_'8729''45'cong_1000 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_'8729''45'cong_96
      (coe
         MAlonzo.Code.Algebra.Structures.d_isMagma_202
         (coe
            MAlonzo.Code.Algebra.Structures.d_isSemigroup_368
            (coe
               MAlonzo.Code.Algebra.Structures.d_isMonoid_416
               (coe
                  MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_1158
                  (coe
                     MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1252
                     (coe
                        MAlonzo.Code.Algebra.Structures.d_isSemiring_1358
                        (coe
                           d_isCommutativeSemiring_62
                           (coe d_isAlmostCommutativeRing_212 (coe v0)))))))))
-- Algebra.Solver.Ring.AlmostCommutativeRing._._.∙-congʳ
d_'8729''45'cong'691'_1002 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Algebra.Bundles.T_RawRing_2460 ->
  T_AlmostCommutativeRing_176 ->
  T__'45'Raw'45'AlmostCommutative'10230'__354 ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8729''45'cong'691'_1002 ~v0 ~v1 ~v2 ~v3 ~v4 v5 ~v6 ~v7 ~v8
  = du_'8729''45'cong'691'_1002 v5
du_'8729''45'cong'691'_1002 ::
  T_AlmostCommutativeRing_176 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_'8729''45'cong'691'_1002 v0
  = let v1 = d_isAlmostCommutativeRing_212 (coe v0) in
    let v2 = d_isCommutativeSemiring_62 (coe v1) in
    let v3
          = MAlonzo.Code.Algebra.Structures.d_isSemiring_1358 (coe v2) in
    let v4
          = MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1252
              (coe v3) in
    let v5
          = MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_1158
              (coe v4) in
    let v6 = MAlonzo.Code.Algebra.Structures.d_isMonoid_416 (coe v5) in
    let v7
          = MAlonzo.Code.Algebra.Structures.d_isSemigroup_368 (coe v6) in
    coe
      MAlonzo.Code.Algebra.Structures.du_'8729''45'cong'691'_116
      (coe MAlonzo.Code.Algebra.Structures.d_isMagma_202 (coe v7))
-- Algebra.Solver.Ring.AlmostCommutativeRing._._.∙-congˡ
d_'8729''45'cong'737'_1004 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Algebra.Bundles.T_RawRing_2460 ->
  T_AlmostCommutativeRing_176 ->
  T__'45'Raw'45'AlmostCommutative'10230'__354 ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8729''45'cong'737'_1004 ~v0 ~v1 ~v2 ~v3 ~v4 v5 ~v6 ~v7 ~v8
  = du_'8729''45'cong'737'_1004 v5
du_'8729''45'cong'737'_1004 ::
  T_AlmostCommutativeRing_176 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_'8729''45'cong'737'_1004 v0
  = let v1 = d_isAlmostCommutativeRing_212 (coe v0) in
    let v2 = d_isCommutativeSemiring_62 (coe v1) in
    let v3
          = MAlonzo.Code.Algebra.Structures.d_isSemiring_1358 (coe v2) in
    let v4
          = MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1252
              (coe v3) in
    let v5
          = MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_1158
              (coe v4) in
    let v6 = MAlonzo.Code.Algebra.Structures.d_isMonoid_416 (coe v5) in
    let v7
          = MAlonzo.Code.Algebra.Structures.d_isSemigroup_368 (coe v6) in
    coe
      MAlonzo.Code.Algebra.Structures.du_'8729''45'cong'737'_112
      (coe MAlonzo.Code.Algebra.Structures.d_isMagma_202 (coe v7))
-- Algebra.Solver.Ring.AlmostCommutativeRing._._.identity
d_identity_1006 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Algebra.Bundles.T_RawRing_2460 ->
  T_AlmostCommutativeRing_176 ->
  T__'45'Raw'45'AlmostCommutative'10230'__354 ->
  AgdaAny -> AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_identity_1006 ~v0 ~v1 ~v2 ~v3 ~v4 v5 ~v6 ~v7 ~v8
  = du_identity_1006 v5
du_identity_1006 ::
  T_AlmostCommutativeRing_176 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_identity_1006 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_identity_370
      (coe
         MAlonzo.Code.Algebra.Structures.d_isMonoid_416
         (coe
            MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_1158
            (coe
               MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1252
               (coe
                  MAlonzo.Code.Algebra.Structures.d_isSemiring_1358
                  (coe
                     d_isCommutativeSemiring_62
                     (coe d_isAlmostCommutativeRing_212 (coe v0)))))))
-- Algebra.Solver.Ring.AlmostCommutativeRing._._.identityʳ
d_identity'691'_1008 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Algebra.Bundles.T_RawRing_2460 ->
  T_AlmostCommutativeRing_176 ->
  T__'45'Raw'45'AlmostCommutative'10230'__354 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_identity'691'_1008 ~v0 ~v1 ~v2 ~v3 ~v4 v5 ~v6 ~v7 ~v8
  = du_identity'691'_1008 v5
du_identity'691'_1008 ::
  T_AlmostCommutativeRing_176 -> AgdaAny -> AgdaAny
du_identity'691'_1008 v0
  = let v1 = d_isAlmostCommutativeRing_212 (coe v0) in
    let v2 = d_isCommutativeSemiring_62 (coe v1) in
    let v3
          = MAlonzo.Code.Algebra.Structures.d_isSemiring_1358 (coe v2) in
    let v4
          = MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1252
              (coe v3) in
    let v5
          = MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_1158
              (coe v4) in
    coe
      MAlonzo.Code.Algebra.Structures.du_identity'691'_400
      (coe MAlonzo.Code.Algebra.Structures.d_isMonoid_416 (coe v5))
-- Algebra.Solver.Ring.AlmostCommutativeRing._._.identityˡ
d_identity'737'_1010 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Algebra.Bundles.T_RawRing_2460 ->
  T_AlmostCommutativeRing_176 ->
  T__'45'Raw'45'AlmostCommutative'10230'__354 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_identity'737'_1010 ~v0 ~v1 ~v2 ~v3 ~v4 v5 ~v6 ~v7 ~v8
  = du_identity'737'_1010 v5
du_identity'737'_1010 ::
  T_AlmostCommutativeRing_176 -> AgdaAny -> AgdaAny
du_identity'737'_1010 v0
  = let v1 = d_isAlmostCommutativeRing_212 (coe v0) in
    let v2 = d_isCommutativeSemiring_62 (coe v1) in
    let v3
          = MAlonzo.Code.Algebra.Structures.d_isSemiring_1358 (coe v2) in
    let v4
          = MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1252
              (coe v3) in
    let v5
          = MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_1158
              (coe v4) in
    coe
      MAlonzo.Code.Algebra.Structures.du_identity'737'_398
      (coe MAlonzo.Code.Algebra.Structures.d_isMonoid_416 (coe v5))
-- Algebra.Solver.Ring.AlmostCommutativeRing._._.isCommutativeMagma
d_isCommutativeMagma_1012 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Algebra.Bundles.T_RawRing_2460 ->
  T_AlmostCommutativeRing_176 ->
  T__'45'Raw'45'AlmostCommutative'10230'__354 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Algebra.Structures.T_IsCommutativeMagma_122
d_isCommutativeMagma_1012 ~v0 ~v1 ~v2 ~v3 ~v4 v5 ~v6 ~v7 ~v8
  = du_isCommutativeMagma_1012 v5
du_isCommutativeMagma_1012 ::
  T_AlmostCommutativeRing_176 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMagma_122
du_isCommutativeMagma_1012 v0
  = let v1 = d_isAlmostCommutativeRing_212 (coe v0) in
    let v2 = d_isCommutativeSemiring_62 (coe v1) in
    let v3
          = MAlonzo.Code.Algebra.Structures.d_isSemiring_1358 (coe v2) in
    let v4
          = MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1252
              (coe v3) in
    let v5
          = MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_1158
              (coe v4) in
    coe
      MAlonzo.Code.Algebra.Structures.du_isCommutativeMagma_308
      (coe
         MAlonzo.Code.Algebra.Structures.du_isCommutativeSemigroup_454
         (coe v5))
-- Algebra.Solver.Ring.AlmostCommutativeRing._._.+-isCommutativeMonoid
d_'43''45'isCommutativeMonoid_1014 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Algebra.Bundles.T_RawRing_2460 ->
  T_AlmostCommutativeRing_176 ->
  T__'45'Raw'45'AlmostCommutative'10230'__354 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMonoid_406
d_'43''45'isCommutativeMonoid_1014 ~v0 ~v1 ~v2 ~v3 ~v4 v5 ~v6 ~v7
                                   ~v8
  = du_'43''45'isCommutativeMonoid_1014 v5
du_'43''45'isCommutativeMonoid_1014 ::
  T_AlmostCommutativeRing_176 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMonoid_406
du_'43''45'isCommutativeMonoid_1014 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_1158
      (coe
         MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1252
         (coe
            MAlonzo.Code.Algebra.Structures.d_isSemiring_1358
            (coe
               d_isCommutativeSemiring_62
               (coe d_isAlmostCommutativeRing_212 (coe v0)))))
-- Algebra.Solver.Ring.AlmostCommutativeRing._._.isCommutativeSemigroup
d_isCommutativeSemigroup_1016 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Algebra.Bundles.T_RawRing_2460 ->
  T_AlmostCommutativeRing_176 ->
  T__'45'Raw'45'AlmostCommutative'10230'__354 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemigroup_270
d_isCommutativeSemigroup_1016 ~v0 ~v1 ~v2 ~v3 ~v4 v5 ~v6 ~v7 ~v8
  = du_isCommutativeSemigroup_1016 v5
du_isCommutativeSemigroup_1016 ::
  T_AlmostCommutativeRing_176 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemigroup_270
du_isCommutativeSemigroup_1016 v0
  = let v1 = d_isAlmostCommutativeRing_212 (coe v0) in
    let v2 = d_isCommutativeSemiring_62 (coe v1) in
    let v3
          = MAlonzo.Code.Algebra.Structures.d_isSemiring_1358 (coe v2) in
    let v4
          = MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1252
              (coe v3) in
    coe
      MAlonzo.Code.Algebra.Structures.du_isCommutativeSemigroup_454
      (coe
         MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_1158
         (coe v4))
-- Algebra.Solver.Ring.AlmostCommutativeRing._._.isMagma
d_isMagma_1018 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Algebra.Bundles.T_RawRing_2460 ->
  T_AlmostCommutativeRing_176 ->
  T__'45'Raw'45'AlmostCommutative'10230'__354 ->
  AgdaAny -> AgdaAny -> MAlonzo.Code.Algebra.Structures.T_IsMagma_86
d_isMagma_1018 ~v0 ~v1 ~v2 ~v3 ~v4 v5 ~v6 ~v7 ~v8
  = du_isMagma_1018 v5
du_isMagma_1018 ::
  T_AlmostCommutativeRing_176 ->
  MAlonzo.Code.Algebra.Structures.T_IsMagma_86
du_isMagma_1018 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isMagma_202
      (coe
         MAlonzo.Code.Algebra.Structures.d_isSemigroup_368
         (coe
            MAlonzo.Code.Algebra.Structures.d_isMonoid_416
            (coe
               MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_1158
               (coe
                  MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1252
                  (coe
                     MAlonzo.Code.Algebra.Structures.d_isSemiring_1358
                     (coe
                        d_isCommutativeSemiring_62
                        (coe d_isAlmostCommutativeRing_212 (coe v0))))))))
-- Algebra.Solver.Ring.AlmostCommutativeRing._._.isMonoid
d_isMonoid_1020 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Algebra.Bundles.T_RawRing_2460 ->
  T_AlmostCommutativeRing_176 ->
  T__'45'Raw'45'AlmostCommutative'10230'__354 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Algebra.Structures.T_IsMonoid_358
d_isMonoid_1020 ~v0 ~v1 ~v2 ~v3 ~v4 v5 ~v6 ~v7 ~v8
  = du_isMonoid_1020 v5
du_isMonoid_1020 ::
  T_AlmostCommutativeRing_176 ->
  MAlonzo.Code.Algebra.Structures.T_IsMonoid_358
du_isMonoid_1020 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isMonoid_416
      (coe
         MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_1158
         (coe
            MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1252
            (coe
               MAlonzo.Code.Algebra.Structures.d_isSemiring_1358
               (coe
                  d_isCommutativeSemiring_62
                  (coe d_isAlmostCommutativeRing_212 (coe v0))))))
-- Algebra.Solver.Ring.AlmostCommutativeRing._._.isSemigroup
d_isSemigroup_1022 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Algebra.Bundles.T_RawRing_2460 ->
  T_AlmostCommutativeRing_176 ->
  T__'45'Raw'45'AlmostCommutative'10230'__354 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Algebra.Structures.T_IsSemigroup_194
d_isSemigroup_1022 ~v0 ~v1 ~v2 ~v3 ~v4 v5 ~v6 ~v7 ~v8
  = du_isSemigroup_1022 v5
du_isSemigroup_1022 ::
  T_AlmostCommutativeRing_176 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemigroup_194
du_isSemigroup_1022 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isSemigroup_368
      (coe
         MAlonzo.Code.Algebra.Structures.d_isMonoid_416
         (coe
            MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_1158
            (coe
               MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1252
               (coe
                  MAlonzo.Code.Algebra.Structures.d_isSemiring_1358
                  (coe
                     d_isCommutativeSemiring_62
                     (coe d_isAlmostCommutativeRing_212 (coe v0)))))))
-- Algebra.Solver.Ring.AlmostCommutativeRing._._.magma
d_magma_1024 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Algebra.Bundles.T_RawRing_2460 ->
  T_AlmostCommutativeRing_176 ->
  T__'45'Raw'45'AlmostCommutative'10230'__354 ->
  AgdaAny -> AgdaAny -> MAlonzo.Code.Algebra.Bundles.T_Magma_36
d_magma_1024 ~v0 ~v1 ~v2 ~v3 ~v4 v5 ~v6 ~v7 ~v8 = du_magma_1024 v5
du_magma_1024 ::
  T_AlmostCommutativeRing_176 ->
  MAlonzo.Code.Algebra.Bundles.T_Magma_36
du_magma_1024 v0
  = let v1 = coe du_commutativeSemiring_316 (coe v0) in
    let v2
          = coe MAlonzo.Code.Algebra.Bundles.du_semiring_2222 (coe v1) in
    let v3
          = coe
              MAlonzo.Code.Algebra.Bundles.du_semiringWithoutAnnihilatingZero_2048
              (coe v2) in
    let v4
          = coe
              MAlonzo.Code.Algebra.Bundles.du_'43''45'commutativeMonoid_1896
              (coe v3) in
    let v5 = coe MAlonzo.Code.Algebra.Bundles.du_monoid_650 (coe v4) in
    coe
      MAlonzo.Code.Algebra.Bundles.du_magma_254
      (coe MAlonzo.Code.Algebra.Bundles.du_semigroup_566 (coe v5))
-- Algebra.Solver.Ring.AlmostCommutativeRing._._.monoid
d_monoid_1026 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Algebra.Bundles.T_RawRing_2460 ->
  T_AlmostCommutativeRing_176 ->
  T__'45'Raw'45'AlmostCommutative'10230'__354 ->
  AgdaAny -> AgdaAny -> MAlonzo.Code.Algebra.Bundles.T_Monoid_506
d_monoid_1026 ~v0 ~v1 ~v2 ~v3 ~v4 v5 ~v6 ~v7 ~v8
  = du_monoid_1026 v5
du_monoid_1026 ::
  T_AlmostCommutativeRing_176 ->
  MAlonzo.Code.Algebra.Bundles.T_Monoid_506
du_monoid_1026 v0
  = let v1 = coe du_commutativeSemiring_316 (coe v0) in
    let v2
          = coe MAlonzo.Code.Algebra.Bundles.du_semiring_2222 (coe v1) in
    let v3
          = coe
              MAlonzo.Code.Algebra.Bundles.du_semiringWithoutAnnihilatingZero_2048
              (coe v2) in
    coe
      MAlonzo.Code.Algebra.Bundles.du_monoid_650
      (coe
         MAlonzo.Code.Algebra.Bundles.du_'43''45'commutativeMonoid_1896
         (coe v3))
-- Algebra.Solver.Ring.AlmostCommutativeRing._._.semigroup
d_semigroup_1028 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Algebra.Bundles.T_RawRing_2460 ->
  T_AlmostCommutativeRing_176 ->
  T__'45'Raw'45'AlmostCommutative'10230'__354 ->
  AgdaAny -> AgdaAny -> MAlonzo.Code.Algebra.Bundles.T_Semigroup_206
d_semigroup_1028 ~v0 ~v1 ~v2 ~v3 ~v4 v5 ~v6 ~v7 ~v8
  = du_semigroup_1028 v5
du_semigroup_1028 ::
  T_AlmostCommutativeRing_176 ->
  MAlonzo.Code.Algebra.Bundles.T_Semigroup_206
du_semigroup_1028 v0
  = let v1 = coe du_commutativeSemiring_316 (coe v0) in
    let v2
          = coe MAlonzo.Code.Algebra.Bundles.du_semiring_2222 (coe v1) in
    let v3
          = coe
              MAlonzo.Code.Algebra.Bundles.du_semiringWithoutAnnihilatingZero_2048
              (coe v2) in
    let v4
          = coe
              MAlonzo.Code.Algebra.Bundles.du_'43''45'commutativeMonoid_1896
              (coe v3) in
    coe
      MAlonzo.Code.Algebra.Bundles.du_semigroup_566
      (coe MAlonzo.Code.Algebra.Bundles.du_monoid_650 (coe v4))
-- Algebra.Solver.Ring.AlmostCommutativeRing._._.-_
d_'45'__1030 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Algebra.Bundles.T_RawRing_2460 ->
  T_AlmostCommutativeRing_176 ->
  T__'45'Raw'45'AlmostCommutative'10230'__354 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'45'__1030 ~v0 ~v1 ~v2 ~v3 ~v4 v5 ~v6 ~v7 ~v8 = du_'45'__1030 v5
du_'45'__1030 :: T_AlmostCommutativeRing_176 -> AgdaAny -> AgdaAny
du_'45'__1030 v0 = coe d_'45'__206 (coe v0)
-- Algebra.Solver.Ring.AlmostCommutativeRing._._.-‿*-distribˡ
d_'45''8255''42''45'distrib'737'_1032 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Algebra.Bundles.T_RawRing_2460 ->
  T_AlmostCommutativeRing_176 ->
  T__'45'Raw'45'AlmostCommutative'10230'__354 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'45''8255''42''45'distrib'737'_1032 ~v0 ~v1 ~v2 ~v3 ~v4 v5 ~v6
                                      ~v7 ~v8
  = du_'45''8255''42''45'distrib'737'_1032 v5
du_'45''8255''42''45'distrib'737'_1032 ::
  T_AlmostCommutativeRing_176 -> AgdaAny -> AgdaAny -> AgdaAny
du_'45''8255''42''45'distrib'737'_1032 v0
  = coe
      d_'45''8255''42''45'distrib'737'_70
      (coe d_isAlmostCommutativeRing_212 (coe v0))
-- Algebra.Solver.Ring.AlmostCommutativeRing._._.-‿+-comm
d_'45''8255''43''45'comm_1034 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Algebra.Bundles.T_RawRing_2460 ->
  T_AlmostCommutativeRing_176 ->
  T__'45'Raw'45'AlmostCommutative'10230'__354 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'45''8255''43''45'comm_1034 ~v0 ~v1 ~v2 ~v3 ~v4 v5 ~v6 ~v7 ~v8
  = du_'45''8255''43''45'comm_1034 v5
du_'45''8255''43''45'comm_1034 ::
  T_AlmostCommutativeRing_176 -> AgdaAny -> AgdaAny -> AgdaAny
du_'45''8255''43''45'comm_1034 v0
  = coe
      d_'45''8255''43''45'comm_76
      (coe d_isAlmostCommutativeRing_212 (coe v0))
-- Algebra.Solver.Ring.AlmostCommutativeRing._._.-‿cong
d_'45''8255'cong_1036 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Algebra.Bundles.T_RawRing_2460 ->
  T_AlmostCommutativeRing_176 ->
  T__'45'Raw'45'AlmostCommutative'10230'__354 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'45''8255'cong_1036 ~v0 ~v1 ~v2 ~v3 ~v4 v5 ~v6 ~v7 ~v8
  = du_'45''8255'cong_1036 v5
du_'45''8255'cong_1036 ::
  T_AlmostCommutativeRing_176 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_'45''8255'cong_1036 v0
  = coe
      d_'45''8255'cong_64 (coe d_isAlmostCommutativeRing_212 (coe v0))
-- Algebra.Solver.Ring.AlmostCommutativeRing._._.0#
d_0'35'_1038 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Algebra.Bundles.T_RawRing_2460 ->
  T_AlmostCommutativeRing_176 ->
  T__'45'Raw'45'AlmostCommutative'10230'__354 ->
  AgdaAny -> AgdaAny -> AgdaAny
d_0'35'_1038 ~v0 ~v1 ~v2 ~v3 ~v4 v5 ~v6 ~v7 ~v8 = du_0'35'_1038 v5
du_0'35'_1038 :: T_AlmostCommutativeRing_176 -> AgdaAny
du_0'35'_1038 v0 = coe d_0'35'_208 (coe v0)
-- Algebra.Solver.Ring.AlmostCommutativeRing._._.1#
d_1'35'_1040 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Algebra.Bundles.T_RawRing_2460 ->
  T_AlmostCommutativeRing_176 ->
  T__'45'Raw'45'AlmostCommutative'10230'__354 ->
  AgdaAny -> AgdaAny -> AgdaAny
d_1'35'_1040 ~v0 ~v1 ~v2 ~v3 ~v4 v5 ~v6 ~v7 ~v8 = du_1'35'_1040 v5
du_1'35'_1040 :: T_AlmostCommutativeRing_176 -> AgdaAny
du_1'35'_1040 v0 = coe d_1'35'_210 (coe v0)
-- Algebra.Solver.Ring.AlmostCommutativeRing._._.Carrier
d_Carrier_1042 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Algebra.Bundles.T_RawRing_2460 ->
  T_AlmostCommutativeRing_176 ->
  T__'45'Raw'45'AlmostCommutative'10230'__354 ->
  AgdaAny -> AgdaAny -> ()
d_Carrier_1042 = erased
-- Algebra.Solver.Ring.AlmostCommutativeRing._._.commutativeSemiring
d_commutativeSemiring_1044 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Algebra.Bundles.T_RawRing_2460 ->
  T_AlmostCommutativeRing_176 ->
  T__'45'Raw'45'AlmostCommutative'10230'__354 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Algebra.Bundles.T_CommutativeSemiring_2094
d_commutativeSemiring_1044 ~v0 ~v1 ~v2 ~v3 ~v4 v5 ~v6 ~v7 ~v8
  = du_commutativeSemiring_1044 v5
du_commutativeSemiring_1044 ::
  T_AlmostCommutativeRing_176 ->
  MAlonzo.Code.Algebra.Bundles.T_CommutativeSemiring_2094
du_commutativeSemiring_1044 v0
  = coe du_commutativeSemiring_316 (coe v0)
-- Algebra.Solver.Ring.AlmostCommutativeRing._._.distrib
d_distrib_1046 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Algebra.Bundles.T_RawRing_2460 ->
  T_AlmostCommutativeRing_176 ->
  T__'45'Raw'45'AlmostCommutative'10230'__354 ->
  AgdaAny -> AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_distrib_1046 ~v0 ~v1 ~v2 ~v3 ~v4 v5 ~v6 ~v7 ~v8
  = du_distrib_1046 v5
du_distrib_1046 ::
  T_AlmostCommutativeRing_176 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_distrib_1046 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_distrib_1162
      (coe
         MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1252
         (coe
            MAlonzo.Code.Algebra.Structures.d_isSemiring_1358
            (coe
               d_isCommutativeSemiring_62
               (coe d_isAlmostCommutativeRing_212 (coe v0)))))
-- Algebra.Solver.Ring.AlmostCommutativeRing._._.distribʳ
d_distrib'691'_1048 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Algebra.Bundles.T_RawRing_2460 ->
  T_AlmostCommutativeRing_176 ->
  T__'45'Raw'45'AlmostCommutative'10230'__354 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_distrib'691'_1048 ~v0 ~v1 ~v2 ~v3 ~v4 v5 ~v6 ~v7 ~v8
  = du_distrib'691'_1048 v5
du_distrib'691'_1048 ::
  T_AlmostCommutativeRing_176 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_distrib'691'_1048 v0
  = let v1 = d_isAlmostCommutativeRing_212 (coe v0) in
    let v2 = d_isCommutativeSemiring_62 (coe v1) in
    let v3
          = MAlonzo.Code.Algebra.Structures.d_isSemiring_1358 (coe v2) in
    coe
      MAlonzo.Code.Algebra.Structures.du_distrib'691'_1166
      (coe
         MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1252
         (coe v3))
-- Algebra.Solver.Ring.AlmostCommutativeRing._._.distribˡ
d_distrib'737'_1050 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Algebra.Bundles.T_RawRing_2460 ->
  T_AlmostCommutativeRing_176 ->
  T__'45'Raw'45'AlmostCommutative'10230'__354 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_distrib'737'_1050 ~v0 ~v1 ~v2 ~v3 ~v4 v5 ~v6 ~v7 ~v8
  = du_distrib'737'_1050 v5
du_distrib'737'_1050 ::
  T_AlmostCommutativeRing_176 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_distrib'737'_1050 v0
  = let v1 = d_isAlmostCommutativeRing_212 (coe v0) in
    let v2 = d_isCommutativeSemiring_62 (coe v1) in
    let v3
          = MAlonzo.Code.Algebra.Structures.d_isSemiring_1358 (coe v2) in
    coe
      MAlonzo.Code.Algebra.Structures.du_distrib'737'_1164
      (coe
         MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1252
         (coe v3))
-- Algebra.Solver.Ring.AlmostCommutativeRing._._.isAlmostCommutativeRing
d_isAlmostCommutativeRing_1052 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Algebra.Bundles.T_RawRing_2460 ->
  T_AlmostCommutativeRing_176 ->
  T__'45'Raw'45'AlmostCommutative'10230'__354 ->
  AgdaAny -> AgdaAny -> T_IsAlmostCommutativeRing_26
d_isAlmostCommutativeRing_1052 ~v0 ~v1 ~v2 ~v3 ~v4 v5 ~v6 ~v7 ~v8
  = du_isAlmostCommutativeRing_1052 v5
du_isAlmostCommutativeRing_1052 ::
  T_AlmostCommutativeRing_176 -> T_IsAlmostCommutativeRing_26
du_isAlmostCommutativeRing_1052 v0
  = coe d_isAlmostCommutativeRing_212 (coe v0)
-- Algebra.Solver.Ring.AlmostCommutativeRing._._.isCommutativeSemiring
d_isCommutativeSemiring_1054 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Algebra.Bundles.T_RawRing_2460 ->
  T_AlmostCommutativeRing_176 ->
  T__'45'Raw'45'AlmostCommutative'10230'__354 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemiring_1344
d_isCommutativeSemiring_1054 ~v0 ~v1 ~v2 ~v3 ~v4 v5 ~v6 ~v7 ~v8
  = du_isCommutativeSemiring_1054 v5
du_isCommutativeSemiring_1054 ::
  T_AlmostCommutativeRing_176 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemiring_1344
du_isCommutativeSemiring_1054 v0
  = coe
      d_isCommutativeSemiring_62
      (coe d_isAlmostCommutativeRing_212 (coe v0))
-- Algebra.Solver.Ring.AlmostCommutativeRing._._.isCommutativeSemiringWithoutOne
d_isCommutativeSemiringWithoutOne_1056 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Algebra.Bundles.T_RawRing_2460 ->
  T_AlmostCommutativeRing_176 ->
  T__'45'Raw'45'AlmostCommutative'10230'__354 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemiringWithoutOne_1044
d_isCommutativeSemiringWithoutOne_1056 ~v0 ~v1 ~v2 ~v3 ~v4 v5 ~v6
                                       ~v7 ~v8
  = du_isCommutativeSemiringWithoutOne_1056 v5
du_isCommutativeSemiringWithoutOne_1056 ::
  T_AlmostCommutativeRing_176 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemiringWithoutOne_1044
du_isCommutativeSemiringWithoutOne_1056 v0
  = let v1 = d_isAlmostCommutativeRing_212 (coe v0) in
    coe
      MAlonzo.Code.Algebra.Structures.du_isCommutativeSemiringWithoutOne_1444
      (coe d_isCommutativeSemiring_62 (coe v1))
-- Algebra.Solver.Ring.AlmostCommutativeRing._._.isEquivalence
d_isEquivalence_1058 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Algebra.Bundles.T_RawRing_2460 ->
  T_AlmostCommutativeRing_176 ->
  T__'45'Raw'45'AlmostCommutative'10230'__354 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsEquivalence_26
d_isEquivalence_1058 ~v0 ~v1 ~v2 ~v3 ~v4 v5 ~v6 ~v7 ~v8
  = du_isEquivalence_1058 v5
du_isEquivalence_1058 ::
  T_AlmostCommutativeRing_176 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsEquivalence_26
du_isEquivalence_1058 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isEquivalence_94
      (coe
         MAlonzo.Code.Algebra.Structures.d_isMagma_202
         (coe
            MAlonzo.Code.Algebra.Structures.d_isSemigroup_368
            (coe
               MAlonzo.Code.Algebra.Structures.d_isMonoid_416
               (coe
                  MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_1158
                  (coe
                     MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1252
                     (coe
                        MAlonzo.Code.Algebra.Structures.d_isSemiring_1358
                        (coe
                           d_isCommutativeSemiring_62
                           (coe d_isAlmostCommutativeRing_212 (coe v0)))))))))
-- Algebra.Solver.Ring.AlmostCommutativeRing._._.isNearSemiring
d_isNearSemiring_1060 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Algebra.Bundles.T_RawRing_2460 ->
  T_AlmostCommutativeRing_176 ->
  T__'45'Raw'45'AlmostCommutative'10230'__354 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Algebra.Structures.T_IsNearSemiring_876
d_isNearSemiring_1060 ~v0 ~v1 ~v2 ~v3 ~v4 v5 ~v6 ~v7 ~v8
  = du_isNearSemiring_1060 v5
du_isNearSemiring_1060 ::
  T_AlmostCommutativeRing_176 ->
  MAlonzo.Code.Algebra.Structures.T_IsNearSemiring_876
du_isNearSemiring_1060 v0
  = let v1 = d_isAlmostCommutativeRing_212 (coe v0) in
    let v2 = d_isCommutativeSemiring_62 (coe v1) in
    let v3
          = MAlonzo.Code.Algebra.Structures.d_isSemiring_1358 (coe v2) in
    coe
      MAlonzo.Code.Algebra.Structures.du_isNearSemiring_990
      (coe
         MAlonzo.Code.Algebra.Structures.du_isSemiringWithoutOne_1326
         (coe v3))
-- Algebra.Solver.Ring.AlmostCommutativeRing._._.isPartialEquivalence
d_isPartialEquivalence_1062 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Algebra.Bundles.T_RawRing_2460 ->
  T_AlmostCommutativeRing_176 ->
  T__'45'Raw'45'AlmostCommutative'10230'__354 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialEquivalence_16
d_isPartialEquivalence_1062 ~v0 ~v1 ~v2 ~v3 ~v4 v5 ~v6 ~v7 ~v8
  = du_isPartialEquivalence_1062 v5
du_isPartialEquivalence_1062 ::
  T_AlmostCommutativeRing_176 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialEquivalence_16
du_isPartialEquivalence_1062 v0
  = let v1 = d_isAlmostCommutativeRing_212 (coe v0) in
    let v2 = d_isCommutativeSemiring_62 (coe v1) in
    let v3
          = MAlonzo.Code.Algebra.Structures.d_isSemiring_1358 (coe v2) in
    let v4
          = MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1252
              (coe v3) in
    let v5
          = MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_1158
              (coe v4) in
    let v6 = MAlonzo.Code.Algebra.Structures.d_isMonoid_416 (coe v5) in
    let v7
          = MAlonzo.Code.Algebra.Structures.d_isSemigroup_368 (coe v6) in
    let v8 = MAlonzo.Code.Algebra.Structures.d_isMagma_202 (coe v7) in
    coe
      MAlonzo.Code.Relation.Binary.Structures.du_isPartialEquivalence_42
      (coe MAlonzo.Code.Algebra.Structures.d_isEquivalence_94 (coe v8))
-- Algebra.Solver.Ring.AlmostCommutativeRing._._.isSemiring
d_isSemiring_1064 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Algebra.Bundles.T_RawRing_2460 ->
  T_AlmostCommutativeRing_176 ->
  T__'45'Raw'45'AlmostCommutative'10230'__354 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Algebra.Structures.T_IsSemiring_1238
d_isSemiring_1064 ~v0 ~v1 ~v2 ~v3 ~v4 v5 ~v6 ~v7 ~v8
  = du_isSemiring_1064 v5
du_isSemiring_1064 ::
  T_AlmostCommutativeRing_176 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemiring_1238
du_isSemiring_1064 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isSemiring_1358
      (coe
         d_isCommutativeSemiring_62
         (coe d_isAlmostCommutativeRing_212 (coe v0)))
-- Algebra.Solver.Ring.AlmostCommutativeRing._._.isSemiringWithoutAnnihilatingZero
d_isSemiringWithoutAnnihilatingZero_1066 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Algebra.Bundles.T_RawRing_2460 ->
  T_AlmostCommutativeRing_176 ->
  T__'45'Raw'45'AlmostCommutative'10230'__354 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Algebra.Structures.T_IsSemiringWithoutAnnihilatingZero_1142
d_isSemiringWithoutAnnihilatingZero_1066 ~v0 ~v1 ~v2 ~v3 ~v4 v5 ~v6
                                         ~v7 ~v8
  = du_isSemiringWithoutAnnihilatingZero_1066 v5
du_isSemiringWithoutAnnihilatingZero_1066 ::
  T_AlmostCommutativeRing_176 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemiringWithoutAnnihilatingZero_1142
du_isSemiringWithoutAnnihilatingZero_1066 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1252
      (coe
         MAlonzo.Code.Algebra.Structures.d_isSemiring_1358
         (coe
            d_isCommutativeSemiring_62
            (coe d_isAlmostCommutativeRing_212 (coe v0))))
-- Algebra.Solver.Ring.AlmostCommutativeRing._._.isSemiringWithoutOne
d_isSemiringWithoutOne_1068 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Algebra.Bundles.T_RawRing_2460 ->
  T_AlmostCommutativeRing_176 ->
  T__'45'Raw'45'AlmostCommutative'10230'__354 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Algebra.Structures.T_IsSemiringWithoutOne_952
d_isSemiringWithoutOne_1068 ~v0 ~v1 ~v2 ~v3 ~v4 v5 ~v6 ~v7 ~v8
  = du_isSemiringWithoutOne_1068 v5
du_isSemiringWithoutOne_1068 ::
  T_AlmostCommutativeRing_176 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemiringWithoutOne_952
du_isSemiringWithoutOne_1068 v0
  = let v1 = d_isAlmostCommutativeRing_212 (coe v0) in
    let v2 = d_isCommutativeSemiring_62 (coe v1) in
    coe
      MAlonzo.Code.Algebra.Structures.du_isSemiringWithoutOne_1326
      (coe MAlonzo.Code.Algebra.Structures.d_isSemiring_1358 (coe v2))
-- Algebra.Solver.Ring.AlmostCommutativeRing._._.rawRing
d_rawRing_1070 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Algebra.Bundles.T_RawRing_2460 ->
  T_AlmostCommutativeRing_176 ->
  T__'45'Raw'45'AlmostCommutative'10230'__354 ->
  AgdaAny -> AgdaAny -> MAlonzo.Code.Algebra.Bundles.T_RawRing_2460
d_rawRing_1070 ~v0 ~v1 ~v2 ~v3 ~v4 v5 ~v6 ~v7 ~v8
  = du_rawRing_1070 v5
du_rawRing_1070 ::
  T_AlmostCommutativeRing_176 ->
  MAlonzo.Code.Algebra.Bundles.T_RawRing_2460
du_rawRing_1070 v0 = coe du_rawRing_340 (coe v0)
-- Algebra.Solver.Ring.AlmostCommutativeRing._._.refl
d_refl_1072 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Algebra.Bundles.T_RawRing_2460 ->
  T_AlmostCommutativeRing_176 ->
  T__'45'Raw'45'AlmostCommutative'10230'__354 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_refl_1072 ~v0 ~v1 ~v2 ~v3 ~v4 v5 ~v6 ~v7 ~v8 = du_refl_1072 v5
du_refl_1072 :: T_AlmostCommutativeRing_176 -> AgdaAny -> AgdaAny
du_refl_1072 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d_refl_34
      (coe
         MAlonzo.Code.Algebra.Structures.d_isEquivalence_94
         (coe
            MAlonzo.Code.Algebra.Structures.d_isMagma_202
            (coe
               MAlonzo.Code.Algebra.Structures.d_isSemigroup_368
               (coe
                  MAlonzo.Code.Algebra.Structures.d_isMonoid_416
                  (coe
                     MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_1158
                     (coe
                        MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1252
                        (coe
                           MAlonzo.Code.Algebra.Structures.d_isSemiring_1358
                           (coe
                              d_isCommutativeSemiring_62
                              (coe d_isAlmostCommutativeRing_212 (coe v0))))))))))
-- Algebra.Solver.Ring.AlmostCommutativeRing._._.reflexive
d_reflexive_1074 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Algebra.Bundles.T_RawRing_2460 ->
  T_AlmostCommutativeRing_176 ->
  T__'45'Raw'45'AlmostCommutative'10230'__354 ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 -> AgdaAny
d_reflexive_1074 ~v0 ~v1 ~v2 ~v3 ~v4 v5 ~v6 ~v7 ~v8
  = du_reflexive_1074 v5
du_reflexive_1074 ::
  T_AlmostCommutativeRing_176 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 -> AgdaAny
du_reflexive_1074 v0
  = let v1 = d_isAlmostCommutativeRing_212 (coe v0) in
    let v2 = d_isCommutativeSemiring_62 (coe v1) in
    let v3
          = MAlonzo.Code.Algebra.Structures.d_isSemiring_1358 (coe v2) in
    let v4
          = MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1252
              (coe v3) in
    let v5
          = MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_1158
              (coe v4) in
    let v6 = MAlonzo.Code.Algebra.Structures.d_isMonoid_416 (coe v5) in
    let v7
          = MAlonzo.Code.Algebra.Structures.d_isSemigroup_368 (coe v6) in
    let v8 = MAlonzo.Code.Algebra.Structures.d_isMagma_202 (coe v7) in
    \ v9 v10 v11 ->
      coe
        MAlonzo.Code.Relation.Binary.Structures.du_reflexive_40
        (coe MAlonzo.Code.Algebra.Structures.d_isEquivalence_94 (coe v8))
        v9
-- Algebra.Solver.Ring.AlmostCommutativeRing._._.semiring
d_semiring_1076 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Algebra.Bundles.T_RawRing_2460 ->
  T_AlmostCommutativeRing_176 ->
  T__'45'Raw'45'AlmostCommutative'10230'__354 ->
  AgdaAny -> AgdaAny -> MAlonzo.Code.Algebra.Bundles.T_Semiring_1932
d_semiring_1076 ~v0 ~v1 ~v2 ~v3 ~v4 v5 ~v6 ~v7 ~v8
  = du_semiring_1076 v5
du_semiring_1076 ::
  T_AlmostCommutativeRing_176 ->
  MAlonzo.Code.Algebra.Bundles.T_Semiring_1932
du_semiring_1076 v0
  = coe
      MAlonzo.Code.Algebra.Bundles.du_semiring_2222
      (coe du_commutativeSemiring_316 (coe v0))
-- Algebra.Solver.Ring.AlmostCommutativeRing._._.setoid
d_setoid_1078 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Algebra.Bundles.T_RawRing_2460 ->
  T_AlmostCommutativeRing_176 ->
  T__'45'Raw'45'AlmostCommutative'10230'__354 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44
d_setoid_1078 ~v0 ~v1 ~v2 ~v3 ~v4 v5 ~v6 ~v7 ~v8
  = du_setoid_1078 v5
du_setoid_1078 ::
  T_AlmostCommutativeRing_176 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44
du_setoid_1078 v0
  = let v1 = d_isAlmostCommutativeRing_212 (coe v0) in
    let v2 = d_isCommutativeSemiring_62 (coe v1) in
    let v3
          = MAlonzo.Code.Algebra.Structures.d_isSemiring_1358 (coe v2) in
    let v4
          = MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1252
              (coe v3) in
    let v5
          = MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_1158
              (coe v4) in
    let v6 = MAlonzo.Code.Algebra.Structures.d_isMonoid_416 (coe v5) in
    let v7
          = MAlonzo.Code.Algebra.Structures.d_isSemigroup_368 (coe v6) in
    coe
      MAlonzo.Code.Algebra.Structures.du_setoid_110
      (coe MAlonzo.Code.Algebra.Structures.d_isMagma_202 (coe v7))
-- Algebra.Solver.Ring.AlmostCommutativeRing._._.sym
d_sym_1080 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Algebra.Bundles.T_RawRing_2460 ->
  T_AlmostCommutativeRing_176 ->
  T__'45'Raw'45'AlmostCommutative'10230'__354 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_sym_1080 ~v0 ~v1 ~v2 ~v3 ~v4 v5 ~v6 ~v7 ~v8 = du_sym_1080 v5
du_sym_1080 ::
  T_AlmostCommutativeRing_176 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_sym_1080 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d_sym_36
      (coe
         MAlonzo.Code.Algebra.Structures.d_isEquivalence_94
         (coe
            MAlonzo.Code.Algebra.Structures.d_isMagma_202
            (coe
               MAlonzo.Code.Algebra.Structures.d_isSemigroup_368
               (coe
                  MAlonzo.Code.Algebra.Structures.d_isMonoid_416
                  (coe
                     MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_1158
                     (coe
                        MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1252
                        (coe
                           MAlonzo.Code.Algebra.Structures.d_isSemiring_1358
                           (coe
                              d_isCommutativeSemiring_62
                              (coe d_isAlmostCommutativeRing_212 (coe v0))))))))))
-- Algebra.Solver.Ring.AlmostCommutativeRing._._.trans
d_trans_1082 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Algebra.Bundles.T_RawRing_2460 ->
  T_AlmostCommutativeRing_176 ->
  T__'45'Raw'45'AlmostCommutative'10230'__354 ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_trans_1082 ~v0 ~v1 ~v2 ~v3 ~v4 v5 ~v6 ~v7 ~v8 = du_trans_1082 v5
du_trans_1082 ::
  T_AlmostCommutativeRing_176 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_trans_1082 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d_trans_38
      (coe
         MAlonzo.Code.Algebra.Structures.d_isEquivalence_94
         (coe
            MAlonzo.Code.Algebra.Structures.d_isMagma_202
            (coe
               MAlonzo.Code.Algebra.Structures.d_isSemigroup_368
               (coe
                  MAlonzo.Code.Algebra.Structures.d_isMonoid_416
                  (coe
                     MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_1158
                     (coe
                        MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1252
                        (coe
                           MAlonzo.Code.Algebra.Structures.d_isSemiring_1358
                           (coe
                              d_isCommutativeSemiring_62
                              (coe d_isAlmostCommutativeRing_212 (coe v0))))))))))
-- Algebra.Solver.Ring.AlmostCommutativeRing._._.zero
d_zero_1084 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Algebra.Bundles.T_RawRing_2460 ->
  T_AlmostCommutativeRing_176 ->
  T__'45'Raw'45'AlmostCommutative'10230'__354 ->
  AgdaAny -> AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_zero_1084 ~v0 ~v1 ~v2 ~v3 ~v4 v5 ~v6 ~v7 ~v8 = du_zero_1084 v5
du_zero_1084 ::
  T_AlmostCommutativeRing_176 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_zero_1084 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_zero_1254
      (coe
         MAlonzo.Code.Algebra.Structures.d_isSemiring_1358
         (coe
            d_isCommutativeSemiring_62
            (coe d_isAlmostCommutativeRing_212 (coe v0))))
-- Algebra.Solver.Ring.AlmostCommutativeRing._._.zeroʳ
d_zero'691'_1086 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Algebra.Bundles.T_RawRing_2460 ->
  T_AlmostCommutativeRing_176 ->
  T__'45'Raw'45'AlmostCommutative'10230'__354 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_zero'691'_1086 ~v0 ~v1 ~v2 ~v3 ~v4 v5 ~v6 ~v7 ~v8
  = du_zero'691'_1086 v5
du_zero'691'_1086 ::
  T_AlmostCommutativeRing_176 -> AgdaAny -> AgdaAny
du_zero'691'_1086 v0
  = let v1 = d_isAlmostCommutativeRing_212 (coe v0) in
    let v2 = d_isCommutativeSemiring_62 (coe v1) in
    let v3
          = MAlonzo.Code.Algebra.Structures.d_isSemiring_1358 (coe v2) in
    coe
      MAlonzo.Code.Algebra.Structures.du_zero'691'_988
      (coe
         MAlonzo.Code.Algebra.Structures.du_isSemiringWithoutOne_1326
         (coe v3))
-- Algebra.Solver.Ring.AlmostCommutativeRing._._.zeroˡ
d_zero'737'_1088 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Algebra.Bundles.T_RawRing_2460 ->
  T_AlmostCommutativeRing_176 ->
  T__'45'Raw'45'AlmostCommutative'10230'__354 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_zero'737'_1088 ~v0 ~v1 ~v2 ~v3 ~v4 v5 ~v6 ~v7 ~v8
  = du_zero'737'_1088 v5
du_zero'737'_1088 ::
  T_AlmostCommutativeRing_176 -> AgdaAny -> AgdaAny
du_zero'737'_1088 v0
  = let v1 = d_isAlmostCommutativeRing_212 (coe v0) in
    let v2 = d_isCommutativeSemiring_62 (coe v1) in
    let v3
          = MAlonzo.Code.Algebra.Structures.d_isSemiring_1358 (coe v2) in
    coe
      MAlonzo.Code.Algebra.Structures.du_zero'737'_986
      (coe
         MAlonzo.Code.Algebra.Structures.du_isSemiringWithoutOne_1326
         (coe v3))
-- Algebra.Solver.Ring.AlmostCommutativeRing._._.*-homo
d_'42''45'homo_1092 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Algebra.Bundles.T_RawRing_2460 ->
  T_AlmostCommutativeRing_176 ->
  T__'45'Raw'45'AlmostCommutative'10230'__354 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'42''45'homo_1092 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6 ~v7 ~v8
  = du_'42''45'homo_1092 v6
du_'42''45'homo_1092 ::
  T__'45'Raw'45'AlmostCommutative'10230'__354 ->
  AgdaAny -> AgdaAny -> AgdaAny
du_'42''45'homo_1092 v0 = coe d_'42''45'homo_748 (coe v0)
-- Algebra.Solver.Ring.AlmostCommutativeRing._._.+-homo
d_'43''45'homo_1094 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Algebra.Bundles.T_RawRing_2460 ->
  T_AlmostCommutativeRing_176 ->
  T__'45'Raw'45'AlmostCommutative'10230'__354 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'43''45'homo_1094 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6 ~v7 ~v8
  = du_'43''45'homo_1094 v6
du_'43''45'homo_1094 ::
  T__'45'Raw'45'AlmostCommutative'10230'__354 ->
  AgdaAny -> AgdaAny -> AgdaAny
du_'43''45'homo_1094 v0 = coe d_'43''45'homo_746 (coe v0)
-- Algebra.Solver.Ring.AlmostCommutativeRing._._.-‿homo
d_'45''8255'homo_1096 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Algebra.Bundles.T_RawRing_2460 ->
  T_AlmostCommutativeRing_176 ->
  T__'45'Raw'45'AlmostCommutative'10230'__354 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'45''8255'homo_1096 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6 ~v7 ~v8
  = du_'45''8255'homo_1096 v6
du_'45''8255'homo_1096 ::
  T__'45'Raw'45'AlmostCommutative'10230'__354 -> AgdaAny -> AgdaAny
du_'45''8255'homo_1096 v0 = coe d_'45''8255'homo_750 (coe v0)
-- Algebra.Solver.Ring.AlmostCommutativeRing._._.0-homo
d_0'45'homo_1098 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Algebra.Bundles.T_RawRing_2460 ->
  T_AlmostCommutativeRing_176 ->
  T__'45'Raw'45'AlmostCommutative'10230'__354 ->
  AgdaAny -> AgdaAny -> AgdaAny
d_0'45'homo_1098 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6 ~v7 ~v8
  = du_0'45'homo_1098 v6
du_0'45'homo_1098 ::
  T__'45'Raw'45'AlmostCommutative'10230'__354 -> AgdaAny
du_0'45'homo_1098 v0 = coe d_0'45'homo_752 (coe v0)
-- Algebra.Solver.Ring.AlmostCommutativeRing._._.1-homo
d_1'45'homo_1100 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Algebra.Bundles.T_RawRing_2460 ->
  T_AlmostCommutativeRing_176 ->
  T__'45'Raw'45'AlmostCommutative'10230'__354 ->
  AgdaAny -> AgdaAny -> AgdaAny
d_1'45'homo_1100 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6 ~v7 ~v8
  = du_1'45'homo_1100 v6
du_1'45'homo_1100 ::
  T__'45'Raw'45'AlmostCommutative'10230'__354 -> AgdaAny
du_1'45'homo_1100 v0 = coe d_1'45'homo_754 (coe v0)
-- Algebra.Solver.Ring.AlmostCommutativeRing._._.⟦_⟧
d_'10214'_'10215'_1102 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Algebra.Bundles.T_RawRing_2460 ->
  T_AlmostCommutativeRing_176 ->
  T__'45'Raw'45'AlmostCommutative'10230'__354 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'10214'_'10215'_1102 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6 ~v7 ~v8
  = du_'10214'_'10215'_1102 v6
du_'10214'_'10215'_1102 ::
  T__'45'Raw'45'AlmostCommutative'10230'__354 -> AgdaAny -> AgdaAny
du_'10214'_'10215'_1102 v0 = coe d_'10214'_'10215'_744 (coe v0)
-- Algebra.Solver.Ring.AlmostCommutativeRing.fromCommutativeRing
d_fromCommutativeRing_1108 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Algebra.Bundles.T_CommutativeRing_2704 ->
  T_AlmostCommutativeRing_176
d_fromCommutativeRing_1108 ~v0 ~v1 v2
  = du_fromCommutativeRing_1108 v2
du_fromCommutativeRing_1108 ::
  MAlonzo.Code.Algebra.Bundles.T_CommutativeRing_2704 ->
  T_AlmostCommutativeRing_176
du_fromCommutativeRing_1108 v0
  = coe
      C_AlmostCommutativeRing'46'constructor_5195
      (MAlonzo.Code.Algebra.Bundles.d__'43'__2730 (coe v0))
      (MAlonzo.Code.Algebra.Bundles.d__'42'__2732 (coe v0))
      (MAlonzo.Code.Algebra.Bundles.d_'45'__2734 (coe v0))
      (MAlonzo.Code.Algebra.Bundles.d_0'35'_2736 (coe v0))
      (MAlonzo.Code.Algebra.Bundles.d_1'35'_2738 (coe v0))
      (coe
         C_IsAlmostCommutativeRing'46'constructor_587
         (coe
            MAlonzo.Code.Algebra.Structures.du_isCommutativeSemiring_1842
            (coe
               MAlonzo.Code.Algebra.Bundles.d_isCommutativeRing_2740 (coe v0)))
         (coe
            MAlonzo.Code.Algebra.Structures.d_'8315''185''45'cong_598
            (coe
               MAlonzo.Code.Algebra.Structures.d_isGroup_674
               (coe
                  MAlonzo.Code.Algebra.Structures.d_'43''45'isAbelianGroup_1604
                  (coe
                     MAlonzo.Code.Algebra.Structures.d_isRing_1736
                     (coe
                        MAlonzo.Code.Algebra.Bundles.d_isCommutativeRing_2740 (coe v0))))))
         (coe
            MAlonzo.Code.Algebra.Properties.Ring.du_'45''8255''42''45'distrib'737'_258
            (coe MAlonzo.Code.Algebra.Bundles.du_ring_2858 (coe v0)))
         (coe
            MAlonzo.Code.Algebra.Properties.AbelianGroup.du_'8315''185''45''8729''45'comm_178
            (coe
               MAlonzo.Code.Algebra.Bundles.du_'43''45'abelianGroup_2654
               (coe MAlonzo.Code.Algebra.Bundles.du_ring_2858 (coe v0)))))
-- Algebra.Solver.Ring.AlmostCommutativeRing.fromCommutativeSemiring
d_fromCommutativeSemiring_1390 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Algebra.Bundles.T_CommutativeSemiring_2094 ->
  T_AlmostCommutativeRing_176
d_fromCommutativeSemiring_1390 ~v0 ~v1 v2
  = du_fromCommutativeSemiring_1390 v2
du_fromCommutativeSemiring_1390 ::
  MAlonzo.Code.Algebra.Bundles.T_CommutativeSemiring_2094 ->
  T_AlmostCommutativeRing_176
du_fromCommutativeSemiring_1390 v0
  = coe
      C_AlmostCommutativeRing'46'constructor_5195
      (MAlonzo.Code.Algebra.Bundles.d__'43'__2118 (coe v0))
      (MAlonzo.Code.Algebra.Bundles.d__'42'__2120 (coe v0)) (\ v1 -> v1)
      (MAlonzo.Code.Algebra.Bundles.d_0'35'_2122 (coe v0))
      (MAlonzo.Code.Algebra.Bundles.d_1'35'_2124 (coe v0))
      (coe
         C_IsAlmostCommutativeRing'46'constructor_587
         (coe
            MAlonzo.Code.Algebra.Bundles.d_isCommutativeSemiring_2126 (coe v0))
         (coe (\ v1 v2 v3 -> v3))
         (coe
            (\ v1 v2 ->
               coe
                 MAlonzo.Code.Relation.Binary.Structures.d_refl_34
                 (MAlonzo.Code.Algebra.Structures.d_isEquivalence_94
                    (coe
                       MAlonzo.Code.Algebra.Structures.d_isMagma_202
                       (coe
                          MAlonzo.Code.Algebra.Structures.d_isSemigroup_368
                          (coe
                             MAlonzo.Code.Algebra.Structures.d_isMonoid_416
                             (coe
                                MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_1158
                                (coe
                                   MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1252
                                   (coe
                                      MAlonzo.Code.Algebra.Structures.d_isSemiring_1358
                                      (coe
                                         MAlonzo.Code.Algebra.Bundles.d_isCommutativeSemiring_2126
                                         (coe v0)))))))))
                 (coe MAlonzo.Code.Algebra.Bundles.d__'42'__2120 v0 v1 v2)))
         (coe
            (\ v1 v2 ->
               coe
                 MAlonzo.Code.Relation.Binary.Structures.d_refl_34
                 (MAlonzo.Code.Algebra.Structures.d_isEquivalence_94
                    (coe
                       MAlonzo.Code.Algebra.Structures.d_isMagma_202
                       (coe
                          MAlonzo.Code.Algebra.Structures.d_isSemigroup_368
                          (coe
                             MAlonzo.Code.Algebra.Structures.d_isMonoid_416
                             (coe
                                MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_1158
                                (coe
                                   MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1252
                                   (coe
                                      MAlonzo.Code.Algebra.Structures.d_isSemiring_1358
                                      (coe
                                         MAlonzo.Code.Algebra.Bundles.d_isCommutativeSemiring_2126
                                         (coe v0)))))))))
                 (coe MAlonzo.Code.Algebra.Bundles.d__'43'__2118 v0 v1 v2))))
