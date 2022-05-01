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

module MAlonzo.Code.Algebra.Solver.Ring where

import MAlonzo.RTE (coe, erased, AgdaAny, addInt, subInt, mulInt,
                    quotInt, remInt, geqInt, ltInt, eqInt, add64, sub64, mul64, quot64,
                    rem64, lt64, eq64, word64FromNat, word64ToNat)
import qualified MAlonzo.RTE
import qualified Data.Text
import qualified MAlonzo.Code.Agda.Builtin.Maybe
import qualified MAlonzo.Code.Agda.Builtin.Sigma
import qualified MAlonzo.Code.Agda.Primitive
import qualified MAlonzo.Code.Algebra.Bundles
import qualified MAlonzo.Code.Algebra.Definitions.RawSemiring
import qualified MAlonzo.Code.Algebra.Properties.Semiring.Exp
import qualified MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing
import qualified MAlonzo.Code.Algebra.Solver.Ring.Lemmas
import qualified MAlonzo.Code.Algebra.Structures
import qualified MAlonzo.Code.Data.Fin.Base
import qualified MAlonzo.Code.Data.Vec.Base
import qualified MAlonzo.Code.Function.Base
import qualified MAlonzo.Code.Relation.Binary.Bundles
import qualified MAlonzo.Code.Relation.Binary.Reasoning.Base.Single
import qualified MAlonzo.Code.Relation.Binary.Reasoning.Setoid
import qualified MAlonzo.Code.Relation.Binary.Reflection
import qualified MAlonzo.Code.Relation.Binary.Structures

-- Algebra.Solver.Ring.C.Carrier
d_Carrier_66 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Algebra.Bundles.T_RawRing_2460 ->
  MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.T_AlmostCommutativeRing_176 ->
  MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.T__'45'Raw'45'AlmostCommutative'10230'__354 ->
  (AgdaAny -> AgdaAny -> Maybe AgdaAny) -> ()
d_Carrier_66 = erased
-- Algebra.Solver.Ring._._*_
d__'42'__72 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Algebra.Bundles.T_RawRing_2460 ->
  MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.T_AlmostCommutativeRing_176 ->
  MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.T__'45'Raw'45'AlmostCommutative'10230'__354 ->
  (AgdaAny -> AgdaAny -> Maybe AgdaAny) ->
  AgdaAny -> AgdaAny -> AgdaAny
d__'42'__72 ~v0 ~v1 ~v2 ~v3 ~v4 v5 ~v6 ~v7 = du__'42'__72 v5
du__'42'__72 ::
  MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.T_AlmostCommutativeRing_176 ->
  AgdaAny -> AgdaAny -> AgdaAny
du__'42'__72 v0
  = coe
      MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d__'42'__204
      (coe v0)
-- Algebra.Solver.Ring._._+_
d__'43'__74 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Algebra.Bundles.T_RawRing_2460 ->
  MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.T_AlmostCommutativeRing_176 ->
  MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.T__'45'Raw'45'AlmostCommutative'10230'__354 ->
  (AgdaAny -> AgdaAny -> Maybe AgdaAny) ->
  AgdaAny -> AgdaAny -> AgdaAny
d__'43'__74 ~v0 ~v1 ~v2 ~v3 ~v4 v5 ~v6 ~v7 = du__'43'__74 v5
du__'43'__74 ::
  MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.T_AlmostCommutativeRing_176 ->
  AgdaAny -> AgdaAny -> AgdaAny
du__'43'__74 v0
  = coe
      MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d__'43'__202
      (coe v0)
-- Algebra.Solver.Ring._._≈_
d__'8776'__76 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Algebra.Bundles.T_RawRing_2460 ->
  MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.T_AlmostCommutativeRing_176 ->
  MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.T__'45'Raw'45'AlmostCommutative'10230'__354 ->
  (AgdaAny -> AgdaAny -> Maybe AgdaAny) -> AgdaAny -> AgdaAny -> ()
d__'8776'__76 = erased
-- Algebra.Solver.Ring._.-_
d_'45'__158 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Algebra.Bundles.T_RawRing_2460 ->
  MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.T_AlmostCommutativeRing_176 ->
  MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.T__'45'Raw'45'AlmostCommutative'10230'__354 ->
  (AgdaAny -> AgdaAny -> Maybe AgdaAny) -> AgdaAny -> AgdaAny
d_'45'__158 ~v0 ~v1 ~v2 ~v3 ~v4 v5 ~v6 ~v7 = du_'45'__158 v5
du_'45'__158 ::
  MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.T_AlmostCommutativeRing_176 ->
  AgdaAny -> AgdaAny
du_'45'__158 v0
  = coe
      MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d_'45'__206
      (coe v0)
-- Algebra.Solver.Ring._.0#
d_0'35'_166 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Algebra.Bundles.T_RawRing_2460 ->
  MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.T_AlmostCommutativeRing_176 ->
  MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.T__'45'Raw'45'AlmostCommutative'10230'__354 ->
  (AgdaAny -> AgdaAny -> Maybe AgdaAny) -> AgdaAny
d_0'35'_166 ~v0 ~v1 ~v2 ~v3 ~v4 v5 ~v6 ~v7 = du_0'35'_166 v5
du_0'35'_166 ::
  MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.T_AlmostCommutativeRing_176 ->
  AgdaAny
du_0'35'_166 v0
  = coe
      MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d_0'35'_208
      (coe v0)
-- Algebra.Solver.Ring._.1#
d_1'35'_168 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Algebra.Bundles.T_RawRing_2460 ->
  MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.T_AlmostCommutativeRing_176 ->
  MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.T__'45'Raw'45'AlmostCommutative'10230'__354 ->
  (AgdaAny -> AgdaAny -> Maybe AgdaAny) -> AgdaAny
d_1'35'_168 ~v0 ~v1 ~v2 ~v3 ~v4 v5 ~v6 ~v7 = du_1'35'_168 v5
du_1'35'_168 ::
  MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.T_AlmostCommutativeRing_176 ->
  AgdaAny
du_1'35'_168 v0
  = coe
      MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d_1'35'_210
      (coe v0)
-- Algebra.Solver.Ring._.Carrier
d_Carrier_170 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Algebra.Bundles.T_RawRing_2460 ->
  MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.T_AlmostCommutativeRing_176 ->
  MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.T__'45'Raw'45'AlmostCommutative'10230'__354 ->
  (AgdaAny -> AgdaAny -> Maybe AgdaAny) -> ()
d_Carrier_170 = erased
-- Algebra.Solver.Ring._.⟦_⟧
d_'10214'_'10215'_296 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Algebra.Bundles.T_RawRing_2460 ->
  MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.T_AlmostCommutativeRing_176 ->
  MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.T__'45'Raw'45'AlmostCommutative'10230'__354 ->
  (AgdaAny -> AgdaAny -> Maybe AgdaAny) -> AgdaAny -> AgdaAny
d_'10214'_'10215'_296 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6 ~v7
  = du_'10214'_'10215'_296 v6
du_'10214'_'10215'_296 ::
  MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.T__'45'Raw'45'AlmostCommutative'10230'__354 ->
  AgdaAny -> AgdaAny
du_'10214'_'10215'_296 v0
  = coe
      MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d_'10214'_'10215'_744
      (coe v0)
-- Algebra.Solver.Ring._._^_
d__'94'__300 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Algebra.Bundles.T_RawRing_2460 ->
  MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.T_AlmostCommutativeRing_176 ->
  MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.T__'45'Raw'45'AlmostCommutative'10230'__354 ->
  (AgdaAny -> AgdaAny -> Maybe AgdaAny) ->
  AgdaAny -> Integer -> AgdaAny
d__'94'__300 ~v0 ~v1 ~v2 ~v3 ~v4 v5 ~v6 ~v7 = du__'94'__300 v5
du__'94'__300 ::
  MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.T_AlmostCommutativeRing_176 ->
  AgdaAny -> Integer -> AgdaAny
du__'94'__300 v0
  = let v1
          = coe
              MAlonzo.Code.Algebra.Bundles.du_semiring_2222
              (coe
                 MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.du_commutativeSemiring_316
                 (coe v0)) in
    coe
      MAlonzo.Code.Algebra.Definitions.RawSemiring.du__'94'__70
      (coe
         MAlonzo.Code.Algebra.Bundles.du_rawSemiring_1890
         (coe
            MAlonzo.Code.Algebra.Bundles.du_semiringWithoutAnnihilatingZero_2048
            (coe v1)))
-- Algebra.Solver.Ring.Op
d_Op_334 a0 a1 a2 a3 a4 a5 a6 a7 = ()
data T_Op_334 = C_'91''43''93'_336 | C_'91''42''93'_338
-- Algebra.Solver.Ring.Polynomial
d_Polynomial_342 a0 a1 a2 a3 a4 a5 a6 a7 a8 = ()
data T_Polynomial_342
  = C_op_352 T_Op_334 T_Polynomial_342 T_Polynomial_342 |
    C_con_356 AgdaAny | C_var_360 MAlonzo.Code.Data.Fin.Base.T_Fin_6 |
    C__'58''94'__366 T_Polynomial_342 Integer |
    C_'58''45'__370 T_Polynomial_342
-- Algebra.Solver.Ring._:+_
d__'58''43'__374 ::
  T_Polynomial_342 -> T_Polynomial_342 -> T_Polynomial_342
d__'58''43'__374 = coe C_op_352 (coe C_'91''43''93'_336)
-- Algebra.Solver.Ring._:*_
d__'58''42'__378 ::
  T_Polynomial_342 -> T_Polynomial_342 -> T_Polynomial_342
d__'58''42'__378 = coe C_op_352 (coe C_'91''42''93'_338)
-- Algebra.Solver.Ring._:-_
d__'58''45'__382 ::
  T_Polynomial_342 -> T_Polynomial_342 -> T_Polynomial_342
d__'58''45'__382 v0 v1
  = coe
      C_op_352 (coe C_'91''43''93'_336) (coe v0)
      (coe C_'58''45'__370 (coe v1))
-- Algebra.Solver.Ring._:×_
d__'58''215'__390 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Algebra.Bundles.T_RawRing_2460 ->
  MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.T_AlmostCommutativeRing_176 ->
  MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.T__'45'Raw'45'AlmostCommutative'10230'__354 ->
  (AgdaAny -> AgdaAny -> Maybe AgdaAny) ->
  Integer -> Integer -> T_Polynomial_342 -> T_Polynomial_342
d__'58''215'__390 ~v0 ~v1 ~v2 ~v3 v4 ~v5 ~v6 ~v7 ~v8 v9 v10
  = du__'58''215'__390 v4 v9 v10
du__'58''215'__390 ::
  MAlonzo.Code.Algebra.Bundles.T_RawRing_2460 ->
  Integer -> T_Polynomial_342 -> T_Polynomial_342
du__'58''215'__390 v0 v1 v2
  = case coe v1 of
      0 -> coe
             C_con_356 (coe MAlonzo.Code.Algebra.Bundles.d_0'35'_2490 (coe v0))
      _ -> let v3 = subInt (coe v1) (coe (1 :: Integer)) in
           coe
             C_op_352 (coe C_'91''43''93'_336) (coe v2)
             (coe du__'58''215'__390 (coe v0) (coe v3) (coe v2))
-- Algebra.Solver.Ring.sem
d_sem_398 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Algebra.Bundles.T_RawRing_2460 ->
  MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.T_AlmostCommutativeRing_176 ->
  MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.T__'45'Raw'45'AlmostCommutative'10230'__354 ->
  (AgdaAny -> AgdaAny -> Maybe AgdaAny) ->
  T_Op_334 -> AgdaAny -> AgdaAny -> AgdaAny
d_sem_398 ~v0 ~v1 ~v2 ~v3 ~v4 v5 ~v6 ~v7 v8 = du_sem_398 v5 v8
du_sem_398 ::
  MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.T_AlmostCommutativeRing_176 ->
  T_Op_334 -> AgdaAny -> AgdaAny -> AgdaAny
du_sem_398 v0 v1
  = case coe v1 of
      C_'91''43''93'_336
        -> coe
             MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d__'43'__202
             (coe v0)
      C_'91''42''93'_338
        -> coe
             MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d__'42'__204
             (coe v0)
      _ -> MAlonzo.RTE.mazUnreachableError
-- Algebra.Solver.Ring.⟦_⟧
d_'10214'_'10215'_402 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Algebra.Bundles.T_RawRing_2460 ->
  MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.T_AlmostCommutativeRing_176 ->
  MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.T__'45'Raw'45'AlmostCommutative'10230'__354 ->
  (AgdaAny -> AgdaAny -> Maybe AgdaAny) ->
  Integer ->
  T_Polynomial_342 -> MAlonzo.Code.Data.Vec.Base.T_Vec_24 -> AgdaAny
d_'10214'_'10215'_402 ~v0 ~v1 ~v2 ~v3 ~v4 v5 v6 ~v7 ~v8 v9 v10
  = du_'10214'_'10215'_402 v5 v6 v9 v10
du_'10214'_'10215'_402 ::
  MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.T_AlmostCommutativeRing_176 ->
  MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.T__'45'Raw'45'AlmostCommutative'10230'__354 ->
  T_Polynomial_342 -> MAlonzo.Code.Data.Vec.Base.T_Vec_24 -> AgdaAny
du_'10214'_'10215'_402 v0 v1 v2 v3
  = case coe v2 of
      C_op_352 v4 v5 v6
        -> coe
             MAlonzo.Code.Function.Base.du__'10216'_'10217'__250
             (coe du_'10214'_'10215'_402 (coe v0) (coe v1) (coe v5) (coe v3))
             (coe du_sem_398 (coe v0) (coe v4))
             (coe du_'10214'_'10215'_402 (coe v0) (coe v1) (coe v6) (coe v3))
      C_con_356 v4
        -> coe
             MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d_'10214'_'10215'_744
             v1 v4
      C_var_360 v4
        -> coe MAlonzo.Code.Data.Vec.Base.du_lookup_94 (coe v3) (coe v4)
      C__'58''94'__366 v4 v5
        -> coe
             MAlonzo.Code.Algebra.Definitions.RawSemiring.du__'94'__70
             (coe
                MAlonzo.Code.Algebra.Bundles.du_rawSemiring_1890
                (coe
                   MAlonzo.Code.Algebra.Bundles.du_semiringWithoutAnnihilatingZero_2048
                   (coe
                      MAlonzo.Code.Algebra.Bundles.du_semiring_2222
                      (coe
                         MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.du_commutativeSemiring_316
                         (coe v0)))))
             (coe du_'10214'_'10215'_402 (coe v0) (coe v1) (coe v4) (coe v3))
             (coe v5)
      C_'58''45'__370 v4
        -> coe
             MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d_'45'__206
             v0 (coe du_'10214'_'10215'_402 (coe v0) (coe v1) (coe v4) (coe v3))
      _ -> MAlonzo.RTE.mazUnreachableError
-- Algebra.Solver.Ring.HNF
d_HNF_430 a0 a1 a2 a3 a4 a5 a6 a7 a8 = ()
data T_HNF_430
  = C_'8709'_436 | C__'42'x'43'__440 T_HNF_430 T_Normal_432
-- Algebra.Solver.Ring.Normal
d_Normal_432 a0 a1 a2 a3 a4 a5 a6 a7 a8 = ()
data T_Normal_432 = C_con_442 AgdaAny | C_poly_446 T_HNF_430
-- Algebra.Solver.Ring.⟦_⟧H
d_'10214'_'10215'H_450 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Algebra.Bundles.T_RawRing_2460 ->
  MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.T_AlmostCommutativeRing_176 ->
  MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.T__'45'Raw'45'AlmostCommutative'10230'__354 ->
  (AgdaAny -> AgdaAny -> Maybe AgdaAny) ->
  Integer ->
  T_HNF_430 -> MAlonzo.Code.Data.Vec.Base.T_Vec_24 -> AgdaAny
d_'10214'_'10215'H_450 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10
  = case coe v9 of
      C_'8709'_436
        -> coe
             MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d_0'35'_208
             (coe v5)
      C__'42'x'43'__440 v12 v13
        -> case coe v10 of
             MAlonzo.Code.Data.Vec.Base.C__'8759'__36 v15 v16
               -> coe
                    MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d__'43'__202
                    v5
                    (coe
                       MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d__'42'__204
                       v5
                       (d_'10214'_'10215'H_450
                          (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5) (coe v6)
                          (coe v7) (coe v8) (coe v12)
                          (coe MAlonzo.Code.Data.Vec.Base.C__'8759'__36 v15 v16))
                       v15)
                    (d_'10214'_'10215'N_454
                       (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5) (coe v6)
                       (coe v7) (coe v8) (coe v13) (coe v16))
             _ -> MAlonzo.RTE.mazUnreachableError
      _ -> MAlonzo.RTE.mazUnreachableError
-- Algebra.Solver.Ring.⟦_⟧N
d_'10214'_'10215'N_454 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Algebra.Bundles.T_RawRing_2460 ->
  MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.T_AlmostCommutativeRing_176 ->
  MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.T__'45'Raw'45'AlmostCommutative'10230'__354 ->
  (AgdaAny -> AgdaAny -> Maybe AgdaAny) ->
  Integer ->
  T_Normal_432 -> MAlonzo.Code.Data.Vec.Base.T_Vec_24 -> AgdaAny
d_'10214'_'10215'N_454 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10
  = case coe v9 of
      C_con_442 v11
        -> coe
             MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d_'10214'_'10215'_744
             v6 v11
      C_poly_446 v12
        -> let v13 = subInt (coe v8) (coe (1 :: Integer)) in
           coe
             d_'10214'_'10215'H_450 (coe v0) (coe v1) (coe v2) (coe v3) (coe v4)
             (coe v5) (coe v6) (coe v7) (coe v13) (coe v12) (coe v10)
      _ -> MAlonzo.RTE.mazUnreachableError
-- Algebra.Solver.Ring._≈H_
d__'8776'H__472 a0 a1 a2 a3 a4 a5 a6 a7 a8 a9 a10 = ()
data T__'8776'H__472
  = C_'8709'_480 | C__'42'x'43'__492 T__'8776'H__472 T__'8776'N__476
-- Algebra.Solver.Ring._≈N_
d__'8776'N__476 a0 a1 a2 a3 a4 a5 a6 a7 a8 a9 a10 = ()
data T__'8776'N__476
  = C_con_498 AgdaAny | C_poly_506 T__'8776'H__472
-- Algebra.Solver.Ring._≟H_
d__'8799'H__510 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Algebra.Bundles.T_RawRing_2460 ->
  MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.T_AlmostCommutativeRing_176 ->
  MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.T__'45'Raw'45'AlmostCommutative'10230'__354 ->
  (AgdaAny -> AgdaAny -> Maybe AgdaAny) ->
  Integer -> T_HNF_430 -> T_HNF_430 -> Maybe T__'8776'H__472
d__'8799'H__510 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10
  = case coe v9 of
      C_'8709'_436
        -> case coe v10 of
             C_'8709'_436
               -> coe MAlonzo.Code.Agda.Builtin.Maybe.C_just_16 (coe C_'8709'_480)
             C__'42'x'43'__440 v13 v14
               -> coe MAlonzo.Code.Agda.Builtin.Maybe.C_nothing_18
             _ -> MAlonzo.RTE.mazUnreachableError
      C__'42'x'43'__440 v12 v13
        -> let v14 = subInt (coe v8) (coe (1 :: Integer)) in
           case coe v10 of
             C_'8709'_436 -> coe MAlonzo.Code.Agda.Builtin.Maybe.C_nothing_18
             C__'42'x'43'__440 v16 v17
               -> let v18
                        = d__'8799'H__510
                            (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5) (coe v6)
                            (coe v7) (coe v8) (coe v12) (coe v16) in
                  let v19
                        = d__'8799'N__514
                            (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5) (coe v6)
                            (coe v7) (coe v14) (coe v13) (coe v17) in
                  case coe v18 of
                    MAlonzo.Code.Agda.Builtin.Maybe.C_just_16 v20
                      -> case coe v19 of
                           MAlonzo.Code.Agda.Builtin.Maybe.C_just_16 v21
                             -> coe
                                  MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                                  (coe C__'42'x'43'__492 v20 v21)
                           MAlonzo.Code.Agda.Builtin.Maybe.C_nothing_18 -> coe v19
                           _ -> MAlonzo.RTE.mazUnreachableError
                    MAlonzo.Code.Agda.Builtin.Maybe.C_nothing_18
                      -> case coe v19 of
                           MAlonzo.Code.Agda.Builtin.Maybe.C_nothing_18 -> coe v19
                           _ -> coe v18
                    _ -> MAlonzo.RTE.mazUnreachableError
             _ -> MAlonzo.RTE.mazUnreachableError
      _ -> MAlonzo.RTE.mazUnreachableError
-- Algebra.Solver.Ring._≟N_
d__'8799'N__514 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Algebra.Bundles.T_RawRing_2460 ->
  MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.T_AlmostCommutativeRing_176 ->
  MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.T__'45'Raw'45'AlmostCommutative'10230'__354 ->
  (AgdaAny -> AgdaAny -> Maybe AgdaAny) ->
  Integer -> T_Normal_432 -> T_Normal_432 -> Maybe T__'8776'N__476
d__'8799'N__514 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10
  = case coe v9 of
      C_con_442 v11
        -> case coe v10 of
             C_con_442 v12
               -> let v13 = coe v7 v11 v12 in
                  case coe v13 of
                    MAlonzo.Code.Agda.Builtin.Maybe.C_just_16 v14
                      -> coe
                           MAlonzo.Code.Agda.Builtin.Maybe.C_just_16 (coe C_con_498 v14)
                    MAlonzo.Code.Agda.Builtin.Maybe.C_nothing_18 -> coe v13
                    _ -> MAlonzo.RTE.mazUnreachableError
             _ -> MAlonzo.RTE.mazUnreachableError
      C_poly_446 v12
        -> case coe v10 of
             C_poly_446 v14
               -> let v15
                        = d__'8799'H__510
                            (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5) (coe v6)
                            (coe v7) (coe v8) (coe v12) (coe v14) in
                  case coe v15 of
                    MAlonzo.Code.Agda.Builtin.Maybe.C_just_16 v16
                      -> coe
                           MAlonzo.Code.Agda.Builtin.Maybe.C_just_16 (coe C_poly_506 v16)
                    MAlonzo.Code.Agda.Builtin.Maybe.C_nothing_18 -> coe v15
                    _ -> MAlonzo.RTE.mazUnreachableError
             _ -> MAlonzo.RTE.mazUnreachableError
      _ -> MAlonzo.RTE.mazUnreachableError
-- Algebra.Solver.Ring.⟦_⟧H-cong
d_'10214'_'10215'H'45'cong_600 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Algebra.Bundles.T_RawRing_2460 ->
  MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.T_AlmostCommutativeRing_176 ->
  MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.T__'45'Raw'45'AlmostCommutative'10230'__354 ->
  (AgdaAny -> AgdaAny -> Maybe AgdaAny) ->
  Integer ->
  T_HNF_430 ->
  T_HNF_430 ->
  T__'8776'H__472 -> MAlonzo.Code.Data.Vec.Base.T_Vec_24 -> AgdaAny
d_'10214'_'10215'H'45'cong_600 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10
                               v11 v12
  = case coe v11 of
      C_'8709'_480
        -> coe
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
                                     MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d_isCommutativeSemiring_62
                                     (coe
                                        MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d_isAlmostCommutativeRing_212
                                        (coe v5))))))))))
             (d_'10214'_'10215'H_450
                (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5) (coe v6)
                (coe v7) (coe v8) (coe C_'8709'_436) (coe v12))
      C__'42'x'43'__492 v18 v19
        -> case coe v9 of
             C__'42'x'43'__440 v21 v22
               -> case coe v10 of
                    C__'42'x'43'__440 v24 v25
                      -> case coe v12 of
                           MAlonzo.Code.Data.Vec.Base.C__'8759'__36 v27 v28
                             -> coe
                                  MAlonzo.Code.Function.Base.du__'10216'_'10217'__250
                                  (coe
                                     MAlonzo.Code.Function.Base.du__'10216'_'10217'__250
                                     (coe
                                        d_'10214'_'10215'H'45'cong_600 (coe v0) (coe v1) (coe v2)
                                        (coe v3) (coe v4) (coe v5) (coe v6) (coe v7) (coe v8)
                                        (coe v21) (coe v24) (coe v18)
                                        (coe MAlonzo.Code.Data.Vec.Base.C__'8759'__36 v27 v28))
                                     (coe
                                        MAlonzo.Code.Algebra.Structures.d_'8729''45'cong_96
                                        (MAlonzo.Code.Algebra.Structures.d_isMagma_202
                                           (coe
                                              MAlonzo.Code.Algebra.Structures.d_isSemigroup_368
                                              (coe
                                                 MAlonzo.Code.Algebra.Structures.d_'42''45'isMonoid_1160
                                                 (coe
                                                    MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1252
                                                    (coe
                                                       MAlonzo.Code.Algebra.Structures.d_isSemiring_1358
                                                       (coe
                                                          MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d_isCommutativeSemiring_62
                                                          (coe
                                                             MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d_isAlmostCommutativeRing_212
                                                             (coe v5))))))))
                                        (d_'10214'_'10215'H_450
                                           (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5)
                                           (coe v6) (coe v7) (coe v8) (coe v21)
                                           (coe MAlonzo.Code.Data.Vec.Base.C__'8759'__36 v27 v28))
                                        (d_'10214'_'10215'H_450
                                           (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5)
                                           (coe v6) (coe v7) (coe v8) (coe v24)
                                           (coe MAlonzo.Code.Data.Vec.Base.C__'8759'__36 v27 v28))
                                        v27 v27)
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
                                                                MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d_isCommutativeSemiring_62
                                                                (coe
                                                                   MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d_isAlmostCommutativeRing_212
                                                                   (coe v5))))))))))
                                        v27))
                                  (coe
                                     MAlonzo.Code.Algebra.Structures.d_'8729''45'cong_96
                                     (MAlonzo.Code.Algebra.Structures.d_isMagma_202
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
                                                          MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d_isCommutativeSemiring_62
                                                          (coe
                                                             MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d_isAlmostCommutativeRing_212
                                                             (coe v5)))))))))
                                     (coe
                                        MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d__'42'__204
                                        v5
                                        (d_'10214'_'10215'H_450
                                           (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5)
                                           (coe v6) (coe v7) (coe v8) (coe v21)
                                           (coe MAlonzo.Code.Data.Vec.Base.C__'8759'__36 v27 v28))
                                        v27)
                                     (coe
                                        MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d__'42'__204
                                        v5
                                        (d_'10214'_'10215'H_450
                                           (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5)
                                           (coe v6) (coe v7) (coe v8) (coe v24)
                                           (coe MAlonzo.Code.Data.Vec.Base.C__'8759'__36 v27 v28))
                                        v27)
                                     (d_'10214'_'10215'N_454
                                        (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5)
                                        (coe v6) (coe v7) (coe v8) (coe v22) (coe v28))
                                     (d_'10214'_'10215'N_454
                                        (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5)
                                        (coe v6) (coe v7) (coe v8) (coe v25) (coe v28)))
                                  (coe
                                     d_'10214'_'10215'N'45'cong_610 (coe v0) (coe v1) (coe v2)
                                     (coe v3) (coe v4) (coe v5) (coe v6) (coe v7) (coe v8) (coe v22)
                                     (coe v25) (coe v19) (coe v28))
                           _ -> MAlonzo.RTE.mazUnreachableError
                    _ -> MAlonzo.RTE.mazUnreachableError
             _ -> MAlonzo.RTE.mazUnreachableError
      _ -> MAlonzo.RTE.mazUnreachableError
-- Algebra.Solver.Ring.⟦_⟧N-cong
d_'10214'_'10215'N'45'cong_610 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Algebra.Bundles.T_RawRing_2460 ->
  MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.T_AlmostCommutativeRing_176 ->
  MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.T__'45'Raw'45'AlmostCommutative'10230'__354 ->
  (AgdaAny -> AgdaAny -> Maybe AgdaAny) ->
  Integer ->
  T_Normal_432 ->
  T_Normal_432 ->
  T__'8776'N__476 -> MAlonzo.Code.Data.Vec.Base.T_Vec_24 -> AgdaAny
d_'10214'_'10215'N'45'cong_610 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10
                               v11 v12
  = case coe v11 of
      C_con_498 v15 -> coe v15
      C_poly_506 v16
        -> let v17 = subInt (coe v8) (coe (1 :: Integer)) in
           case coe v9 of
             C_poly_446 v19
               -> case coe v10 of
                    C_poly_446 v21
                      -> coe
                           d_'10214'_'10215'H'45'cong_600 (coe v0) (coe v1) (coe v2) (coe v3)
                           (coe v4) (coe v5) (coe v6) (coe v7) (coe v17) (coe v19) (coe v21)
                           (coe v16) (coe v12)
                    _ -> MAlonzo.RTE.mazUnreachableError
             _ -> MAlonzo.RTE.mazUnreachableError
      _ -> MAlonzo.RTE.mazUnreachableError
-- Algebra.Solver.Ring.0H
d_0H_628 ::
  MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.T__'45'Raw'45'AlmostCommutative'10230'__354 ->
  (AgdaAny -> AgdaAny -> Maybe AgdaAny) -> Integer -> T_HNF_430
d_0H_628 ~v0 ~v1 ~v2 = du_0H_628
du_0H_628 :: T_HNF_430
du_0H_628 = coe C_'8709'_436
-- Algebra.Solver.Ring.0N
d_0N_632 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Algebra.Bundles.T_RawRing_2460 ->
  MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.T_AlmostCommutativeRing_176 ->
  MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.T__'45'Raw'45'AlmostCommutative'10230'__354 ->
  (AgdaAny -> AgdaAny -> Maybe AgdaAny) -> Integer -> T_Normal_432
d_0N_632 ~v0 ~v1 ~v2 ~v3 v4 ~v5 ~v6 ~v7 v8 = du_0N_632 v4 v8
du_0N_632 ::
  MAlonzo.Code.Algebra.Bundles.T_RawRing_2460 ->
  Integer -> T_Normal_432
du_0N_632 v0 v1
  = case coe v1 of
      0 -> coe
             C_con_442 (coe MAlonzo.Code.Algebra.Bundles.d_0'35'_2490 (coe v0))
      _ -> coe C_poly_446 (coe C_'8709'_436)
-- Algebra.Solver.Ring.1H
d_1H_638 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Algebra.Bundles.T_RawRing_2460 ->
  MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.T_AlmostCommutativeRing_176 ->
  MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.T__'45'Raw'45'AlmostCommutative'10230'__354 ->
  (AgdaAny -> AgdaAny -> Maybe AgdaAny) -> Integer -> T_HNF_430
d_1H_638 v0 v1 v2 v3 v4 v5 v6 v7 v8
  = coe
      C__'42'x'43'__440 (coe C_'8709'_436)
      (d_1N_642
         (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5) (coe v6)
         (coe v7) (coe v8))
-- Algebra.Solver.Ring.1N
d_1N_642 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Algebra.Bundles.T_RawRing_2460 ->
  MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.T_AlmostCommutativeRing_176 ->
  MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.T__'45'Raw'45'AlmostCommutative'10230'__354 ->
  (AgdaAny -> AgdaAny -> Maybe AgdaAny) -> Integer -> T_Normal_432
d_1N_642 v0 v1 v2 v3 v4 v5 v6 v7 v8
  = case coe v8 of
      0 -> coe
             C_con_442 (coe MAlonzo.Code.Algebra.Bundles.d_1'35'_2492 (coe v4))
      _ -> let v9 = subInt (coe v8) (coe (1 :: Integer)) in
           coe
             C_poly_446
             (d_1H_638
                (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5) (coe v6)
                (coe v7) (coe v9))
-- Algebra.Solver.Ring._*x+HN_
d__'42'x'43'HN__650 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Algebra.Bundles.T_RawRing_2460 ->
  MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.T_AlmostCommutativeRing_176 ->
  MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.T__'45'Raw'45'AlmostCommutative'10230'__354 ->
  (AgdaAny -> AgdaAny -> Maybe AgdaAny) ->
  Integer -> T_HNF_430 -> T_Normal_432 -> T_HNF_430
d__'42'x'43'HN__650 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10
  = case coe v9 of
      C_'8709'_436
        -> let v12
                 = d__'8799'N__514
                     (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5) (coe v6)
                     (coe v7) (coe v8) (coe v10) (coe du_0N_632 (coe v4) (coe v8)) in
           case coe v12 of
             MAlonzo.Code.Agda.Builtin.Maybe.C_just_16 v13 -> coe C_'8709'_436
             MAlonzo.Code.Agda.Builtin.Maybe.C_nothing_18
               -> coe C__'42'x'43'__440 (coe C_'8709'_436) v10
             _ -> MAlonzo.RTE.mazUnreachableError
      C__'42'x'43'__440 v12 v13
        -> coe C__'42'x'43'__440 (coe C__'42'x'43'__440 v12 v13) v10
      _ -> MAlonzo.RTE.mazUnreachableError
-- Algebra.Solver.Ring._+H_
d__'43'H__672 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Algebra.Bundles.T_RawRing_2460 ->
  MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.T_AlmostCommutativeRing_176 ->
  MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.T__'45'Raw'45'AlmostCommutative'10230'__354 ->
  (AgdaAny -> AgdaAny -> Maybe AgdaAny) ->
  Integer -> T_HNF_430 -> T_HNF_430 -> T_HNF_430
d__'43'H__672 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10
  = case coe v9 of
      C_'8709'_436 -> coe v10
      C__'42'x'43'__440 v12 v13
        -> case coe v10 of
             C_'8709'_436 -> coe C__'42'x'43'__440 v12 v13
             C__'42'x'43'__440 v15 v16
               -> coe
                    d__'42'x'43'HN__650 (coe v0) (coe v1) (coe v2) (coe v3) (coe v4)
                    (coe v5) (coe v6) (coe v7) (coe v8)
                    (coe
                       d__'43'H__672 (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5)
                       (coe v6) (coe v7) (coe v8) (coe v12) (coe v15))
                    (coe
                       d__'43'N__676 (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5)
                       (coe v6) (coe v7) (coe v8) (coe v13) (coe v16))
             _ -> MAlonzo.RTE.mazUnreachableError
      _ -> MAlonzo.RTE.mazUnreachableError
-- Algebra.Solver.Ring._+N_
d__'43'N__676 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Algebra.Bundles.T_RawRing_2460 ->
  MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.T_AlmostCommutativeRing_176 ->
  MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.T__'45'Raw'45'AlmostCommutative'10230'__354 ->
  (AgdaAny -> AgdaAny -> Maybe AgdaAny) ->
  Integer -> T_Normal_432 -> T_Normal_432 -> T_Normal_432
d__'43'N__676 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10
  = case coe v9 of
      C_con_442 v11
        -> case coe v10 of
             C_con_442 v12
               -> coe
                    C_con_442
                    (coe MAlonzo.Code.Algebra.Bundles.d__'43'__2484 v4 v11 v12)
             _ -> MAlonzo.RTE.mazUnreachableError
      C_poly_446 v12
        -> let v13 = subInt (coe v8) (coe (1 :: Integer)) in
           case coe v10 of
             C_poly_446 v15
               -> coe
                    C_poly_446
                    (d__'43'H__672
                       (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5) (coe v6)
                       (coe v7) (coe v13) (coe v12) (coe v15))
             _ -> MAlonzo.RTE.mazUnreachableError
      _ -> MAlonzo.RTE.mazUnreachableError
-- Algebra.Solver.Ring._*x+H_
d__'42'x'43'H__700 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Algebra.Bundles.T_RawRing_2460 ->
  MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.T_AlmostCommutativeRing_176 ->
  MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.T__'45'Raw'45'AlmostCommutative'10230'__354 ->
  (AgdaAny -> AgdaAny -> Maybe AgdaAny) ->
  Integer -> T_HNF_430 -> T_HNF_430 -> T_HNF_430
d__'42'x'43'H__700 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10
  = case coe v10 of
      C_'8709'_436
        -> case coe v9 of
             C_'8709'_436 -> coe C_'8709'_436
             C__'42'x'43'__440 v13 v14
               -> coe
                    C__'42'x'43'__440 (coe C__'42'x'43'__440 v13 v14)
                    (coe du_0N_632 (coe v4) (coe v8))
             _ -> MAlonzo.RTE.mazUnreachableError
      C__'42'x'43'__440 v12 v13
        -> coe
             d__'42'x'43'HN__650 (coe v0) (coe v1) (coe v2) (coe v3) (coe v4)
             (coe v5) (coe v6) (coe v7) (coe v8)
             (coe
                d__'43'H__672 (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5)
                (coe v6) (coe v7) (coe v8) (coe v9) (coe v12))
             (coe v13)
      _ -> MAlonzo.RTE.mazUnreachableError
-- Algebra.Solver.Ring._*NH_
d__'42'NH__714 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Algebra.Bundles.T_RawRing_2460 ->
  MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.T_AlmostCommutativeRing_176 ->
  MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.T__'45'Raw'45'AlmostCommutative'10230'__354 ->
  (AgdaAny -> AgdaAny -> Maybe AgdaAny) ->
  Integer -> T_Normal_432 -> T_HNF_430 -> T_HNF_430
d__'42'NH__714 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10
  = case coe v10 of
      C_'8709'_436 -> coe C_'8709'_436
      C__'42'x'43'__440 v12 v13
        -> let v14
                 = d__'8799'N__514
                     (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5) (coe v6)
                     (coe v7) (coe v8) (coe v9) (coe du_0N_632 (coe v4) (coe v8)) in
           case coe v14 of
             MAlonzo.Code.Agda.Builtin.Maybe.C_just_16 v15 -> coe C_'8709'_436
             MAlonzo.Code.Agda.Builtin.Maybe.C_nothing_18
               -> coe
                    C__'42'x'43'__440
                    (d__'42'NH__714
                       (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5) (coe v6)
                       (coe v7) (coe v8) (coe v9) (coe v12))
                    (d__'42'N__726
                       (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5) (coe v6)
                       (coe v7) (coe v8) (coe v9) (coe v13))
             _ -> MAlonzo.RTE.mazUnreachableError
      _ -> MAlonzo.RTE.mazUnreachableError
-- Algebra.Solver.Ring._*HN_
d__'42'HN__718 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Algebra.Bundles.T_RawRing_2460 ->
  MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.T_AlmostCommutativeRing_176 ->
  MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.T__'45'Raw'45'AlmostCommutative'10230'__354 ->
  (AgdaAny -> AgdaAny -> Maybe AgdaAny) ->
  Integer -> T_HNF_430 -> T_Normal_432 -> T_HNF_430
d__'42'HN__718 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10
  = case coe v9 of
      C_'8709'_436 -> coe C_'8709'_436
      C__'42'x'43'__440 v12 v13
        -> let v14
                 = d__'8799'N__514
                     (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5) (coe v6)
                     (coe v7) (coe v8) (coe v10) (coe du_0N_632 (coe v4) (coe v8)) in
           case coe v14 of
             MAlonzo.Code.Agda.Builtin.Maybe.C_just_16 v15 -> coe C_'8709'_436
             MAlonzo.Code.Agda.Builtin.Maybe.C_nothing_18
               -> coe
                    C__'42'x'43'__440
                    (d__'42'HN__718
                       (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5) (coe v6)
                       (coe v7) (coe v8) (coe v12) (coe v10))
                    (d__'42'N__726
                       (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5) (coe v6)
                       (coe v7) (coe v8) (coe v13) (coe v10))
             _ -> MAlonzo.RTE.mazUnreachableError
      _ -> MAlonzo.RTE.mazUnreachableError
-- Algebra.Solver.Ring._*H_
d__'42'H__722 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Algebra.Bundles.T_RawRing_2460 ->
  MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.T_AlmostCommutativeRing_176 ->
  MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.T__'45'Raw'45'AlmostCommutative'10230'__354 ->
  (AgdaAny -> AgdaAny -> Maybe AgdaAny) ->
  Integer -> T_HNF_430 -> T_HNF_430 -> T_HNF_430
d__'42'H__722 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10
  = case coe v9 of
      C_'8709'_436 -> coe C_'8709'_436
      C__'42'x'43'__440 v12 v13
        -> case coe v10 of
             C_'8709'_436 -> coe C_'8709'_436
             C__'42'x'43'__440 v15 v16
               -> coe
                    d__'42'x'43'HN__650 (coe v0) (coe v1) (coe v2) (coe v3) (coe v4)
                    (coe v5) (coe v6) (coe v7) (coe v8)
                    (coe
                       d__'42'x'43'H__700 (coe v0) (coe v1) (coe v2) (coe v3) (coe v4)
                       (coe v5) (coe v6) (coe v7) (coe v8)
                       (coe
                          d__'42'H__722 (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5)
                          (coe v6) (coe v7) (coe v8) (coe v12) (coe v15))
                       (coe
                          d__'43'H__672 (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5)
                          (coe v6) (coe v7) (coe v8)
                          (coe
                             d__'42'HN__718 (coe v0) (coe v1) (coe v2) (coe v3) (coe v4)
                             (coe v5) (coe v6) (coe v7) (coe v8) (coe v12) (coe v16))
                          (coe
                             d__'42'NH__714 (coe v0) (coe v1) (coe v2) (coe v3) (coe v4)
                             (coe v5) (coe v6) (coe v7) (coe v8) (coe v13) (coe v15))))
                    (coe
                       d__'42'N__726 (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5)
                       (coe v6) (coe v7) (coe v8) (coe v13) (coe v16))
             _ -> MAlonzo.RTE.mazUnreachableError
      _ -> MAlonzo.RTE.mazUnreachableError
-- Algebra.Solver.Ring._*N_
d__'42'N__726 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Algebra.Bundles.T_RawRing_2460 ->
  MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.T_AlmostCommutativeRing_176 ->
  MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.T__'45'Raw'45'AlmostCommutative'10230'__354 ->
  (AgdaAny -> AgdaAny -> Maybe AgdaAny) ->
  Integer -> T_Normal_432 -> T_Normal_432 -> T_Normal_432
d__'42'N__726 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10
  = case coe v9 of
      C_con_442 v11
        -> case coe v10 of
             C_con_442 v12
               -> coe
                    C_con_442
                    (coe MAlonzo.Code.Algebra.Bundles.d__'42'__2486 v4 v11 v12)
             _ -> MAlonzo.RTE.mazUnreachableError
      C_poly_446 v12
        -> let v13 = subInt (coe v8) (coe (1 :: Integer)) in
           case coe v10 of
             C_poly_446 v15
               -> coe
                    C_poly_446
                    (d__'42'H__722
                       (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5) (coe v6)
                       (coe v7) (coe v13) (coe v12) (coe v15))
             _ -> MAlonzo.RTE.mazUnreachableError
      _ -> MAlonzo.RTE.mazUnreachableError
-- Algebra.Solver.Ring._^N_
d__'94'N__798 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Algebra.Bundles.T_RawRing_2460 ->
  MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.T_AlmostCommutativeRing_176 ->
  MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.T__'45'Raw'45'AlmostCommutative'10230'__354 ->
  (AgdaAny -> AgdaAny -> Maybe AgdaAny) ->
  Integer -> T_Normal_432 -> Integer -> T_Normal_432
d__'94'N__798 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10
  = case coe v10 of
      0 -> coe
             d_1N_642 (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5)
             (coe v6) (coe v7) (coe v8)
      _ -> let v11 = subInt (coe v10) (coe (1 :: Integer)) in
           coe
             d__'42'N__726 (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5)
             (coe v6) (coe v7) (coe v8) (coe v9)
             (coe
                d__'94'N__798 (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5)
                (coe v6) (coe v7) (coe v8) (coe v9) (coe v11))
-- Algebra.Solver.Ring.-H_
d_'45'H__808 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Algebra.Bundles.T_RawRing_2460 ->
  MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.T_AlmostCommutativeRing_176 ->
  MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.T__'45'Raw'45'AlmostCommutative'10230'__354 ->
  (AgdaAny -> AgdaAny -> Maybe AgdaAny) ->
  Integer -> T_HNF_430 -> T_HNF_430
d_'45'H__808 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9
  = coe
      d__'42'NH__714 (coe v0) (coe v1) (coe v2) (coe v3) (coe v4)
      (coe v5) (coe v6) (coe v7) (coe v8)
      (coe
         d_'45'N__812 (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5)
         (coe v6) (coe v7) (coe v8)
         (coe
            d_1N_642 (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5)
            (coe v6) (coe v7) (coe v8)))
      (coe v9)
-- Algebra.Solver.Ring.-N_
d_'45'N__812 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Algebra.Bundles.T_RawRing_2460 ->
  MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.T_AlmostCommutativeRing_176 ->
  MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.T__'45'Raw'45'AlmostCommutative'10230'__354 ->
  (AgdaAny -> AgdaAny -> Maybe AgdaAny) ->
  Integer -> T_Normal_432 -> T_Normal_432
d_'45'N__812 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9
  = case coe v9 of
      C_con_442 v10
        -> coe
             C_con_442 (coe MAlonzo.Code.Algebra.Bundles.d_'45'__2488 v4 v10)
      C_poly_446 v11
        -> let v12 = subInt (coe v8) (coe (1 :: Integer)) in
           coe
             C_poly_446
             (d_'45'H__808
                (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5) (coe v6)
                (coe v7) (coe v12) (coe v11))
      _ -> MAlonzo.RTE.mazUnreachableError
-- Algebra.Solver.Ring.normalise-con
d_normalise'45'con_822 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Algebra.Bundles.T_RawRing_2460 ->
  MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.T_AlmostCommutativeRing_176 ->
  MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.T__'45'Raw'45'AlmostCommutative'10230'__354 ->
  (AgdaAny -> AgdaAny -> Maybe AgdaAny) ->
  Integer -> AgdaAny -> T_Normal_432
d_normalise'45'con_822 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9
  = case coe v8 of
      0 -> coe C_con_442 (coe v9)
      _ -> let v10 = subInt (coe v8) (coe (1 :: Integer)) in
           coe
             C_poly_446
             (d__'42'x'43'HN__650
                (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5) (coe v6)
                (coe v7) (coe v10) (coe C_'8709'_436)
                (coe
                   d_normalise'45'con_822 (coe v0) (coe v1) (coe v2) (coe v3) (coe v4)
                   (coe v5) (coe v6) (coe v7) (coe v10) (coe v9)))
-- Algebra.Solver.Ring.normalise-var
d_normalise'45'var_832 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Algebra.Bundles.T_RawRing_2460 ->
  MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.T_AlmostCommutativeRing_176 ->
  MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.T__'45'Raw'45'AlmostCommutative'10230'__354 ->
  (AgdaAny -> AgdaAny -> Maybe AgdaAny) ->
  Integer -> MAlonzo.Code.Data.Fin.Base.T_Fin_6 -> T_Normal_432
d_normalise'45'var_832 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9
  = case coe v9 of
      MAlonzo.Code.Data.Fin.Base.C_zero_10
        -> let v11 = subInt (coe v8) (coe (1 :: Integer)) in
           coe
             C_poly_446
             (coe
                C__'42'x'43'__440
                (coe
                   C__'42'x'43'__440 (coe C_'8709'_436)
                   (d_1N_642
                      (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5) (coe v6)
                      (coe v7) (coe v11)))
                (coe du_0N_632 (coe v4) (coe v11)))
      MAlonzo.Code.Data.Fin.Base.C_suc_16 v11
        -> let v12 = subInt (coe v8) (coe (1 :: Integer)) in
           coe
             C_poly_446
             (d__'42'x'43'HN__650
                (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5) (coe v6)
                (coe v7) (coe v12) (coe C_'8709'_436)
                (coe
                   d_normalise'45'var_832 (coe v0) (coe v1) (coe v2) (coe v3) (coe v4)
                   (coe v5) (coe v6) (coe v7) (coe v12) (coe v11)))
      _ -> MAlonzo.RTE.mazUnreachableError
-- Algebra.Solver.Ring.normalise
d_normalise_838 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Algebra.Bundles.T_RawRing_2460 ->
  MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.T_AlmostCommutativeRing_176 ->
  MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.T__'45'Raw'45'AlmostCommutative'10230'__354 ->
  (AgdaAny -> AgdaAny -> Maybe AgdaAny) ->
  Integer -> T_Polynomial_342 -> T_Normal_432
d_normalise_838 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9
  = case coe v9 of
      C_op_352 v10 v11 v12
        -> case coe v10 of
             C_'91''43''93'_336
               -> coe
                    d__'43'N__676 (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5)
                    (coe v6) (coe v7) (coe v8)
                    (coe
                       d_normalise_838 (coe v0) (coe v1) (coe v2) (coe v3) (coe v4)
                       (coe v5) (coe v6) (coe v7) (coe v8) (coe v11))
                    (coe
                       d_normalise_838 (coe v0) (coe v1) (coe v2) (coe v3) (coe v4)
                       (coe v5) (coe v6) (coe v7) (coe v8) (coe v12))
             C_'91''42''93'_338
               -> coe
                    d__'42'N__726 (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5)
                    (coe v6) (coe v7) (coe v8)
                    (coe
                       d_normalise_838 (coe v0) (coe v1) (coe v2) (coe v3) (coe v4)
                       (coe v5) (coe v6) (coe v7) (coe v8) (coe v11))
                    (coe
                       d_normalise_838 (coe v0) (coe v1) (coe v2) (coe v3) (coe v4)
                       (coe v5) (coe v6) (coe v7) (coe v8) (coe v12))
             _ -> MAlonzo.RTE.mazUnreachableError
      C_con_356 v10
        -> coe
             d_normalise'45'con_822 (coe v0) (coe v1) (coe v2) (coe v3) (coe v4)
             (coe v5) (coe v6) (coe v7) (coe v8) (coe v10)
      C_var_360 v10
        -> coe
             d_normalise'45'var_832 (coe v0) (coe v1) (coe v2) (coe v3) (coe v4)
             (coe v5) (coe v6) (coe v7) (coe v8) (coe v10)
      C__'58''94'__366 v10 v11
        -> coe
             d__'94'N__798 (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5)
             (coe v6) (coe v7) (coe v8)
             (coe
                d_normalise_838 (coe v0) (coe v1) (coe v2) (coe v3) (coe v4)
                (coe v5) (coe v6) (coe v7) (coe v8) (coe v10))
             (coe v11)
      C_'58''45'__370 v10
        -> coe
             d_'45'N__812 (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5)
             (coe v6) (coe v7) (coe v8)
             (coe
                d_normalise_838 (coe v0) (coe v1) (coe v2) (coe v3) (coe v4)
                (coe v5) (coe v6) (coe v7) (coe v8) (coe v10))
      _ -> MAlonzo.RTE.mazUnreachableError
-- Algebra.Solver.Ring.⟦_⟧↓
d_'10214'_'10215''8595'_860 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Algebra.Bundles.T_RawRing_2460 ->
  MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.T_AlmostCommutativeRing_176 ->
  MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.T__'45'Raw'45'AlmostCommutative'10230'__354 ->
  (AgdaAny -> AgdaAny -> Maybe AgdaAny) ->
  Integer ->
  T_Polynomial_342 -> MAlonzo.Code.Data.Vec.Base.T_Vec_24 -> AgdaAny
d_'10214'_'10215''8595'_860 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10
  = coe
      d_'10214'_'10215'N_454 (coe v0) (coe v1) (coe v2) (coe v3) (coe v4)
      (coe v5) (coe v6) (coe v7) (coe v8)
      (coe
         d_normalise_838 (coe v0) (coe v1) (coe v2) (coe v3) (coe v4)
         (coe v5) (coe v6) (coe v7) (coe v8) (coe v9))
      (coe v10)
-- Algebra.Solver.Ring.0N-homo
d_0N'45'homo_870 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Algebra.Bundles.T_RawRing_2460 ->
  MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.T_AlmostCommutativeRing_176 ->
  MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.T__'45'Raw'45'AlmostCommutative'10230'__354 ->
  (AgdaAny -> AgdaAny -> Maybe AgdaAny) ->
  Integer -> MAlonzo.Code.Data.Vec.Base.T_Vec_24 -> AgdaAny
d_0N'45'homo_870 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9
  = case coe v9 of
      MAlonzo.Code.Data.Vec.Base.C_'91''93'_28
        -> coe
             MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d_0'45'homo_752
             (coe v6)
      MAlonzo.Code.Data.Vec.Base.C__'8759'__36 v11 v12
        -> coe
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
                                     MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d_isCommutativeSemiring_62
                                     (coe
                                        MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d_isAlmostCommutativeRing_212
                                        (coe v5))))))))))
             (d_'10214'_'10215'N_454
                (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5) (coe v6)
                (coe v7) (coe v8) (coe du_0N_632 (coe v4) (coe v8))
                (coe MAlonzo.Code.Data.Vec.Base.C__'8759'__36 v11 v12))
      _ -> MAlonzo.RTE.mazUnreachableError
-- Algebra.Solver.Ring.0≈⟦0⟧
d_0'8776''10214'0'10215'_882 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Algebra.Bundles.T_RawRing_2460 ->
  MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.T_AlmostCommutativeRing_176 ->
  MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.T__'45'Raw'45'AlmostCommutative'10230'__354 ->
  (AgdaAny -> AgdaAny -> Maybe AgdaAny) ->
  Integer ->
  T_Normal_432 ->
  T__'8776'N__476 -> MAlonzo.Code.Data.Vec.Base.T_Vec_24 -> AgdaAny
d_0'8776''10214'0'10215'_882 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d_sym_36
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
                              MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d_isCommutativeSemiring_62
                              (coe
                                 MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d_isAlmostCommutativeRing_212
                                 (coe v5))))))))))
      (d_'10214'_'10215'N_454
         (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5) (coe v6)
         (coe v7) (coe v8) (coe v9) (coe v11))
      (MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d_0'35'_208
         (coe v5))
      (MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.d_begin__40
         (coe
            MAlonzo.Code.Relation.Binary.Reasoning.Setoid.du_step'45''8776'_58
            (let v12
                   = MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d_isAlmostCommutativeRing_212
                       (coe v5) in
             let v13
                   = MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d_isCommutativeSemiring_62
                       (coe v12) in
             let v14
                   = MAlonzo.Code.Algebra.Structures.d_isSemiring_1358 (coe v13) in
             let v15
                   = MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1252
                       (coe v14) in
             let v16
                   = MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_1158
                       (coe v15) in
             let v17
                   = MAlonzo.Code.Algebra.Structures.d_isMonoid_416 (coe v16) in
             let v18
                   = MAlonzo.Code.Algebra.Structures.d_isSemigroup_368 (coe v17) in
             coe
               MAlonzo.Code.Algebra.Structures.du_setoid_110
               (coe MAlonzo.Code.Algebra.Structures.d_isMagma_202 (coe v18)))
            (d_'10214'_'10215'N_454
               (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5) (coe v6)
               (coe v7) (coe v8) (coe v9) (coe v11))
            (d_'10214'_'10215'N_454
               (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5) (coe v6)
               (coe v7) (coe v8) (coe du_0N_632 (coe v4) (coe v8)) (coe v11))
            (MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d_0'35'_208
               (coe v5))
            (coe
               MAlonzo.Code.Relation.Binary.Reasoning.Setoid.du_step'45''8776'_58
               (let v12
                      = MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d_isAlmostCommutativeRing_212
                          (coe v5) in
                let v13
                      = MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d_isCommutativeSemiring_62
                          (coe v12) in
                let v14
                      = MAlonzo.Code.Algebra.Structures.d_isSemiring_1358 (coe v13) in
                let v15
                      = MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1252
                          (coe v14) in
                let v16
                      = MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_1158
                          (coe v15) in
                let v17
                      = MAlonzo.Code.Algebra.Structures.d_isMonoid_416 (coe v16) in
                let v18
                      = MAlonzo.Code.Algebra.Structures.d_isSemigroup_368 (coe v17) in
                coe
                  MAlonzo.Code.Algebra.Structures.du_setoid_110
                  (coe MAlonzo.Code.Algebra.Structures.d_isMagma_202 (coe v18)))
               (d_'10214'_'10215'N_454
                  (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5) (coe v6)
                  (coe v7) (coe v8) (coe du_0N_632 (coe v4) (coe v8)) (coe v11))
               (MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d_0'35'_208
                  (coe v5))
               (MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d_0'35'_208
                  (coe v5))
               (coe
                  MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du__'8718'_86
                  (coe
                     MAlonzo.Code.Relation.Binary.Structures.d_refl_34
                     (coe
                        MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_60
                        (let v12
                               = MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d_isAlmostCommutativeRing_212
                                   (coe v5) in
                         let v13
                               = MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d_isCommutativeSemiring_62
                                   (coe v12) in
                         let v14
                               = MAlonzo.Code.Algebra.Structures.d_isSemiring_1358 (coe v13) in
                         let v15
                               = MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1252
                                   (coe v14) in
                         let v16
                               = MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_1158
                                   (coe v15) in
                         let v17
                               = MAlonzo.Code.Algebra.Structures.d_isMonoid_416 (coe v16) in
                         let v18
                               = MAlonzo.Code.Algebra.Structures.d_isSemigroup_368 (coe v17) in
                         coe
                           MAlonzo.Code.Algebra.Structures.du_setoid_110
                           (coe MAlonzo.Code.Algebra.Structures.d_isMagma_202 (coe v18)))))
                  (coe
                     MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d_0'35'_208
                     (coe v5)))
               (d_0N'45'homo_870
                  (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5) (coe v6)
                  (coe v7) (coe v8) (coe v11)))
            (d_'10214'_'10215'N'45'cong_610
               (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5) (coe v6)
               (coe v7) (coe v8) (coe v9) (coe du_0N_632 (coe v4) (coe v8))
               (coe v10) (coe v11))))
-- Algebra.Solver.Ring.1N-homo
d_1N'45'homo_894 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Algebra.Bundles.T_RawRing_2460 ->
  MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.T_AlmostCommutativeRing_176 ->
  MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.T__'45'Raw'45'AlmostCommutative'10230'__354 ->
  (AgdaAny -> AgdaAny -> Maybe AgdaAny) ->
  Integer -> MAlonzo.Code.Data.Vec.Base.T_Vec_24 -> AgdaAny
d_1N'45'homo_894 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9
  = case coe v9 of
      MAlonzo.Code.Data.Vec.Base.C_'91''93'_28
        -> coe
             MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d_1'45'homo_754
             (coe v6)
      MAlonzo.Code.Data.Vec.Base.C__'8759'__36 v11 v12
        -> let v13 = subInt (coe v8) (coe (1 :: Integer)) in
           coe
             MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.d_begin__40
             (coe
                MAlonzo.Code.Relation.Binary.Reasoning.Setoid.du_step'45''8776'_58
                (let v14
                       = MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d_isAlmostCommutativeRing_212
                           (coe v5) in
                 let v15
                       = MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d_isCommutativeSemiring_62
                           (coe v14) in
                 let v16
                       = MAlonzo.Code.Algebra.Structures.d_isSemiring_1358 (coe v15) in
                 let v17
                       = MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1252
                           (coe v16) in
                 let v18
                       = MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_1158
                           (coe v17) in
                 let v19
                       = MAlonzo.Code.Algebra.Structures.d_isMonoid_416 (coe v18) in
                 let v20
                       = MAlonzo.Code.Algebra.Structures.d_isSemigroup_368 (coe v19) in
                 coe
                   MAlonzo.Code.Algebra.Structures.du_setoid_110
                   (coe MAlonzo.Code.Algebra.Structures.d_isMagma_202 (coe v20)))
                (coe
                   MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d__'43'__202
                   v5
                   (coe
                      MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d__'42'__204
                      v5
                      (MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d_0'35'_208
                         (coe v5))
                      v11)
                   (d_'10214'_'10215'N_454
                      (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5) (coe v6)
                      (coe v7) (coe v13)
                      (coe
                         d_1N_642 (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5)
                         (coe v6) (coe v7) (coe v13))
                      (coe v12)))
                (coe
                   MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d__'43'__202
                   v5
                   (coe
                      MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d__'42'__204
                      v5
                      (MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d_0'35'_208
                         (coe v5))
                      v11)
                   (MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d_1'35'_210
                      (coe v5)))
                (MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d_1'35'_210
                   (coe v5))
                (coe
                   MAlonzo.Code.Relation.Binary.Reasoning.Setoid.du_step'45''8776'_58
                   (let v14
                          = MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d_isAlmostCommutativeRing_212
                              (coe v5) in
                    let v15
                          = MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d_isCommutativeSemiring_62
                              (coe v14) in
                    let v16
                          = MAlonzo.Code.Algebra.Structures.d_isSemiring_1358 (coe v15) in
                    let v17
                          = MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1252
                              (coe v16) in
                    let v18
                          = MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_1158
                              (coe v17) in
                    let v19
                          = MAlonzo.Code.Algebra.Structures.d_isMonoid_416 (coe v18) in
                    let v20
                          = MAlonzo.Code.Algebra.Structures.d_isSemigroup_368 (coe v19) in
                    coe
                      MAlonzo.Code.Algebra.Structures.du_setoid_110
                      (coe MAlonzo.Code.Algebra.Structures.d_isMagma_202 (coe v20)))
                   (coe
                      MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d__'43'__202
                      v5
                      (coe
                         MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d__'42'__204
                         v5
                         (MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d_0'35'_208
                            (coe v5))
                         v11)
                      (MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d_1'35'_210
                         (coe v5)))
                   (MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d_1'35'_210
                      (coe v5))
                   (MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d_1'35'_210
                      (coe v5))
                   (coe
                      MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du__'8718'_86
                      (coe
                         MAlonzo.Code.Relation.Binary.Structures.d_refl_34
                         (coe
                            MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_60
                            (let v14
                                   = MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d_isAlmostCommutativeRing_212
                                       (coe v5) in
                             let v15
                                   = MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d_isCommutativeSemiring_62
                                       (coe v14) in
                             let v16
                                   = MAlonzo.Code.Algebra.Structures.d_isSemiring_1358 (coe v15) in
                             let v17
                                   = MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1252
                                       (coe v16) in
                             let v18
                                   = MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_1158
                                       (coe v17) in
                             let v19
                                   = MAlonzo.Code.Algebra.Structures.d_isMonoid_416 (coe v18) in
                             let v20
                                   = MAlonzo.Code.Algebra.Structures.d_isSemigroup_368 (coe v19) in
                             coe
                               MAlonzo.Code.Algebra.Structures.du_setoid_110
                               (coe MAlonzo.Code.Algebra.Structures.d_isMagma_202 (coe v20)))))
                      (coe
                         MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d_1'35'_210
                         (coe v5)))
                   (coe
                      MAlonzo.Code.Algebra.Solver.Ring.Lemmas.du_lemma'8326'_356 (coe v5)
                      (coe
                         MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d_1'35'_210
                         (coe v5))
                      (coe v11)))
                (coe
                   MAlonzo.Code.Function.Base.du__'10216'_'10217'__250
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
                                              MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d_isCommutativeSemiring_62
                                              (coe
                                                 MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d_isAlmostCommutativeRing_212
                                                 (coe v5))))))))))
                      (coe
                         MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d__'42'__204
                         v5
                         (MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d_0'35'_208
                            (coe v5))
                         v11))
                   (coe
                      MAlonzo.Code.Algebra.Structures.d_'8729''45'cong_96
                      (MAlonzo.Code.Algebra.Structures.d_isMagma_202
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
                                           MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d_isCommutativeSemiring_62
                                           (coe
                                              MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d_isAlmostCommutativeRing_212
                                              (coe v5)))))))))
                      (coe
                         MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d__'42'__204
                         v5
                         (MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d_0'35'_208
                            (coe v5))
                         v11)
                      (coe
                         MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d__'42'__204
                         v5
                         (MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d_0'35'_208
                            (coe v5))
                         v11)
                      (d_'10214'_'10215'N_454
                         (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5) (coe v6)
                         (coe v7) (coe v13)
                         (coe
                            d_1N_642 (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5)
                            (coe v6) (coe v7) (coe v13))
                         (coe v12))
                      (MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d_1'35'_210
                         (coe v5)))
                   (coe
                      d_1N'45'homo_894 (coe v0) (coe v1) (coe v2) (coe v3) (coe v4)
                      (coe v5) (coe v6) (coe v7) (coe v13) (coe v12))))
      _ -> MAlonzo.RTE.mazUnreachableError
-- Algebra.Solver.Ring.*x+HN≈*x+
d_'42'x'43'HN'8776''42'x'43'_908 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Algebra.Bundles.T_RawRing_2460 ->
  MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.T_AlmostCommutativeRing_176 ->
  MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.T__'45'Raw'45'AlmostCommutative'10230'__354 ->
  (AgdaAny -> AgdaAny -> Maybe AgdaAny) ->
  Integer ->
  T_HNF_430 ->
  T_Normal_432 -> MAlonzo.Code.Data.Vec.Base.T_Vec_24 -> AgdaAny
d_'42'x'43'HN'8776''42'x'43'_908 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10
                                 v11
  = case coe v9 of
      C_'8709'_436
        -> case coe v11 of
             MAlonzo.Code.Data.Vec.Base.C__'8759'__36 v14 v15
               -> let v16
                        = d__'8799'N__514
                            (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5) (coe v6)
                            (coe v7) (coe v8) (coe v10) (coe du_0N_632 (coe v4) (coe v8)) in
                  case coe v16 of
                    MAlonzo.Code.Agda.Builtin.Maybe.C_just_16 v17
                      -> coe
                           MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.d_begin__40
                           (coe
                              MAlonzo.Code.Relation.Binary.Reasoning.Setoid.du_step'45''8776'_58
                              (let v18
                                     = MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d_isAlmostCommutativeRing_212
                                         (coe v5) in
                               let v19
                                     = MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d_isCommutativeSemiring_62
                                         (coe v18) in
                               let v20
                                     = MAlonzo.Code.Algebra.Structures.d_isSemiring_1358
                                         (coe v19) in
                               let v21
                                     = MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1252
                                         (coe v20) in
                               let v22
                                     = MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_1158
                                         (coe v21) in
                               let v23
                                     = MAlonzo.Code.Algebra.Structures.d_isMonoid_416 (coe v22) in
                               let v24
                                     = MAlonzo.Code.Algebra.Structures.d_isSemigroup_368
                                         (coe v23) in
                               coe
                                 MAlonzo.Code.Algebra.Structures.du_setoid_110
                                 (coe MAlonzo.Code.Algebra.Structures.d_isMagma_202 (coe v24)))
                              (MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d_0'35'_208
                                 (coe v5))
                              (d_'10214'_'10215'N_454
                                 (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5) (coe v6)
                                 (coe v7) (coe v8) (coe v10) (coe v15))
                              (coe
                                 MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d__'43'__202
                                 v5
                                 (coe
                                    MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d__'42'__204
                                    v5
                                    (MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d_0'35'_208
                                       (coe v5))
                                    v14)
                                 (d_'10214'_'10215'N_454
                                    (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5) (coe v6)
                                    (coe v7) (coe v8) (coe v10) (coe v15)))
                              (coe
                                 MAlonzo.Code.Relation.Binary.Reasoning.Setoid.du_step'45''8776'_58
                                 (let v18
                                        = MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d_isAlmostCommutativeRing_212
                                            (coe v5) in
                                  let v19
                                        = MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d_isCommutativeSemiring_62
                                            (coe v18) in
                                  let v20
                                        = MAlonzo.Code.Algebra.Structures.d_isSemiring_1358
                                            (coe v19) in
                                  let v21
                                        = MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1252
                                            (coe v20) in
                                  let v22
                                        = MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_1158
                                            (coe v21) in
                                  let v23
                                        = MAlonzo.Code.Algebra.Structures.d_isMonoid_416
                                            (coe v22) in
                                  let v24
                                        = MAlonzo.Code.Algebra.Structures.d_isSemigroup_368
                                            (coe v23) in
                                  coe
                                    MAlonzo.Code.Algebra.Structures.du_setoid_110
                                    (coe MAlonzo.Code.Algebra.Structures.d_isMagma_202 (coe v24)))
                                 (d_'10214'_'10215'N_454
                                    (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5) (coe v6)
                                    (coe v7) (coe v8) (coe v10) (coe v15))
                                 (coe
                                    MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d__'43'__202
                                    v5
                                    (coe
                                       MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d__'42'__204
                                       v5
                                       (MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d_0'35'_208
                                          (coe v5))
                                       v14)
                                    (d_'10214'_'10215'N_454
                                       (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5)
                                       (coe v6) (coe v7) (coe v8) (coe v10) (coe v15)))
                                 (coe
                                    MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d__'43'__202
                                    v5
                                    (coe
                                       MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d__'42'__204
                                       v5
                                       (MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d_0'35'_208
                                          (coe v5))
                                       v14)
                                    (d_'10214'_'10215'N_454
                                       (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5)
                                       (coe v6) (coe v7) (coe v8) (coe v10) (coe v15)))
                                 (coe
                                    MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du__'8718'_86
                                    (coe
                                       MAlonzo.Code.Relation.Binary.Structures.d_refl_34
                                       (coe
                                          MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_60
                                          (let v18
                                                 = MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d_isAlmostCommutativeRing_212
                                                     (coe v5) in
                                           let v19
                                                 = MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d_isCommutativeSemiring_62
                                                     (coe v18) in
                                           let v20
                                                 = MAlonzo.Code.Algebra.Structures.d_isSemiring_1358
                                                     (coe v19) in
                                           let v21
                                                 = MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1252
                                                     (coe v20) in
                                           let v22
                                                 = MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_1158
                                                     (coe v21) in
                                           let v23
                                                 = MAlonzo.Code.Algebra.Structures.d_isMonoid_416
                                                     (coe v22) in
                                           let v24
                                                 = MAlonzo.Code.Algebra.Structures.d_isSemigroup_368
                                                     (coe v23) in
                                           coe
                                             MAlonzo.Code.Algebra.Structures.du_setoid_110
                                             (coe
                                                MAlonzo.Code.Algebra.Structures.d_isMagma_202
                                                (coe v24)))))
                                    (coe
                                       MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d__'43'__202
                                       v5
                                       (coe
                                          MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d__'42'__204
                                          v5
                                          (MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d_0'35'_208
                                             (coe v5))
                                          v14)
                                       (d_'10214'_'10215'N_454
                                          (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5)
                                          (coe v6) (coe v7) (coe v8) (coe v10) (coe v15))))
                                 (coe
                                    MAlonzo.Code.Relation.Binary.Structures.d_sym_36
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
                                                            MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d_isCommutativeSemiring_62
                                                            (coe
                                                               MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d_isAlmostCommutativeRing_212
                                                               (coe v5))))))))))
                                    (coe
                                       MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d__'43'__202
                                       v5
                                       (coe
                                          MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d__'42'__204
                                          v5
                                          (MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d_0'35'_208
                                             (coe v5))
                                          v14)
                                       (d_'10214'_'10215'N_454
                                          (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5)
                                          (coe v6) (coe v7) (coe v8) (coe v10) (coe v15)))
                                    (d_'10214'_'10215'N_454
                                       (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5)
                                       (coe v6) (coe v7) (coe v8) (coe v10) (coe v15))
                                    (coe
                                       MAlonzo.Code.Algebra.Solver.Ring.Lemmas.du_lemma'8326'_356
                                       (coe v5)
                                       (coe
                                          d_'10214'_'10215'N_454 (coe v0) (coe v1) (coe v2) (coe v3)
                                          (coe v4) (coe v5) (coe v6) (coe v7) (coe v8) (coe v10)
                                          (coe v15))
                                       (coe v14))))
                              (d_0'8776''10214'0'10215'_882
                                 (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5) (coe v6)
                                 (coe v7) (coe v8) (coe v10) (coe v17) (coe v15)))
                    MAlonzo.Code.Agda.Builtin.Maybe.C_nothing_18
                      -> coe
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
                                                   MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d_isCommutativeSemiring_62
                                                   (coe
                                                      MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d_isAlmostCommutativeRing_212
                                                      (coe v5))))))))))
                           (d_'10214'_'10215'H_450
                              (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5) (coe v6)
                              (coe v7) (coe v8) (coe C__'42'x'43'__440 (coe C_'8709'_436) v10)
                              (coe MAlonzo.Code.Data.Vec.Base.C__'8759'__36 v14 v15))
                    _ -> MAlonzo.RTE.mazUnreachableError
             _ -> MAlonzo.RTE.mazUnreachableError
      C__'42'x'43'__440 v13 v14
        -> coe
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
                                     MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d_isCommutativeSemiring_62
                                     (coe
                                        MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d_isAlmostCommutativeRing_212
                                        (coe v5))))))))))
             (d_'10214'_'10215'H_450
                (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5) (coe v6)
                (coe v7) (coe v8)
                (coe
                   d__'42'x'43'HN__650 (coe v0) (coe v1) (coe v2) (coe v3) (coe v4)
                   (coe v5) (coe v6) (coe v7) (coe v8) (coe C__'42'x'43'__440 v13 v14)
                   (coe v10))
                (coe v11))
      _ -> MAlonzo.RTE.mazUnreachableError
-- Algebra.Solver.Ring.∅*x+HN-homo
d_'8709''42'x'43'HN'45'homo_950 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Algebra.Bundles.T_RawRing_2460 ->
  MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.T_AlmostCommutativeRing_176 ->
  MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.T__'45'Raw'45'AlmostCommutative'10230'__354 ->
  (AgdaAny -> AgdaAny -> Maybe AgdaAny) ->
  Integer ->
  T_Normal_432 ->
  AgdaAny -> MAlonzo.Code.Data.Vec.Base.T_Vec_24 -> AgdaAny
d_'8709''42'x'43'HN'45'homo_950 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10
                                v11
  = let v12
          = d__'8799'N__514
              (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5) (coe v6)
              (coe v7) (coe v8) (coe v9) (coe du_0N_632 (coe v4) (coe v8)) in
    case coe v12 of
      MAlonzo.Code.Agda.Builtin.Maybe.C_just_16 v13
        -> coe
             d_0'8776''10214'0'10215'_882 (coe v0) (coe v1) (coe v2) (coe v3)
             (coe v4) (coe v5) (coe v6) (coe v7) (coe v8) (coe v9) (coe v13)
             (coe v11)
      MAlonzo.Code.Agda.Builtin.Maybe.C_nothing_18
        -> coe
             MAlonzo.Code.Algebra.Solver.Ring.Lemmas.du_lemma'8326'_356 (coe v5)
             (coe
                d_'10214'_'10215'N_454 (coe v0) (coe v1) (coe v2) (coe v3) (coe v4)
                (coe v5) (coe v6) (coe v7) (coe v8) (coe v9) (coe v11))
             (coe v10)
      _ -> MAlonzo.RTE.mazUnreachableError
-- Algebra.Solver.Ring.+H-homo
d_'43'H'45'homo_984 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Algebra.Bundles.T_RawRing_2460 ->
  MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.T_AlmostCommutativeRing_176 ->
  MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.T__'45'Raw'45'AlmostCommutative'10230'__354 ->
  (AgdaAny -> AgdaAny -> Maybe AgdaAny) ->
  Integer ->
  T_HNF_430 ->
  T_HNF_430 -> MAlonzo.Code.Data.Vec.Base.T_Vec_24 -> AgdaAny
d_'43'H'45'homo_984 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11
  = case coe v9 of
      C_'8709'_436
        -> coe
             MAlonzo.Code.Relation.Binary.Structures.d_sym_36
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
                                     MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d_isCommutativeSemiring_62
                                     (coe
                                        MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d_isAlmostCommutativeRing_212
                                        (coe v5))))))))))
             (coe
                MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d__'43'__202
                v5
                (MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d_0'35'_208
                   (coe v5))
                (d_'10214'_'10215'H_450
                   (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5) (coe v6)
                   (coe v7) (coe v8)
                   (coe
                      d__'43'H__672 (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5)
                      (coe v6) (coe v7) (coe v8) (coe C_'8709'_436) (coe v10))
                   (coe v11)))
             (d_'10214'_'10215'H_450
                (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5) (coe v6)
                (coe v7) (coe v8)
                (coe
                   d__'43'H__672 (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5)
                   (coe v6) (coe v7) (coe v8) (coe C_'8709'_436) (coe v10))
                (coe v11))
             (let v13
                    = MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d_isAlmostCommutativeRing_212
                        (coe v5) in
              let v14
                    = MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d_isCommutativeSemiring_62
                        (coe v13) in
              let v15
                    = MAlonzo.Code.Algebra.Structures.d_isSemiring_1358 (coe v14) in
              let v16
                    = MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1252
                        (coe v15) in
              let v17
                    = MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_1158
                        (coe v16) in
              coe
                MAlonzo.Code.Algebra.Structures.du_identity'737'_398
                (MAlonzo.Code.Algebra.Structures.d_isMonoid_416 (coe v17))
                (d_'10214'_'10215'H_450
                   (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5) (coe v6)
                   (coe v7) (coe v8)
                   (coe
                      d__'43'H__672 (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5)
                      (coe v6) (coe v7) (coe v8) (coe C_'8709'_436) (coe v10))
                   (coe v11)))
      C__'42'x'43'__440 v13 v14
        -> case coe v10 of
             C_'8709'_436
               -> coe
                    MAlonzo.Code.Relation.Binary.Structures.d_sym_36
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
                                            MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d_isCommutativeSemiring_62
                                            (coe
                                               MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d_isAlmostCommutativeRing_212
                                               (coe v5))))))))))
                    (coe
                       MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d__'43'__202
                       v5
                       (d_'10214'_'10215'H_450
                          (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5) (coe v6)
                          (coe v7) (coe v8)
                          (coe
                             d__'43'H__672 (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5)
                             (coe v6) (coe v7) (coe v8) (coe C__'42'x'43'__440 v13 v14)
                             (coe C_'8709'_436))
                          (coe v11))
                       (MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d_0'35'_208
                          (coe v5)))
                    (d_'10214'_'10215'H_450
                       (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5) (coe v6)
                       (coe v7) (coe v8)
                       (coe
                          d__'43'H__672 (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5)
                          (coe v6) (coe v7) (coe v8) (coe C__'42'x'43'__440 v13 v14)
                          (coe C_'8709'_436))
                       (coe v11))
                    (let v16
                           = MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d_isAlmostCommutativeRing_212
                               (coe v5) in
                     let v17
                           = MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d_isCommutativeSemiring_62
                               (coe v16) in
                     let v18
                           = MAlonzo.Code.Algebra.Structures.d_isSemiring_1358 (coe v17) in
                     let v19
                           = MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1252
                               (coe v18) in
                     let v20
                           = MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_1158
                               (coe v19) in
                     coe
                       MAlonzo.Code.Algebra.Structures.du_identity'691'_400
                       (MAlonzo.Code.Algebra.Structures.d_isMonoid_416 (coe v20))
                       (d_'10214'_'10215'H_450
                          (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5) (coe v6)
                          (coe v7) (coe v8)
                          (coe
                             d__'43'H__672 (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5)
                             (coe v6) (coe v7) (coe v8) (coe C__'42'x'43'__440 v13 v14)
                             (coe C_'8709'_436))
                          (coe v11)))
             C__'42'x'43'__440 v16 v17
               -> case coe v11 of
                    MAlonzo.Code.Data.Vec.Base.C__'8759'__36 v19 v20
                      -> coe
                           MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.d_begin__40
                           (coe
                              MAlonzo.Code.Relation.Binary.Reasoning.Setoid.du_step'45''8776'_58
                              (let v21
                                     = MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d_isAlmostCommutativeRing_212
                                         (coe v5) in
                               let v22
                                     = MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d_isCommutativeSemiring_62
                                         (coe v21) in
                               let v23
                                     = MAlonzo.Code.Algebra.Structures.d_isSemiring_1358
                                         (coe v22) in
                               let v24
                                     = MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1252
                                         (coe v23) in
                               let v25
                                     = MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_1158
                                         (coe v24) in
                               let v26
                                     = MAlonzo.Code.Algebra.Structures.d_isMonoid_416 (coe v25) in
                               let v27
                                     = MAlonzo.Code.Algebra.Structures.d_isSemigroup_368
                                         (coe v26) in
                               coe
                                 MAlonzo.Code.Algebra.Structures.du_setoid_110
                                 (coe MAlonzo.Code.Algebra.Structures.d_isMagma_202 (coe v27)))
                              (d_'10214'_'10215'H_450
                                 (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5) (coe v6)
                                 (coe v7) (coe v8)
                                 (coe
                                    d__'42'x'43'HN__650 (coe v0) (coe v1) (coe v2) (coe v3) (coe v4)
                                    (coe v5) (coe v6) (coe v7) (coe v8)
                                    (coe
                                       d__'43'H__672 (coe v0) (coe v1) (coe v2) (coe v3) (coe v4)
                                       (coe v5) (coe v6) (coe v7) (coe v8) (coe v13) (coe v16))
                                    (coe
                                       d__'43'N__676 (coe v0) (coe v1) (coe v2) (coe v3) (coe v4)
                                       (coe v5) (coe v6) (coe v7) (coe v8) (coe v14) (coe v17)))
                                 (coe MAlonzo.Code.Data.Vec.Base.C__'8759'__36 v19 v20))
                              (coe
                                 MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d__'43'__202
                                 v5
                                 (coe
                                    MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d__'42'__204
                                    v5
                                    (d_'10214'_'10215'H_450
                                       (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5)
                                       (coe v6) (coe v7) (coe v8)
                                       (coe
                                          d__'43'H__672 (coe v0) (coe v1) (coe v2) (coe v3) (coe v4)
                                          (coe v5) (coe v6) (coe v7) (coe v8) (coe v13) (coe v16))
                                       (coe MAlonzo.Code.Data.Vec.Base.C__'8759'__36 v19 v20))
                                    v19)
                                 (d_'10214'_'10215'N_454
                                    (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5) (coe v6)
                                    (coe v7) (coe v8)
                                    (coe
                                       d__'43'N__676 (coe v0) (coe v1) (coe v2) (coe v3) (coe v4)
                                       (coe v5) (coe v6) (coe v7) (coe v8) (coe v14) (coe v17))
                                    (coe v20)))
                              (coe
                                 MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d__'43'__202
                                 v5
                                 (coe
                                    MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d__'43'__202
                                    v5
                                    (coe
                                       MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d__'42'__204
                                       v5
                                       (d_'10214'_'10215'H_450
                                          (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5)
                                          (coe v6) (coe v7) (coe v8) (coe v13)
                                          (coe MAlonzo.Code.Data.Vec.Base.C__'8759'__36 v19 v20))
                                       v19)
                                    (d_'10214'_'10215'N_454
                                       (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5)
                                       (coe v6) (coe v7) (coe v8) (coe v14) (coe v20)))
                                 (coe
                                    MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d__'43'__202
                                    v5
                                    (coe
                                       MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d__'42'__204
                                       v5
                                       (d_'10214'_'10215'H_450
                                          (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5)
                                          (coe v6) (coe v7) (coe v8) (coe v16)
                                          (coe MAlonzo.Code.Data.Vec.Base.C__'8759'__36 v19 v20))
                                       v19)
                                    (d_'10214'_'10215'N_454
                                       (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5)
                                       (coe v6) (coe v7) (coe v8) (coe v17) (coe v20))))
                              (coe
                                 MAlonzo.Code.Relation.Binary.Reasoning.Setoid.du_step'45''8776'_58
                                 (let v21
                                        = MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d_isAlmostCommutativeRing_212
                                            (coe v5) in
                                  let v22
                                        = MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d_isCommutativeSemiring_62
                                            (coe v21) in
                                  let v23
                                        = MAlonzo.Code.Algebra.Structures.d_isSemiring_1358
                                            (coe v22) in
                                  let v24
                                        = MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1252
                                            (coe v23) in
                                  let v25
                                        = MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_1158
                                            (coe v24) in
                                  let v26
                                        = MAlonzo.Code.Algebra.Structures.d_isMonoid_416
                                            (coe v25) in
                                  let v27
                                        = MAlonzo.Code.Algebra.Structures.d_isSemigroup_368
                                            (coe v26) in
                                  coe
                                    MAlonzo.Code.Algebra.Structures.du_setoid_110
                                    (coe MAlonzo.Code.Algebra.Structures.d_isMagma_202 (coe v27)))
                                 (coe
                                    MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d__'43'__202
                                    v5
                                    (coe
                                       MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d__'42'__204
                                       v5
                                       (d_'10214'_'10215'H_450
                                          (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5)
                                          (coe v6) (coe v7) (coe v8)
                                          (coe
                                             d__'43'H__672 (coe v0) (coe v1) (coe v2) (coe v3)
                                             (coe v4) (coe v5) (coe v6) (coe v7) (coe v8) (coe v13)
                                             (coe v16))
                                          (coe MAlonzo.Code.Data.Vec.Base.C__'8759'__36 v19 v20))
                                       v19)
                                    (d_'10214'_'10215'N_454
                                       (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5)
                                       (coe v6) (coe v7) (coe v8)
                                       (coe
                                          d__'43'N__676 (coe v0) (coe v1) (coe v2) (coe v3) (coe v4)
                                          (coe v5) (coe v6) (coe v7) (coe v8) (coe v14) (coe v17))
                                       (coe v20)))
                                 (coe
                                    MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d__'43'__202
                                    v5
                                    (coe
                                       MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d__'42'__204
                                       v5
                                       (coe
                                          MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d__'43'__202
                                          v5
                                          (d_'10214'_'10215'H_450
                                             (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5)
                                             (coe v6) (coe v7) (coe v8) (coe v13)
                                             (coe MAlonzo.Code.Data.Vec.Base.C__'8759'__36 v19 v20))
                                          (d_'10214'_'10215'H_450
                                             (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5)
                                             (coe v6) (coe v7) (coe v8) (coe v16)
                                             (coe
                                                MAlonzo.Code.Data.Vec.Base.C__'8759'__36 v19 v20)))
                                       v19)
                                    (coe
                                       MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d__'43'__202
                                       v5
                                       (d_'10214'_'10215'N_454
                                          (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5)
                                          (coe v6) (coe v7) (coe v8) (coe v14) (coe v20))
                                       (d_'10214'_'10215'N_454
                                          (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5)
                                          (coe v6) (coe v7) (coe v8) (coe v17) (coe v20))))
                                 (coe
                                    MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d__'43'__202
                                    v5
                                    (coe
                                       MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d__'43'__202
                                       v5
                                       (coe
                                          MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d__'42'__204
                                          v5
                                          (d_'10214'_'10215'H_450
                                             (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5)
                                             (coe v6) (coe v7) (coe v8) (coe v13)
                                             (coe MAlonzo.Code.Data.Vec.Base.C__'8759'__36 v19 v20))
                                          v19)
                                       (d_'10214'_'10215'N_454
                                          (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5)
                                          (coe v6) (coe v7) (coe v8) (coe v14) (coe v20)))
                                    (coe
                                       MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d__'43'__202
                                       v5
                                       (coe
                                          MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d__'42'__204
                                          v5
                                          (d_'10214'_'10215'H_450
                                             (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5)
                                             (coe v6) (coe v7) (coe v8) (coe v16)
                                             (coe MAlonzo.Code.Data.Vec.Base.C__'8759'__36 v19 v20))
                                          v19)
                                       (d_'10214'_'10215'N_454
                                          (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5)
                                          (coe v6) (coe v7) (coe v8) (coe v17) (coe v20))))
                                 (coe
                                    MAlonzo.Code.Relation.Binary.Reasoning.Setoid.du_step'45''8776'_58
                                    (let v21
                                           = MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d_isAlmostCommutativeRing_212
                                               (coe v5) in
                                     let v22
                                           = MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d_isCommutativeSemiring_62
                                               (coe v21) in
                                     let v23
                                           = MAlonzo.Code.Algebra.Structures.d_isSemiring_1358
                                               (coe v22) in
                                     let v24
                                           = MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1252
                                               (coe v23) in
                                     let v25
                                           = MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_1158
                                               (coe v24) in
                                     let v26
                                           = MAlonzo.Code.Algebra.Structures.d_isMonoid_416
                                               (coe v25) in
                                     let v27
                                           = MAlonzo.Code.Algebra.Structures.d_isSemigroup_368
                                               (coe v26) in
                                     coe
                                       MAlonzo.Code.Algebra.Structures.du_setoid_110
                                       (coe
                                          MAlonzo.Code.Algebra.Structures.d_isMagma_202 (coe v27)))
                                    (coe
                                       MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d__'43'__202
                                       v5
                                       (coe
                                          MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d__'42'__204
                                          v5
                                          (coe
                                             MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d__'43'__202
                                             v5
                                             (d_'10214'_'10215'H_450
                                                (coe v0) (coe v1) (coe v2) (coe v3) (coe v4)
                                                (coe v5) (coe v6) (coe v7) (coe v8) (coe v13)
                                                (coe
                                                   MAlonzo.Code.Data.Vec.Base.C__'8759'__36 v19
                                                   v20))
                                             (d_'10214'_'10215'H_450
                                                (coe v0) (coe v1) (coe v2) (coe v3) (coe v4)
                                                (coe v5) (coe v6) (coe v7) (coe v8) (coe v16)
                                                (coe
                                                   MAlonzo.Code.Data.Vec.Base.C__'8759'__36 v19
                                                   v20)))
                                          v19)
                                       (coe
                                          MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d__'43'__202
                                          v5
                                          (d_'10214'_'10215'N_454
                                             (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5)
                                             (coe v6) (coe v7) (coe v8) (coe v14) (coe v20))
                                          (d_'10214'_'10215'N_454
                                             (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5)
                                             (coe v6) (coe v7) (coe v8) (coe v17) (coe v20))))
                                    (coe
                                       MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d__'43'__202
                                       v5
                                       (coe
                                          MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d__'43'__202
                                          v5
                                          (coe
                                             MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d__'42'__204
                                             v5
                                             (d_'10214'_'10215'H_450
                                                (coe v0) (coe v1) (coe v2) (coe v3) (coe v4)
                                                (coe v5) (coe v6) (coe v7) (coe v8) (coe v13)
                                                (coe
                                                   MAlonzo.Code.Data.Vec.Base.C__'8759'__36 v19
                                                   v20))
                                             v19)
                                          (d_'10214'_'10215'N_454
                                             (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5)
                                             (coe v6) (coe v7) (coe v8) (coe v14) (coe v20)))
                                       (coe
                                          MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d__'43'__202
                                          v5
                                          (coe
                                             MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d__'42'__204
                                             v5
                                             (d_'10214'_'10215'H_450
                                                (coe v0) (coe v1) (coe v2) (coe v3) (coe v4)
                                                (coe v5) (coe v6) (coe v7) (coe v8) (coe v16)
                                                (coe
                                                   MAlonzo.Code.Data.Vec.Base.C__'8759'__36 v19
                                                   v20))
                                             v19)
                                          (d_'10214'_'10215'N_454
                                             (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5)
                                             (coe v6) (coe v7) (coe v8) (coe v17) (coe v20))))
                                    (coe
                                       MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d__'43'__202
                                       v5
                                       (coe
                                          MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d__'43'__202
                                          v5
                                          (coe
                                             MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d__'42'__204
                                             v5
                                             (d_'10214'_'10215'H_450
                                                (coe v0) (coe v1) (coe v2) (coe v3) (coe v4)
                                                (coe v5) (coe v6) (coe v7) (coe v8) (coe v13)
                                                (coe
                                                   MAlonzo.Code.Data.Vec.Base.C__'8759'__36 v19
                                                   v20))
                                             v19)
                                          (d_'10214'_'10215'N_454
                                             (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5)
                                             (coe v6) (coe v7) (coe v8) (coe v14) (coe v20)))
                                       (coe
                                          MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d__'43'__202
                                          v5
                                          (coe
                                             MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d__'42'__204
                                             v5
                                             (d_'10214'_'10215'H_450
                                                (coe v0) (coe v1) (coe v2) (coe v3) (coe v4)
                                                (coe v5) (coe v6) (coe v7) (coe v8) (coe v16)
                                                (coe
                                                   MAlonzo.Code.Data.Vec.Base.C__'8759'__36 v19
                                                   v20))
                                             v19)
                                          (d_'10214'_'10215'N_454
                                             (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5)
                                             (coe v6) (coe v7) (coe v8) (coe v17) (coe v20))))
                                    (coe
                                       MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du__'8718'_86
                                       (coe
                                          MAlonzo.Code.Relation.Binary.Structures.d_refl_34
                                          (coe
                                             MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_60
                                             (let v21
                                                    = MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d_isAlmostCommutativeRing_212
                                                        (coe v5) in
                                              let v22
                                                    = MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d_isCommutativeSemiring_62
                                                        (coe v21) in
                                              let v23
                                                    = MAlonzo.Code.Algebra.Structures.d_isSemiring_1358
                                                        (coe v22) in
                                              let v24
                                                    = MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1252
                                                        (coe v23) in
                                              let v25
                                                    = MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_1158
                                                        (coe v24) in
                                              let v26
                                                    = MAlonzo.Code.Algebra.Structures.d_isMonoid_416
                                                        (coe v25) in
                                              let v27
                                                    = MAlonzo.Code.Algebra.Structures.d_isSemigroup_368
                                                        (coe v26) in
                                              coe
                                                MAlonzo.Code.Algebra.Structures.du_setoid_110
                                                (coe
                                                   MAlonzo.Code.Algebra.Structures.d_isMagma_202
                                                   (coe v27)))))
                                       (coe
                                          MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d__'43'__202
                                          v5
                                          (coe
                                             MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d__'43'__202
                                             v5
                                             (coe
                                                MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d__'42'__204
                                                v5
                                                (d_'10214'_'10215'H_450
                                                   (coe v0) (coe v1) (coe v2) (coe v3) (coe v4)
                                                   (coe v5) (coe v6) (coe v7) (coe v8) (coe v13)
                                                   (coe
                                                      MAlonzo.Code.Data.Vec.Base.C__'8759'__36 v19
                                                      v20))
                                                v19)
                                             (d_'10214'_'10215'N_454
                                                (coe v0) (coe v1) (coe v2) (coe v3) (coe v4)
                                                (coe v5) (coe v6) (coe v7) (coe v8) (coe v14)
                                                (coe v20)))
                                          (coe
                                             MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d__'43'__202
                                             v5
                                             (coe
                                                MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d__'42'__204
                                                v5
                                                (d_'10214'_'10215'H_450
                                                   (coe v0) (coe v1) (coe v2) (coe v3) (coe v4)
                                                   (coe v5) (coe v6) (coe v7) (coe v8) (coe v16)
                                                   (coe
                                                      MAlonzo.Code.Data.Vec.Base.C__'8759'__36 v19
                                                      v20))
                                                v19)
                                             (d_'10214'_'10215'N_454
                                                (coe v0) (coe v1) (coe v2) (coe v3) (coe v4)
                                                (coe v5) (coe v6) (coe v7) (coe v8) (coe v17)
                                                (coe v20)))))
                                    (coe
                                       MAlonzo.Code.Algebra.Solver.Ring.Lemmas.du_lemma'8321'_260
                                       (coe v5)
                                       (coe
                                          d_'10214'_'10215'H_450 (coe v0) (coe v1) (coe v2) (coe v3)
                                          (coe v4) (coe v5) (coe v6) (coe v7) (coe v8) (coe v13)
                                          (coe MAlonzo.Code.Data.Vec.Base.C__'8759'__36 v19 v20))
                                       (coe
                                          d_'10214'_'10215'H_450 (coe v0) (coe v1) (coe v2) (coe v3)
                                          (coe v4) (coe v5) (coe v6) (coe v7) (coe v8) (coe v16)
                                          (coe MAlonzo.Code.Data.Vec.Base.C__'8759'__36 v19 v20))
                                       (coe
                                          d_'10214'_'10215'N_454 (coe v0) (coe v1) (coe v2) (coe v3)
                                          (coe v4) (coe v5) (coe v6) (coe v7) (coe v8) (coe v14)
                                          (coe v20))
                                       (coe
                                          d_'10214'_'10215'N_454 (coe v0) (coe v1) (coe v2) (coe v3)
                                          (coe v4) (coe v5) (coe v6) (coe v7) (coe v8) (coe v17)
                                          (coe v20))
                                       (coe v19)))
                                 (coe
                                    MAlonzo.Code.Function.Base.du__'10216'_'10217'__250
                                    (coe
                                       MAlonzo.Code.Function.Base.du__'10216'_'10217'__250
                                       (coe
                                          d_'43'H'45'homo_984 (coe v0) (coe v1) (coe v2) (coe v3)
                                          (coe v4) (coe v5) (coe v6) (coe v7) (coe v8) (coe v13)
                                          (coe v16)
                                          (coe MAlonzo.Code.Data.Vec.Base.C__'8759'__36 v19 v20))
                                       (coe
                                          MAlonzo.Code.Algebra.Structures.d_'8729''45'cong_96
                                          (MAlonzo.Code.Algebra.Structures.d_isMagma_202
                                             (coe
                                                MAlonzo.Code.Algebra.Structures.d_isSemigroup_368
                                                (coe
                                                   MAlonzo.Code.Algebra.Structures.d_'42''45'isMonoid_1160
                                                   (coe
                                                      MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1252
                                                      (coe
                                                         MAlonzo.Code.Algebra.Structures.d_isSemiring_1358
                                                         (coe
                                                            MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d_isCommutativeSemiring_62
                                                            (coe
                                                               MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d_isAlmostCommutativeRing_212
                                                               (coe v5))))))))
                                          (d_'10214'_'10215'H_450
                                             (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5)
                                             (coe v6) (coe v7) (coe v8)
                                             (coe
                                                d__'43'H__672 (coe v0) (coe v1) (coe v2) (coe v3)
                                                (coe v4) (coe v5) (coe v6) (coe v7) (coe v8)
                                                (coe v13) (coe v16))
                                             (coe MAlonzo.Code.Data.Vec.Base.C__'8759'__36 v19 v20))
                                          (coe
                                             MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d__'43'__202
                                             v5
                                             (d_'10214'_'10215'H_450
                                                (coe v0) (coe v1) (coe v2) (coe v3) (coe v4)
                                                (coe v5) (coe v6) (coe v7) (coe v8) (coe v13)
                                                (coe
                                                   MAlonzo.Code.Data.Vec.Base.C__'8759'__36 v19
                                                   v20))
                                             (d_'10214'_'10215'H_450
                                                (coe v0) (coe v1) (coe v2) (coe v3) (coe v4)
                                                (coe v5) (coe v6) (coe v7) (coe v8) (coe v16)
                                                (coe
                                                   MAlonzo.Code.Data.Vec.Base.C__'8759'__36 v19
                                                   v20)))
                                          v19 v19)
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
                                                                  MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d_isCommutativeSemiring_62
                                                                  (coe
                                                                     MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d_isAlmostCommutativeRing_212
                                                                     (coe v5))))))))))
                                          v19))
                                    (coe
                                       MAlonzo.Code.Algebra.Structures.d_'8729''45'cong_96
                                       (MAlonzo.Code.Algebra.Structures.d_isMagma_202
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
                                                            MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d_isCommutativeSemiring_62
                                                            (coe
                                                               MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d_isAlmostCommutativeRing_212
                                                               (coe v5)))))))))
                                       (coe
                                          MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d__'42'__204
                                          v5
                                          (d_'10214'_'10215'H_450
                                             (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5)
                                             (coe v6) (coe v7) (coe v8)
                                             (coe
                                                d__'43'H__672 (coe v0) (coe v1) (coe v2) (coe v3)
                                                (coe v4) (coe v5) (coe v6) (coe v7) (coe v8)
                                                (coe v13) (coe v16))
                                             (coe MAlonzo.Code.Data.Vec.Base.C__'8759'__36 v19 v20))
                                          v19)
                                       (coe
                                          MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d__'42'__204
                                          v5
                                          (coe
                                             MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d__'43'__202
                                             v5
                                             (d_'10214'_'10215'H_450
                                                (coe v0) (coe v1) (coe v2) (coe v3) (coe v4)
                                                (coe v5) (coe v6) (coe v7) (coe v8) (coe v13)
                                                (coe
                                                   MAlonzo.Code.Data.Vec.Base.C__'8759'__36 v19
                                                   v20))
                                             (d_'10214'_'10215'H_450
                                                (coe v0) (coe v1) (coe v2) (coe v3) (coe v4)
                                                (coe v5) (coe v6) (coe v7) (coe v8) (coe v16)
                                                (coe
                                                   MAlonzo.Code.Data.Vec.Base.C__'8759'__36 v19
                                                   v20)))
                                          v19)
                                       (d_'10214'_'10215'N_454
                                          (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5)
                                          (coe v6) (coe v7) (coe v8)
                                          (coe
                                             d__'43'N__676 (coe v0) (coe v1) (coe v2) (coe v3)
                                             (coe v4) (coe v5) (coe v6) (coe v7) (coe v8) (coe v14)
                                             (coe v17))
                                          (coe v20))
                                       (coe
                                          MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d__'43'__202
                                          v5
                                          (d_'10214'_'10215'N_454
                                             (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5)
                                             (coe v6) (coe v7) (coe v8) (coe v14) (coe v20))
                                          (d_'10214'_'10215'N_454
                                             (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5)
                                             (coe v6) (coe v7) (coe v8) (coe v17) (coe v20))))
                                    (coe
                                       d_'43'N'45'homo_994 (coe v0) (coe v1) (coe v2) (coe v3)
                                       (coe v4) (coe v5) (coe v6) (coe v7) (coe v8) (coe v14)
                                       (coe v17) (coe v20))))
                              (d_'42'x'43'HN'8776''42'x'43'_908
                                 (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5) (coe v6)
                                 (coe v7) (coe v8)
                                 (coe
                                    d__'43'H__672 (coe v0) (coe v1) (coe v2) (coe v3) (coe v4)
                                    (coe v5) (coe v6) (coe v7) (coe v8) (coe v13) (coe v16))
                                 (coe
                                    d__'43'N__676 (coe v0) (coe v1) (coe v2) (coe v3) (coe v4)
                                    (coe v5) (coe v6) (coe v7) (coe v8) (coe v14) (coe v17))
                                 (coe MAlonzo.Code.Data.Vec.Base.C__'8759'__36 v19 v20)))
                    _ -> MAlonzo.RTE.mazUnreachableError
             _ -> MAlonzo.RTE.mazUnreachableError
      _ -> MAlonzo.RTE.mazUnreachableError
-- Algebra.Solver.Ring.+N-homo
d_'43'N'45'homo_994 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Algebra.Bundles.T_RawRing_2460 ->
  MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.T_AlmostCommutativeRing_176 ->
  MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.T__'45'Raw'45'AlmostCommutative'10230'__354 ->
  (AgdaAny -> AgdaAny -> Maybe AgdaAny) ->
  Integer ->
  T_Normal_432 ->
  T_Normal_432 -> MAlonzo.Code.Data.Vec.Base.T_Vec_24 -> AgdaAny
d_'43'N'45'homo_994 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11
  = case coe v9 of
      C_con_442 v12
        -> case coe v10 of
             C_con_442 v13
               -> coe
                    MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d_'43''45'homo_746
                    v6 v12 v13
             _ -> MAlonzo.RTE.mazUnreachableError
      C_poly_446 v13
        -> let v14 = subInt (coe v8) (coe (1 :: Integer)) in
           case coe v10 of
             C_poly_446 v16
               -> coe
                    d_'43'H'45'homo_984 (coe v0) (coe v1) (coe v2) (coe v3) (coe v4)
                    (coe v5) (coe v6) (coe v7) (coe v14) (coe v13) (coe v16) (coe v11)
             _ -> MAlonzo.RTE.mazUnreachableError
      _ -> MAlonzo.RTE.mazUnreachableError
-- Algebra.Solver.Ring.*x+H-homo
d_'42'x'43'H'45'homo_1038 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Algebra.Bundles.T_RawRing_2460 ->
  MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.T_AlmostCommutativeRing_176 ->
  MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.T__'45'Raw'45'AlmostCommutative'10230'__354 ->
  (AgdaAny -> AgdaAny -> Maybe AgdaAny) ->
  Integer ->
  T_HNF_430 ->
  T_HNF_430 ->
  AgdaAny -> MAlonzo.Code.Data.Vec.Base.T_Vec_24 -> AgdaAny
d_'42'x'43'H'45'homo_1038 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12
  = case coe v9 of
      C_'8709'_436
        -> case coe v10 of
             C_'8709'_436
               -> coe
                    MAlonzo.Code.Relation.Binary.Structures.d_sym_36
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
                                            MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d_isCommutativeSemiring_62
                                            (coe
                                               MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d_isAlmostCommutativeRing_212
                                               (coe v5))))))))))
                    (coe
                       MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d__'43'__202
                       v5
                       (coe
                          MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d__'42'__204
                          v5
                          (MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d_0'35'_208
                             (coe v5))
                          v11)
                       (d_'10214'_'10215'H_450
                          (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5) (coe v6)
                          (coe v7) (coe v8)
                          (coe
                             d__'42'x'43'H__700 (coe v0) (coe v1) (coe v2) (coe v3) (coe v4)
                             (coe v5) (coe v6) (coe v7) (coe v8) (coe C_'8709'_436)
                             (coe C_'8709'_436))
                          (coe MAlonzo.Code.Data.Vec.Base.C__'8759'__36 v11 v12)))
                    (d_'10214'_'10215'H_450
                       (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5) (coe v6)
                       (coe v7) (coe v8)
                       (coe
                          d__'42'x'43'H__700 (coe v0) (coe v1) (coe v2) (coe v3) (coe v4)
                          (coe v5) (coe v6) (coe v7) (coe v8) (coe C_'8709'_436)
                          (coe C_'8709'_436))
                       (coe MAlonzo.Code.Data.Vec.Base.C__'8759'__36 v11 v12))
                    (coe
                       MAlonzo.Code.Algebra.Solver.Ring.Lemmas.du_lemma'8326'_356 (coe v5)
                       (coe
                          d_'10214'_'10215'H_450 (coe v0) (coe v1) (coe v2) (coe v3) (coe v4)
                          (coe v5) (coe v6) (coe v7) (coe v8)
                          (coe
                             d__'42'x'43'H__700 (coe v0) (coe v1) (coe v2) (coe v3) (coe v4)
                             (coe v5) (coe v6) (coe v7) (coe v8) (coe C_'8709'_436)
                             (coe C_'8709'_436))
                          (coe MAlonzo.Code.Data.Vec.Base.C__'8759'__36 v11 v12))
                       (coe v11))
             C__'42'x'43'__440 v15 v16
               -> coe
                    MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.d_begin__40
                    (coe
                       MAlonzo.Code.Relation.Binary.Reasoning.Setoid.du_step'45''8776'_58
                       (let v17
                              = MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d_isAlmostCommutativeRing_212
                                  (coe v5) in
                        let v18
                              = MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d_isCommutativeSemiring_62
                                  (coe v17) in
                        let v19
                              = MAlonzo.Code.Algebra.Structures.d_isSemiring_1358 (coe v18) in
                        let v20
                              = MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1252
                                  (coe v19) in
                        let v21
                              = MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_1158
                                  (coe v20) in
                        let v22
                              = MAlonzo.Code.Algebra.Structures.d_isMonoid_416 (coe v21) in
                        let v23
                              = MAlonzo.Code.Algebra.Structures.d_isSemigroup_368 (coe v22) in
                        coe
                          MAlonzo.Code.Algebra.Structures.du_setoid_110
                          (coe MAlonzo.Code.Algebra.Structures.d_isMagma_202 (coe v23)))
                       (d_'10214'_'10215'H_450
                          (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5) (coe v6)
                          (coe v7) (coe v8)
                          (coe
                             d__'42'x'43'HN__650 (coe v0) (coe v1) (coe v2) (coe v3) (coe v4)
                             (coe v5) (coe v6) (coe v7) (coe v8)
                             (coe
                                d__'43'H__672 (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5)
                                (coe v6) (coe v7) (coe v8) (coe C_'8709'_436) (coe v15))
                             (coe v16))
                          (coe MAlonzo.Code.Data.Vec.Base.C__'8759'__36 v11 v12))
                       (coe
                          MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d__'43'__202
                          v5
                          (coe
                             MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d__'42'__204
                             v5
                             (d_'10214'_'10215'H_450
                                (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5) (coe v6)
                                (coe v7) (coe v8)
                                (coe
                                   d__'43'H__672 (coe v0) (coe v1) (coe v2) (coe v3) (coe v4)
                                   (coe v5) (coe v6) (coe v7) (coe v8) (coe C_'8709'_436) (coe v15))
                                (coe MAlonzo.Code.Data.Vec.Base.C__'8759'__36 v11 v12))
                             v11)
                          (d_'10214'_'10215'N_454
                             (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5) (coe v6)
                             (coe v7) (coe v8) (coe v16) (coe v12)))
                       (coe
                          MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d__'43'__202
                          v5
                          (coe
                             MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d__'42'__204
                             v5
                             (d_'10214'_'10215'H_450
                                (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5) (coe v6)
                                (coe v7) (coe v8) (coe C_'8709'_436)
                                (coe MAlonzo.Code.Data.Vec.Base.C__'8759'__36 v11 v12))
                             v11)
                          (coe
                             MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d__'43'__202
                             v5
                             (coe
                                MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d__'42'__204
                                v5
                                (d_'10214'_'10215'H_450
                                   (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5) (coe v6)
                                   (coe v7) (coe v8) (coe v15)
                                   (coe MAlonzo.Code.Data.Vec.Base.C__'8759'__36 v11 v12))
                                v11)
                             (d_'10214'_'10215'N_454
                                (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5) (coe v6)
                                (coe v7) (coe v8) (coe v16) (coe v12))))
                       (coe
                          MAlonzo.Code.Relation.Binary.Reasoning.Setoid.du_step'45''8776'_58
                          (let v17
                                 = MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d_isAlmostCommutativeRing_212
                                     (coe v5) in
                           let v18
                                 = MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d_isCommutativeSemiring_62
                                     (coe v17) in
                           let v19
                                 = MAlonzo.Code.Algebra.Structures.d_isSemiring_1358 (coe v18) in
                           let v20
                                 = MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1252
                                     (coe v19) in
                           let v21
                                 = MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_1158
                                     (coe v20) in
                           let v22
                                 = MAlonzo.Code.Algebra.Structures.d_isMonoid_416 (coe v21) in
                           let v23
                                 = MAlonzo.Code.Algebra.Structures.d_isSemigroup_368 (coe v22) in
                           coe
                             MAlonzo.Code.Algebra.Structures.du_setoid_110
                             (coe MAlonzo.Code.Algebra.Structures.d_isMagma_202 (coe v23)))
                          (coe
                             MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d__'43'__202
                             v5
                             (coe
                                MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d__'42'__204
                                v5
                                (d_'10214'_'10215'H_450
                                   (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5) (coe v6)
                                   (coe v7) (coe v8)
                                   (coe
                                      d__'43'H__672 (coe v0) (coe v1) (coe v2) (coe v3) (coe v4)
                                      (coe v5) (coe v6) (coe v7) (coe v8) (coe C_'8709'_436)
                                      (coe v15))
                                   (coe MAlonzo.Code.Data.Vec.Base.C__'8759'__36 v11 v12))
                                v11)
                             (d_'10214'_'10215'N_454
                                (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5) (coe v6)
                                (coe v7) (coe v8) (coe v16) (coe v12)))
                          (coe
                             MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d__'43'__202
                             v5
                             (coe
                                MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d__'42'__204
                                v5
                                (coe
                                   MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d__'43'__202
                                   v5
                                   (d_'10214'_'10215'H_450
                                      (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5) (coe v6)
                                      (coe v7) (coe v8) (coe C_'8709'_436)
                                      (coe MAlonzo.Code.Data.Vec.Base.C__'8759'__36 v11 v12))
                                   (d_'10214'_'10215'H_450
                                      (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5) (coe v6)
                                      (coe v7) (coe v8) (coe v15)
                                      (coe MAlonzo.Code.Data.Vec.Base.C__'8759'__36 v11 v12)))
                                v11)
                             (d_'10214'_'10215'N_454
                                (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5) (coe v6)
                                (coe v7) (coe v8) (coe v16) (coe v12)))
                          (coe
                             MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d__'43'__202
                             v5
                             (coe
                                MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d__'42'__204
                                v5
                                (d_'10214'_'10215'H_450
                                   (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5) (coe v6)
                                   (coe v7) (coe v8) (coe C_'8709'_436)
                                   (coe MAlonzo.Code.Data.Vec.Base.C__'8759'__36 v11 v12))
                                v11)
                             (coe
                                MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d__'43'__202
                                v5
                                (coe
                                   MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d__'42'__204
                                   v5
                                   (d_'10214'_'10215'H_450
                                      (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5) (coe v6)
                                      (coe v7) (coe v8) (coe v15)
                                      (coe MAlonzo.Code.Data.Vec.Base.C__'8759'__36 v11 v12))
                                   v11)
                                (d_'10214'_'10215'N_454
                                   (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5) (coe v6)
                                   (coe v7) (coe v8) (coe v16) (coe v12))))
                          (coe
                             MAlonzo.Code.Relation.Binary.Reasoning.Setoid.du_step'45''8776'_58
                             (let v17
                                    = MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d_isAlmostCommutativeRing_212
                                        (coe v5) in
                              let v18
                                    = MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d_isCommutativeSemiring_62
                                        (coe v17) in
                              let v19
                                    = MAlonzo.Code.Algebra.Structures.d_isSemiring_1358 (coe v18) in
                              let v20
                                    = MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1252
                                        (coe v19) in
                              let v21
                                    = MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_1158
                                        (coe v20) in
                              let v22
                                    = MAlonzo.Code.Algebra.Structures.d_isMonoid_416 (coe v21) in
                              let v23
                                    = MAlonzo.Code.Algebra.Structures.d_isSemigroup_368 (coe v22) in
                              coe
                                MAlonzo.Code.Algebra.Structures.du_setoid_110
                                (coe MAlonzo.Code.Algebra.Structures.d_isMagma_202 (coe v23)))
                             (coe
                                MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d__'43'__202
                                v5
                                (coe
                                   MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d__'42'__204
                                   v5
                                   (coe
                                      MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d__'43'__202
                                      v5
                                      (d_'10214'_'10215'H_450
                                         (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5)
                                         (coe v6) (coe v7) (coe v8) (coe C_'8709'_436)
                                         (coe MAlonzo.Code.Data.Vec.Base.C__'8759'__36 v11 v12))
                                      (d_'10214'_'10215'H_450
                                         (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5)
                                         (coe v6) (coe v7) (coe v8) (coe v15)
                                         (coe MAlonzo.Code.Data.Vec.Base.C__'8759'__36 v11 v12)))
                                   v11)
                                (d_'10214'_'10215'N_454
                                   (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5) (coe v6)
                                   (coe v7) (coe v8) (coe v16) (coe v12)))
                             (coe
                                MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d__'43'__202
                                v5
                                (coe
                                   MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d__'42'__204
                                   v5
                                   (d_'10214'_'10215'H_450
                                      (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5) (coe v6)
                                      (coe v7) (coe v8) (coe C_'8709'_436)
                                      (coe MAlonzo.Code.Data.Vec.Base.C__'8759'__36 v11 v12))
                                   v11)
                                (coe
                                   MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d__'43'__202
                                   v5
                                   (coe
                                      MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d__'42'__204
                                      v5
                                      (d_'10214'_'10215'H_450
                                         (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5)
                                         (coe v6) (coe v7) (coe v8) (coe v15)
                                         (coe MAlonzo.Code.Data.Vec.Base.C__'8759'__36 v11 v12))
                                      v11)
                                   (d_'10214'_'10215'N_454
                                      (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5) (coe v6)
                                      (coe v7) (coe v8) (coe v16) (coe v12))))
                             (coe
                                MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d__'43'__202
                                v5
                                (coe
                                   MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d__'42'__204
                                   v5
                                   (d_'10214'_'10215'H_450
                                      (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5) (coe v6)
                                      (coe v7) (coe v8) (coe C_'8709'_436)
                                      (coe MAlonzo.Code.Data.Vec.Base.C__'8759'__36 v11 v12))
                                   v11)
                                (coe
                                   MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d__'43'__202
                                   v5
                                   (coe
                                      MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d__'42'__204
                                      v5
                                      (d_'10214'_'10215'H_450
                                         (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5)
                                         (coe v6) (coe v7) (coe v8) (coe v15)
                                         (coe MAlonzo.Code.Data.Vec.Base.C__'8759'__36 v11 v12))
                                      v11)
                                   (d_'10214'_'10215'N_454
                                      (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5) (coe v6)
                                      (coe v7) (coe v8) (coe v16) (coe v12))))
                             (coe
                                MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du__'8718'_86
                                (coe
                                   MAlonzo.Code.Relation.Binary.Structures.d_refl_34
                                   (coe
                                      MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_60
                                      (let v17
                                             = MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d_isAlmostCommutativeRing_212
                                                 (coe v5) in
                                       let v18
                                             = MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d_isCommutativeSemiring_62
                                                 (coe v17) in
                                       let v19
                                             = MAlonzo.Code.Algebra.Structures.d_isSemiring_1358
                                                 (coe v18) in
                                       let v20
                                             = MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1252
                                                 (coe v19) in
                                       let v21
                                             = MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_1158
                                                 (coe v20) in
                                       let v22
                                             = MAlonzo.Code.Algebra.Structures.d_isMonoid_416
                                                 (coe v21) in
                                       let v23
                                             = MAlonzo.Code.Algebra.Structures.d_isSemigroup_368
                                                 (coe v22) in
                                       coe
                                         MAlonzo.Code.Algebra.Structures.du_setoid_110
                                         (coe
                                            MAlonzo.Code.Algebra.Structures.d_isMagma_202
                                            (coe v23)))))
                                (coe
                                   MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d__'43'__202
                                   v5
                                   (coe
                                      MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d__'42'__204
                                      v5
                                      (d_'10214'_'10215'H_450
                                         (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5)
                                         (coe v6) (coe v7) (coe v8) (coe C_'8709'_436)
                                         (coe MAlonzo.Code.Data.Vec.Base.C__'8759'__36 v11 v12))
                                      v11)
                                   (coe
                                      MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d__'43'__202
                                      v5
                                      (coe
                                         MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d__'42'__204
                                         v5
                                         (d_'10214'_'10215'H_450
                                            (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5)
                                            (coe v6) (coe v7) (coe v8) (coe v15)
                                            (coe MAlonzo.Code.Data.Vec.Base.C__'8759'__36 v11 v12))
                                         v11)
                                      (d_'10214'_'10215'N_454
                                         (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5)
                                         (coe v6) (coe v7) (coe v8) (coe v16) (coe v12)))))
                             (coe
                                MAlonzo.Code.Algebra.Solver.Ring.Lemmas.du_lemma'8320'_240 (coe v5)
                                (coe
                                   d_'10214'_'10215'H_450 (coe v0) (coe v1) (coe v2) (coe v3)
                                   (coe v4) (coe v5) (coe v6) (coe v7) (coe v8) (coe C_'8709'_436)
                                   (coe MAlonzo.Code.Data.Vec.Base.C__'8759'__36 v11 v12))
                                (coe
                                   d_'10214'_'10215'H_450 (coe v0) (coe v1) (coe v2) (coe v3)
                                   (coe v4) (coe v5) (coe v6) (coe v7) (coe v8) (coe v15)
                                   (coe MAlonzo.Code.Data.Vec.Base.C__'8759'__36 v11 v12))
                                (coe
                                   d_'10214'_'10215'N_454 (coe v0) (coe v1) (coe v2) (coe v3)
                                   (coe v4) (coe v5) (coe v6) (coe v7) (coe v8) (coe v16) (coe v12))
                                (coe v11)))
                          (coe
                             MAlonzo.Code.Function.Base.du__'10216'_'10217'__250
                             (coe
                                MAlonzo.Code.Function.Base.du__'10216'_'10217'__250
                                (coe
                                   d_'43'H'45'homo_984 (coe v0) (coe v1) (coe v2) (coe v3) (coe v4)
                                   (coe v5) (coe v6) (coe v7) (coe v8) (coe C_'8709'_436) (coe v15)
                                   (coe MAlonzo.Code.Data.Vec.Base.C__'8759'__36 v11 v12))
                                (coe
                                   MAlonzo.Code.Algebra.Structures.d_'8729''45'cong_96
                                   (MAlonzo.Code.Algebra.Structures.d_isMagma_202
                                      (coe
                                         MAlonzo.Code.Algebra.Structures.d_isSemigroup_368
                                         (coe
                                            MAlonzo.Code.Algebra.Structures.d_'42''45'isMonoid_1160
                                            (coe
                                               MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1252
                                               (coe
                                                  MAlonzo.Code.Algebra.Structures.d_isSemiring_1358
                                                  (coe
                                                     MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d_isCommutativeSemiring_62
                                                     (coe
                                                        MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d_isAlmostCommutativeRing_212
                                                        (coe v5))))))))
                                   (d_'10214'_'10215'H_450
                                      (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5) (coe v6)
                                      (coe v7) (coe v8)
                                      (coe
                                         d__'43'H__672 (coe v0) (coe v1) (coe v2) (coe v3) (coe v4)
                                         (coe v5) (coe v6) (coe v7) (coe v8) (coe C_'8709'_436)
                                         (coe v15))
                                      (coe MAlonzo.Code.Data.Vec.Base.C__'8759'__36 v11 v12))
                                   (coe
                                      MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d__'43'__202
                                      v5
                                      (d_'10214'_'10215'H_450
                                         (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5)
                                         (coe v6) (coe v7) (coe v8) (coe C_'8709'_436)
                                         (coe MAlonzo.Code.Data.Vec.Base.C__'8759'__36 v11 v12))
                                      (d_'10214'_'10215'H_450
                                         (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5)
                                         (coe v6) (coe v7) (coe v8) (coe v15)
                                         (coe MAlonzo.Code.Data.Vec.Base.C__'8759'__36 v11 v12)))
                                   v11 v11)
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
                                                           MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d_isCommutativeSemiring_62
                                                           (coe
                                                              MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d_isAlmostCommutativeRing_212
                                                              (coe v5))))))))))
                                   v11))
                             (coe
                                MAlonzo.Code.Algebra.Structures.d_'8729''45'cong_96
                                (MAlonzo.Code.Algebra.Structures.d_isMagma_202
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
                                                     MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d_isCommutativeSemiring_62
                                                     (coe
                                                        MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d_isAlmostCommutativeRing_212
                                                        (coe v5)))))))))
                                (coe
                                   MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d__'42'__204
                                   v5
                                   (d_'10214'_'10215'H_450
                                      (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5) (coe v6)
                                      (coe v7) (coe v8)
                                      (coe
                                         d__'43'H__672 (coe v0) (coe v1) (coe v2) (coe v3) (coe v4)
                                         (coe v5) (coe v6) (coe v7) (coe v8) (coe C_'8709'_436)
                                         (coe v15))
                                      (coe MAlonzo.Code.Data.Vec.Base.C__'8759'__36 v11 v12))
                                   v11)
                                (coe
                                   MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d__'42'__204
                                   v5
                                   (coe
                                      MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d__'43'__202
                                      v5
                                      (d_'10214'_'10215'H_450
                                         (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5)
                                         (coe v6) (coe v7) (coe v8) (coe C_'8709'_436)
                                         (coe MAlonzo.Code.Data.Vec.Base.C__'8759'__36 v11 v12))
                                      (d_'10214'_'10215'H_450
                                         (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5)
                                         (coe v6) (coe v7) (coe v8) (coe v15)
                                         (coe MAlonzo.Code.Data.Vec.Base.C__'8759'__36 v11 v12)))
                                   v11)
                                (d_'10214'_'10215'N_454
                                   (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5) (coe v6)
                                   (coe v7) (coe v8) (coe v16) (coe v12))
                                (d_'10214'_'10215'N_454
                                   (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5) (coe v6)
                                   (coe v7) (coe v8) (coe v16) (coe v12)))
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
                                                        MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d_isCommutativeSemiring_62
                                                        (coe
                                                           MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d_isAlmostCommutativeRing_212
                                                           (coe v5))))))))))
                                (d_'10214'_'10215'N_454
                                   (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5) (coe v6)
                                   (coe v7) (coe v8) (coe v16) (coe v12)))))
                       (d_'42'x'43'HN'8776''42'x'43'_908
                          (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5) (coe v6)
                          (coe v7) (coe v8)
                          (coe
                             d__'43'H__672 (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5)
                             (coe v6) (coe v7) (coe v8) (coe C_'8709'_436) (coe v15))
                          (coe v16) (coe MAlonzo.Code.Data.Vec.Base.C__'8759'__36 v11 v12)))
             _ -> MAlonzo.RTE.mazUnreachableError
      C__'42'x'43'__440 v14 v15
        -> case coe v10 of
             C_'8709'_436
               -> coe
                    MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.d_begin__40
                    (coe
                       MAlonzo.Code.Relation.Binary.Reasoning.Setoid.du_step'45''8776'_58
                       (let v17
                              = MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d_isAlmostCommutativeRing_212
                                  (coe v5) in
                        let v18
                              = MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d_isCommutativeSemiring_62
                                  (coe v17) in
                        let v19
                              = MAlonzo.Code.Algebra.Structures.d_isSemiring_1358 (coe v18) in
                        let v20
                              = MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1252
                                  (coe v19) in
                        let v21
                              = MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_1158
                                  (coe v20) in
                        let v22
                              = MAlonzo.Code.Algebra.Structures.d_isMonoid_416 (coe v21) in
                        let v23
                              = MAlonzo.Code.Algebra.Structures.d_isSemigroup_368 (coe v22) in
                        coe
                          MAlonzo.Code.Algebra.Structures.du_setoid_110
                          (coe MAlonzo.Code.Algebra.Structures.d_isMagma_202 (coe v23)))
                       (coe
                          MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d__'43'__202
                          v5
                          (coe
                             MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d__'42'__204
                             v5
                             (d_'10214'_'10215'H_450
                                (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5) (coe v6)
                                (coe v7) (coe v8) (coe C__'42'x'43'__440 v14 v15)
                                (coe MAlonzo.Code.Data.Vec.Base.C__'8759'__36 v11 v12))
                             v11)
                          (d_'10214'_'10215'N_454
                             (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5) (coe v6)
                             (coe v7) (coe v8) (coe du_0N_632 (coe v4) (coe v8)) (coe v12)))
                       (coe
                          MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d__'43'__202
                          v5
                          (coe
                             MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d__'42'__204
                             v5
                             (d_'10214'_'10215'H_450
                                (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5) (coe v6)
                                (coe v7) (coe v8) (coe C__'42'x'43'__440 v14 v15)
                                (coe MAlonzo.Code.Data.Vec.Base.C__'8759'__36 v11 v12))
                             v11)
                          (MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d_0'35'_208
                             (coe v5)))
                       (coe
                          MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d__'43'__202
                          v5
                          (coe
                             MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d__'42'__204
                             v5
                             (d_'10214'_'10215'H_450
                                (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5) (coe v6)
                                (coe v7) (coe v8) (coe C__'42'x'43'__440 v14 v15)
                                (coe MAlonzo.Code.Data.Vec.Base.C__'8759'__36 v11 v12))
                             v11)
                          (MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d_0'35'_208
                             (coe v5)))
                       (coe
                          MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du__'8718'_86
                          (coe
                             MAlonzo.Code.Relation.Binary.Structures.d_refl_34
                             (coe
                                MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_60
                                (let v17
                                       = MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d_isAlmostCommutativeRing_212
                                           (coe v5) in
                                 let v18
                                       = MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d_isCommutativeSemiring_62
                                           (coe v17) in
                                 let v19
                                       = MAlonzo.Code.Algebra.Structures.d_isSemiring_1358
                                           (coe v18) in
                                 let v20
                                       = MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1252
                                           (coe v19) in
                                 let v21
                                       = MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_1158
                                           (coe v20) in
                                 let v22
                                       = MAlonzo.Code.Algebra.Structures.d_isMonoid_416 (coe v21) in
                                 let v23
                                       = MAlonzo.Code.Algebra.Structures.d_isSemigroup_368
                                           (coe v22) in
                                 coe
                                   MAlonzo.Code.Algebra.Structures.du_setoid_110
                                   (coe MAlonzo.Code.Algebra.Structures.d_isMagma_202 (coe v23)))))
                          (coe
                             MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d__'43'__202
                             v5
                             (coe
                                MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d__'42'__204
                                v5
                                (d_'10214'_'10215'H_450
                                   (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5) (coe v6)
                                   (coe v7) (coe v8) (coe C__'42'x'43'__440 v14 v15)
                                   (coe MAlonzo.Code.Data.Vec.Base.C__'8759'__36 v11 v12))
                                v11)
                             (MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d_0'35'_208
                                (coe v5))))
                       (coe
                          MAlonzo.Code.Function.Base.du__'10216'_'10217'__250
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
                                                     MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d_isCommutativeSemiring_62
                                                     (coe
                                                        MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d_isAlmostCommutativeRing_212
                                                        (coe v5))))))))))
                             (coe
                                MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d__'42'__204
                                v5
                                (d_'10214'_'10215'H_450
                                   (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5) (coe v6)
                                   (coe v7) (coe v8) (coe C__'42'x'43'__440 v14 v15)
                                   (coe MAlonzo.Code.Data.Vec.Base.C__'8759'__36 v11 v12))
                                v11))
                          (coe
                             MAlonzo.Code.Algebra.Structures.d_'8729''45'cong_96
                             (MAlonzo.Code.Algebra.Structures.d_isMagma_202
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
                                                  MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d_isCommutativeSemiring_62
                                                  (coe
                                                     MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d_isAlmostCommutativeRing_212
                                                     (coe v5)))))))))
                             (coe
                                MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d__'42'__204
                                v5
                                (d_'10214'_'10215'H_450
                                   (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5) (coe v6)
                                   (coe v7) (coe v8) (coe C__'42'x'43'__440 v14 v15)
                                   (coe MAlonzo.Code.Data.Vec.Base.C__'8759'__36 v11 v12))
                                v11)
                             (coe
                                MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d__'42'__204
                                v5
                                (d_'10214'_'10215'H_450
                                   (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5) (coe v6)
                                   (coe v7) (coe v8) (coe C__'42'x'43'__440 v14 v15)
                                   (coe MAlonzo.Code.Data.Vec.Base.C__'8759'__36 v11 v12))
                                v11)
                             (d_'10214'_'10215'N_454
                                (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5) (coe v6)
                                (coe v7) (coe v8) (coe du_0N_632 (coe v4) (coe v8)) (coe v12))
                             (MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d_0'35'_208
                                (coe v5)))
                          (coe
                             d_0N'45'homo_870 (coe v0) (coe v1) (coe v2) (coe v3) (coe v4)
                             (coe v5) (coe v6) (coe v7) (coe v8) (coe v12))))
             C__'42'x'43'__440 v17 v18
               -> coe
                    MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.d_begin__40
                    (coe
                       MAlonzo.Code.Relation.Binary.Reasoning.Setoid.du_step'45''8776'_58
                       (let v19
                              = MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d_isAlmostCommutativeRing_212
                                  (coe v5) in
                        let v20
                              = MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d_isCommutativeSemiring_62
                                  (coe v19) in
                        let v21
                              = MAlonzo.Code.Algebra.Structures.d_isSemiring_1358 (coe v20) in
                        let v22
                              = MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1252
                                  (coe v21) in
                        let v23
                              = MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_1158
                                  (coe v22) in
                        let v24
                              = MAlonzo.Code.Algebra.Structures.d_isMonoid_416 (coe v23) in
                        let v25
                              = MAlonzo.Code.Algebra.Structures.d_isSemigroup_368 (coe v24) in
                        coe
                          MAlonzo.Code.Algebra.Structures.du_setoid_110
                          (coe MAlonzo.Code.Algebra.Structures.d_isMagma_202 (coe v25)))
                       (d_'10214'_'10215'H_450
                          (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5) (coe v6)
                          (coe v7) (coe v8)
                          (coe
                             d__'42'x'43'HN__650 (coe v0) (coe v1) (coe v2) (coe v3) (coe v4)
                             (coe v5) (coe v6) (coe v7) (coe v8)
                             (coe
                                d__'43'H__672 (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5)
                                (coe v6) (coe v7) (coe v8) (coe C__'42'x'43'__440 v14 v15)
                                (coe v17))
                             (coe v18))
                          (coe MAlonzo.Code.Data.Vec.Base.C__'8759'__36 v11 v12))
                       (coe
                          MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d__'43'__202
                          v5
                          (coe
                             MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d__'42'__204
                             v5
                             (d_'10214'_'10215'H_450
                                (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5) (coe v6)
                                (coe v7) (coe v8)
                                (coe
                                   d__'43'H__672 (coe v0) (coe v1) (coe v2) (coe v3) (coe v4)
                                   (coe v5) (coe v6) (coe v7) (coe v8)
                                   (coe C__'42'x'43'__440 v14 v15) (coe v17))
                                (coe MAlonzo.Code.Data.Vec.Base.C__'8759'__36 v11 v12))
                             v11)
                          (d_'10214'_'10215'N_454
                             (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5) (coe v6)
                             (coe v7) (coe v8) (coe v18) (coe v12)))
                       (coe
                          MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d__'43'__202
                          v5
                          (coe
                             MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d__'42'__204
                             v5
                             (d_'10214'_'10215'H_450
                                (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5) (coe v6)
                                (coe v7) (coe v8) (coe C__'42'x'43'__440 v14 v15)
                                (coe MAlonzo.Code.Data.Vec.Base.C__'8759'__36 v11 v12))
                             v11)
                          (coe
                             MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d__'43'__202
                             v5
                             (coe
                                MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d__'42'__204
                                v5
                                (d_'10214'_'10215'H_450
                                   (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5) (coe v6)
                                   (coe v7) (coe v8) (coe v17)
                                   (coe MAlonzo.Code.Data.Vec.Base.C__'8759'__36 v11 v12))
                                v11)
                             (d_'10214'_'10215'N_454
                                (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5) (coe v6)
                                (coe v7) (coe v8) (coe v18) (coe v12))))
                       (coe
                          MAlonzo.Code.Relation.Binary.Reasoning.Setoid.du_step'45''8776'_58
                          (let v19
                                 = MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d_isAlmostCommutativeRing_212
                                     (coe v5) in
                           let v20
                                 = MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d_isCommutativeSemiring_62
                                     (coe v19) in
                           let v21
                                 = MAlonzo.Code.Algebra.Structures.d_isSemiring_1358 (coe v20) in
                           let v22
                                 = MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1252
                                     (coe v21) in
                           let v23
                                 = MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_1158
                                     (coe v22) in
                           let v24
                                 = MAlonzo.Code.Algebra.Structures.d_isMonoid_416 (coe v23) in
                           let v25
                                 = MAlonzo.Code.Algebra.Structures.d_isSemigroup_368 (coe v24) in
                           coe
                             MAlonzo.Code.Algebra.Structures.du_setoid_110
                             (coe MAlonzo.Code.Algebra.Structures.d_isMagma_202 (coe v25)))
                          (coe
                             MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d__'43'__202
                             v5
                             (coe
                                MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d__'42'__204
                                v5
                                (d_'10214'_'10215'H_450
                                   (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5) (coe v6)
                                   (coe v7) (coe v8)
                                   (coe
                                      d__'43'H__672 (coe v0) (coe v1) (coe v2) (coe v3) (coe v4)
                                      (coe v5) (coe v6) (coe v7) (coe v8)
                                      (coe C__'42'x'43'__440 v14 v15) (coe v17))
                                   (coe MAlonzo.Code.Data.Vec.Base.C__'8759'__36 v11 v12))
                                v11)
                             (d_'10214'_'10215'N_454
                                (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5) (coe v6)
                                (coe v7) (coe v8) (coe v18) (coe v12)))
                          (coe
                             MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d__'43'__202
                             v5
                             (coe
                                MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d__'42'__204
                                v5
                                (coe
                                   MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d__'43'__202
                                   v5
                                   (d_'10214'_'10215'H_450
                                      (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5) (coe v6)
                                      (coe v7) (coe v8) (coe C__'42'x'43'__440 v14 v15)
                                      (coe MAlonzo.Code.Data.Vec.Base.C__'8759'__36 v11 v12))
                                   (d_'10214'_'10215'H_450
                                      (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5) (coe v6)
                                      (coe v7) (coe v8) (coe v17)
                                      (coe MAlonzo.Code.Data.Vec.Base.C__'8759'__36 v11 v12)))
                                v11)
                             (d_'10214'_'10215'N_454
                                (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5) (coe v6)
                                (coe v7) (coe v8) (coe v18) (coe v12)))
                          (coe
                             MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d__'43'__202
                             v5
                             (coe
                                MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d__'42'__204
                                v5
                                (d_'10214'_'10215'H_450
                                   (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5) (coe v6)
                                   (coe v7) (coe v8) (coe C__'42'x'43'__440 v14 v15)
                                   (coe MAlonzo.Code.Data.Vec.Base.C__'8759'__36 v11 v12))
                                v11)
                             (coe
                                MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d__'43'__202
                                v5
                                (coe
                                   MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d__'42'__204
                                   v5
                                   (d_'10214'_'10215'H_450
                                      (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5) (coe v6)
                                      (coe v7) (coe v8) (coe v17)
                                      (coe MAlonzo.Code.Data.Vec.Base.C__'8759'__36 v11 v12))
                                   v11)
                                (d_'10214'_'10215'N_454
                                   (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5) (coe v6)
                                   (coe v7) (coe v8) (coe v18) (coe v12))))
                          (coe
                             MAlonzo.Code.Relation.Binary.Reasoning.Setoid.du_step'45''8776'_58
                             (let v19
                                    = MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d_isAlmostCommutativeRing_212
                                        (coe v5) in
                              let v20
                                    = MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d_isCommutativeSemiring_62
                                        (coe v19) in
                              let v21
                                    = MAlonzo.Code.Algebra.Structures.d_isSemiring_1358 (coe v20) in
                              let v22
                                    = MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1252
                                        (coe v21) in
                              let v23
                                    = MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_1158
                                        (coe v22) in
                              let v24
                                    = MAlonzo.Code.Algebra.Structures.d_isMonoid_416 (coe v23) in
                              let v25
                                    = MAlonzo.Code.Algebra.Structures.d_isSemigroup_368 (coe v24) in
                              coe
                                MAlonzo.Code.Algebra.Structures.du_setoid_110
                                (coe MAlonzo.Code.Algebra.Structures.d_isMagma_202 (coe v25)))
                             (coe
                                MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d__'43'__202
                                v5
                                (coe
                                   MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d__'42'__204
                                   v5
                                   (coe
                                      MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d__'43'__202
                                      v5
                                      (d_'10214'_'10215'H_450
                                         (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5)
                                         (coe v6) (coe v7) (coe v8) (coe C__'42'x'43'__440 v14 v15)
                                         (coe MAlonzo.Code.Data.Vec.Base.C__'8759'__36 v11 v12))
                                      (d_'10214'_'10215'H_450
                                         (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5)
                                         (coe v6) (coe v7) (coe v8) (coe v17)
                                         (coe MAlonzo.Code.Data.Vec.Base.C__'8759'__36 v11 v12)))
                                   v11)
                                (d_'10214'_'10215'N_454
                                   (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5) (coe v6)
                                   (coe v7) (coe v8) (coe v18) (coe v12)))
                             (coe
                                MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d__'43'__202
                                v5
                                (coe
                                   MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d__'42'__204
                                   v5
                                   (d_'10214'_'10215'H_450
                                      (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5) (coe v6)
                                      (coe v7) (coe v8) (coe C__'42'x'43'__440 v14 v15)
                                      (coe MAlonzo.Code.Data.Vec.Base.C__'8759'__36 v11 v12))
                                   v11)
                                (coe
                                   MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d__'43'__202
                                   v5
                                   (coe
                                      MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d__'42'__204
                                      v5
                                      (d_'10214'_'10215'H_450
                                         (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5)
                                         (coe v6) (coe v7) (coe v8) (coe v17)
                                         (coe MAlonzo.Code.Data.Vec.Base.C__'8759'__36 v11 v12))
                                      v11)
                                   (d_'10214'_'10215'N_454
                                      (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5) (coe v6)
                                      (coe v7) (coe v8) (coe v18) (coe v12))))
                             (coe
                                MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d__'43'__202
                                v5
                                (coe
                                   MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d__'42'__204
                                   v5
                                   (d_'10214'_'10215'H_450
                                      (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5) (coe v6)
                                      (coe v7) (coe v8) (coe C__'42'x'43'__440 v14 v15)
                                      (coe MAlonzo.Code.Data.Vec.Base.C__'8759'__36 v11 v12))
                                   v11)
                                (coe
                                   MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d__'43'__202
                                   v5
                                   (coe
                                      MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d__'42'__204
                                      v5
                                      (d_'10214'_'10215'H_450
                                         (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5)
                                         (coe v6) (coe v7) (coe v8) (coe v17)
                                         (coe MAlonzo.Code.Data.Vec.Base.C__'8759'__36 v11 v12))
                                      v11)
                                   (d_'10214'_'10215'N_454
                                      (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5) (coe v6)
                                      (coe v7) (coe v8) (coe v18) (coe v12))))
                             (coe
                                MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du__'8718'_86
                                (coe
                                   MAlonzo.Code.Relation.Binary.Structures.d_refl_34
                                   (coe
                                      MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_60
                                      (let v19
                                             = MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d_isAlmostCommutativeRing_212
                                                 (coe v5) in
                                       let v20
                                             = MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d_isCommutativeSemiring_62
                                                 (coe v19) in
                                       let v21
                                             = MAlonzo.Code.Algebra.Structures.d_isSemiring_1358
                                                 (coe v20) in
                                       let v22
                                             = MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1252
                                                 (coe v21) in
                                       let v23
                                             = MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_1158
                                                 (coe v22) in
                                       let v24
                                             = MAlonzo.Code.Algebra.Structures.d_isMonoid_416
                                                 (coe v23) in
                                       let v25
                                             = MAlonzo.Code.Algebra.Structures.d_isSemigroup_368
                                                 (coe v24) in
                                       coe
                                         MAlonzo.Code.Algebra.Structures.du_setoid_110
                                         (coe
                                            MAlonzo.Code.Algebra.Structures.d_isMagma_202
                                            (coe v25)))))
                                (coe
                                   MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d__'43'__202
                                   v5
                                   (coe
                                      MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d__'42'__204
                                      v5
                                      (d_'10214'_'10215'H_450
                                         (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5)
                                         (coe v6) (coe v7) (coe v8) (coe C__'42'x'43'__440 v14 v15)
                                         (coe MAlonzo.Code.Data.Vec.Base.C__'8759'__36 v11 v12))
                                      v11)
                                   (coe
                                      MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d__'43'__202
                                      v5
                                      (coe
                                         MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d__'42'__204
                                         v5
                                         (d_'10214'_'10215'H_450
                                            (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5)
                                            (coe v6) (coe v7) (coe v8) (coe v17)
                                            (coe MAlonzo.Code.Data.Vec.Base.C__'8759'__36 v11 v12))
                                         v11)
                                      (d_'10214'_'10215'N_454
                                         (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5)
                                         (coe v6) (coe v7) (coe v8) (coe v18) (coe v12)))))
                             (coe
                                MAlonzo.Code.Algebra.Solver.Ring.Lemmas.du_lemma'8320'_240 (coe v5)
                                (coe
                                   d_'10214'_'10215'H_450 (coe v0) (coe v1) (coe v2) (coe v3)
                                   (coe v4) (coe v5) (coe v6) (coe v7) (coe v8)
                                   (coe C__'42'x'43'__440 v14 v15)
                                   (coe MAlonzo.Code.Data.Vec.Base.C__'8759'__36 v11 v12))
                                (coe
                                   d_'10214'_'10215'H_450 (coe v0) (coe v1) (coe v2) (coe v3)
                                   (coe v4) (coe v5) (coe v6) (coe v7) (coe v8) (coe v17)
                                   (coe MAlonzo.Code.Data.Vec.Base.C__'8759'__36 v11 v12))
                                (coe
                                   d_'10214'_'10215'N_454 (coe v0) (coe v1) (coe v2) (coe v3)
                                   (coe v4) (coe v5) (coe v6) (coe v7) (coe v8) (coe v18) (coe v12))
                                (coe v11)))
                          (coe
                             MAlonzo.Code.Function.Base.du__'10216'_'10217'__250
                             (coe
                                MAlonzo.Code.Function.Base.du__'10216'_'10217'__250
                                (coe
                                   d_'43'H'45'homo_984 (coe v0) (coe v1) (coe v2) (coe v3) (coe v4)
                                   (coe v5) (coe v6) (coe v7) (coe v8)
                                   (coe C__'42'x'43'__440 v14 v15) (coe v17)
                                   (coe MAlonzo.Code.Data.Vec.Base.C__'8759'__36 v11 v12))
                                (coe
                                   MAlonzo.Code.Algebra.Structures.d_'8729''45'cong_96
                                   (MAlonzo.Code.Algebra.Structures.d_isMagma_202
                                      (coe
                                         MAlonzo.Code.Algebra.Structures.d_isSemigroup_368
                                         (coe
                                            MAlonzo.Code.Algebra.Structures.d_'42''45'isMonoid_1160
                                            (coe
                                               MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1252
                                               (coe
                                                  MAlonzo.Code.Algebra.Structures.d_isSemiring_1358
                                                  (coe
                                                     MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d_isCommutativeSemiring_62
                                                     (coe
                                                        MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d_isAlmostCommutativeRing_212
                                                        (coe v5))))))))
                                   (d_'10214'_'10215'H_450
                                      (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5) (coe v6)
                                      (coe v7) (coe v8)
                                      (coe
                                         d__'43'H__672 (coe v0) (coe v1) (coe v2) (coe v3) (coe v4)
                                         (coe v5) (coe v6) (coe v7) (coe v8)
                                         (coe C__'42'x'43'__440 v14 v15) (coe v17))
                                      (coe MAlonzo.Code.Data.Vec.Base.C__'8759'__36 v11 v12))
                                   (coe
                                      MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d__'43'__202
                                      v5
                                      (d_'10214'_'10215'H_450
                                         (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5)
                                         (coe v6) (coe v7) (coe v8) (coe C__'42'x'43'__440 v14 v15)
                                         (coe MAlonzo.Code.Data.Vec.Base.C__'8759'__36 v11 v12))
                                      (d_'10214'_'10215'H_450
                                         (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5)
                                         (coe v6) (coe v7) (coe v8) (coe v17)
                                         (coe MAlonzo.Code.Data.Vec.Base.C__'8759'__36 v11 v12)))
                                   v11 v11)
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
                                                           MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d_isCommutativeSemiring_62
                                                           (coe
                                                              MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d_isAlmostCommutativeRing_212
                                                              (coe v5))))))))))
                                   v11))
                             (coe
                                MAlonzo.Code.Algebra.Structures.d_'8729''45'cong_96
                                (MAlonzo.Code.Algebra.Structures.d_isMagma_202
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
                                                     MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d_isCommutativeSemiring_62
                                                     (coe
                                                        MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d_isAlmostCommutativeRing_212
                                                        (coe v5)))))))))
                                (coe
                                   MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d__'42'__204
                                   v5
                                   (d_'10214'_'10215'H_450
                                      (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5) (coe v6)
                                      (coe v7) (coe v8)
                                      (coe
                                         d__'43'H__672 (coe v0) (coe v1) (coe v2) (coe v3) (coe v4)
                                         (coe v5) (coe v6) (coe v7) (coe v8)
                                         (coe C__'42'x'43'__440 v14 v15) (coe v17))
                                      (coe MAlonzo.Code.Data.Vec.Base.C__'8759'__36 v11 v12))
                                   v11)
                                (coe
                                   MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d__'42'__204
                                   v5
                                   (coe
                                      MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d__'43'__202
                                      v5
                                      (d_'10214'_'10215'H_450
                                         (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5)
                                         (coe v6) (coe v7) (coe v8) (coe C__'42'x'43'__440 v14 v15)
                                         (coe MAlonzo.Code.Data.Vec.Base.C__'8759'__36 v11 v12))
                                      (d_'10214'_'10215'H_450
                                         (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5)
                                         (coe v6) (coe v7) (coe v8) (coe v17)
                                         (coe MAlonzo.Code.Data.Vec.Base.C__'8759'__36 v11 v12)))
                                   v11)
                                (d_'10214'_'10215'N_454
                                   (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5) (coe v6)
                                   (coe v7) (coe v8) (coe v18) (coe v12))
                                (d_'10214'_'10215'N_454
                                   (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5) (coe v6)
                                   (coe v7) (coe v8) (coe v18) (coe v12)))
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
                                                        MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d_isCommutativeSemiring_62
                                                        (coe
                                                           MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d_isAlmostCommutativeRing_212
                                                           (coe v5))))))))))
                                (d_'10214'_'10215'N_454
                                   (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5) (coe v6)
                                   (coe v7) (coe v8) (coe v18) (coe v12)))))
                       (d_'42'x'43'HN'8776''42'x'43'_908
                          (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5) (coe v6)
                          (coe v7) (coe v8)
                          (coe
                             d__'43'H__672 (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5)
                             (coe v6) (coe v7) (coe v8) (coe C__'42'x'43'__440 v14 v15)
                             (coe v17))
                          (coe v18) (coe MAlonzo.Code.Data.Vec.Base.C__'8759'__36 v11 v12)))
             _ -> MAlonzo.RTE.mazUnreachableError
      _ -> MAlonzo.RTE.mazUnreachableError
-- Algebra.Solver.Ring.*NH-homo
d_'42'NH'45'homo_1068 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Algebra.Bundles.T_RawRing_2460 ->
  MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.T_AlmostCommutativeRing_176 ->
  MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.T__'45'Raw'45'AlmostCommutative'10230'__354 ->
  (AgdaAny -> AgdaAny -> Maybe AgdaAny) ->
  Integer ->
  T_Normal_432 ->
  T_HNF_430 ->
  AgdaAny -> MAlonzo.Code.Data.Vec.Base.T_Vec_24 -> AgdaAny
d_'42'NH'45'homo_1068 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12
  = case coe v10 of
      C_'8709'_436
        -> coe
             MAlonzo.Code.Relation.Binary.Structures.d_sym_36
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
                                     MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d_isCommutativeSemiring_62
                                     (coe
                                        MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d_isAlmostCommutativeRing_212
                                        (coe v5))))))))))
             (coe
                MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d__'42'__204
                v5
                (d_'10214'_'10215'N_454
                   (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5) (coe v6)
                   (coe v7) (coe v8) (coe v9) (coe v12))
                (MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d_0'35'_208
                   (coe v5)))
             (MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d_0'35'_208
                (coe v5))
             (let v14
                    = MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d_isAlmostCommutativeRing_212
                        (coe v5) in
              let v15
                    = MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d_isCommutativeSemiring_62
                        (coe v14) in
              let v16
                    = MAlonzo.Code.Algebra.Structures.d_isSemiring_1358 (coe v15) in
              coe
                MAlonzo.Code.Algebra.Structures.du_zero'691'_988
                (coe
                   MAlonzo.Code.Algebra.Structures.du_isSemiringWithoutOne_1326
                   (coe v16))
                (d_'10214'_'10215'N_454
                   (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5) (coe v6)
                   (coe v7) (coe v8) (coe v9) (coe v12)))
      C__'42'x'43'__440 v14 v15
        -> let v16
                 = d__'8799'N__514
                     (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5) (coe v6)
                     (coe v7) (coe v8) (coe v9) (coe du_0N_632 (coe v4) (coe v8)) in
           case coe v16 of
             MAlonzo.Code.Agda.Builtin.Maybe.C_just_16 v17
               -> coe
                    MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.d_begin__40
                    (coe
                       MAlonzo.Code.Relation.Binary.Reasoning.Setoid.du_step'45''8776'_58
                       (let v18
                              = MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d_isAlmostCommutativeRing_212
                                  (coe v5) in
                        let v19
                              = MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d_isCommutativeSemiring_62
                                  (coe v18) in
                        let v20
                              = MAlonzo.Code.Algebra.Structures.d_isSemiring_1358 (coe v19) in
                        let v21
                              = MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1252
                                  (coe v20) in
                        let v22
                              = MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_1158
                                  (coe v21) in
                        let v23
                              = MAlonzo.Code.Algebra.Structures.d_isMonoid_416 (coe v22) in
                        let v24
                              = MAlonzo.Code.Algebra.Structures.d_isSemigroup_368 (coe v23) in
                        coe
                          MAlonzo.Code.Algebra.Structures.du_setoid_110
                          (coe MAlonzo.Code.Algebra.Structures.d_isMagma_202 (coe v24)))
                       (MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d_0'35'_208
                          (coe v5))
                       (coe
                          MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d__'42'__204
                          v5
                          (MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d_0'35'_208
                             (coe v5))
                          (coe
                             MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d__'43'__202
                             v5
                             (coe
                                MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d__'42'__204
                                v5
                                (d_'10214'_'10215'H_450
                                   (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5) (coe v6)
                                   (coe v7) (coe v8) (coe v14)
                                   (coe MAlonzo.Code.Data.Vec.Base.C__'8759'__36 v11 v12))
                                v11)
                             (d_'10214'_'10215'N_454
                                (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5) (coe v6)
                                (coe v7) (coe v8) (coe v15) (coe v12))))
                       (coe
                          MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d__'42'__204
                          v5
                          (d_'10214'_'10215'N_454
                             (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5) (coe v6)
                             (coe v7) (coe v8) (coe v9) (coe v12))
                          (coe
                             MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d__'43'__202
                             v5
                             (coe
                                MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d__'42'__204
                                v5
                                (d_'10214'_'10215'H_450
                                   (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5) (coe v6)
                                   (coe v7) (coe v8) (coe v14)
                                   (coe MAlonzo.Code.Data.Vec.Base.C__'8759'__36 v11 v12))
                                v11)
                             (d_'10214'_'10215'N_454
                                (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5) (coe v6)
                                (coe v7) (coe v8) (coe v15) (coe v12))))
                       (coe
                          MAlonzo.Code.Relation.Binary.Reasoning.Setoid.du_step'45''8776'_58
                          (let v18
                                 = MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d_isAlmostCommutativeRing_212
                                     (coe v5) in
                           let v19
                                 = MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d_isCommutativeSemiring_62
                                     (coe v18) in
                           let v20
                                 = MAlonzo.Code.Algebra.Structures.d_isSemiring_1358 (coe v19) in
                           let v21
                                 = MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1252
                                     (coe v20) in
                           let v22
                                 = MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_1158
                                     (coe v21) in
                           let v23
                                 = MAlonzo.Code.Algebra.Structures.d_isMonoid_416 (coe v22) in
                           let v24
                                 = MAlonzo.Code.Algebra.Structures.d_isSemigroup_368 (coe v23) in
                           coe
                             MAlonzo.Code.Algebra.Structures.du_setoid_110
                             (coe MAlonzo.Code.Algebra.Structures.d_isMagma_202 (coe v24)))
                          (coe
                             MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d__'42'__204
                             v5
                             (MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d_0'35'_208
                                (coe v5))
                             (coe
                                MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d__'43'__202
                                v5
                                (coe
                                   MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d__'42'__204
                                   v5
                                   (d_'10214'_'10215'H_450
                                      (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5) (coe v6)
                                      (coe v7) (coe v8) (coe v14)
                                      (coe MAlonzo.Code.Data.Vec.Base.C__'8759'__36 v11 v12))
                                   v11)
                                (d_'10214'_'10215'N_454
                                   (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5) (coe v6)
                                   (coe v7) (coe v8) (coe v15) (coe v12))))
                          (coe
                             MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d__'42'__204
                             v5
                             (d_'10214'_'10215'N_454
                                (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5) (coe v6)
                                (coe v7) (coe v8) (coe v9) (coe v12))
                             (coe
                                MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d__'43'__202
                                v5
                                (coe
                                   MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d__'42'__204
                                   v5
                                   (d_'10214'_'10215'H_450
                                      (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5) (coe v6)
                                      (coe v7) (coe v8) (coe v14)
                                      (coe MAlonzo.Code.Data.Vec.Base.C__'8759'__36 v11 v12))
                                   v11)
                                (d_'10214'_'10215'N_454
                                   (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5) (coe v6)
                                   (coe v7) (coe v8) (coe v15) (coe v12))))
                          (coe
                             MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d__'42'__204
                             v5
                             (d_'10214'_'10215'N_454
                                (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5) (coe v6)
                                (coe v7) (coe v8) (coe v9) (coe v12))
                             (coe
                                MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d__'43'__202
                                v5
                                (coe
                                   MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d__'42'__204
                                   v5
                                   (d_'10214'_'10215'H_450
                                      (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5) (coe v6)
                                      (coe v7) (coe v8) (coe v14)
                                      (coe MAlonzo.Code.Data.Vec.Base.C__'8759'__36 v11 v12))
                                   v11)
                                (d_'10214'_'10215'N_454
                                   (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5) (coe v6)
                                   (coe v7) (coe v8) (coe v15) (coe v12))))
                          (coe
                             MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du__'8718'_86
                             (coe
                                MAlonzo.Code.Relation.Binary.Structures.d_refl_34
                                (coe
                                   MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_60
                                   (let v18
                                          = MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d_isAlmostCommutativeRing_212
                                              (coe v5) in
                                    let v19
                                          = MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d_isCommutativeSemiring_62
                                              (coe v18) in
                                    let v20
                                          = MAlonzo.Code.Algebra.Structures.d_isSemiring_1358
                                              (coe v19) in
                                    let v21
                                          = MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1252
                                              (coe v20) in
                                    let v22
                                          = MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_1158
                                              (coe v21) in
                                    let v23
                                          = MAlonzo.Code.Algebra.Structures.d_isMonoid_416
                                              (coe v22) in
                                    let v24
                                          = MAlonzo.Code.Algebra.Structures.d_isSemigroup_368
                                              (coe v23) in
                                    coe
                                      MAlonzo.Code.Algebra.Structures.du_setoid_110
                                      (coe
                                         MAlonzo.Code.Algebra.Structures.d_isMagma_202 (coe v24)))))
                             (coe
                                MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d__'42'__204
                                v5
                                (d_'10214'_'10215'N_454
                                   (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5) (coe v6)
                                   (coe v7) (coe v8) (coe v9) (coe v12))
                                (coe
                                   MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d__'43'__202
                                   v5
                                   (coe
                                      MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d__'42'__204
                                      v5
                                      (d_'10214'_'10215'H_450
                                         (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5)
                                         (coe v6) (coe v7) (coe v8) (coe v14)
                                         (coe MAlonzo.Code.Data.Vec.Base.C__'8759'__36 v11 v12))
                                      v11)
                                   (d_'10214'_'10215'N_454
                                      (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5) (coe v6)
                                      (coe v7) (coe v8) (coe v15) (coe v12)))))
                          (coe
                             MAlonzo.Code.Function.Base.du__'10216'_'10217'__250
                             (coe
                                d_0'8776''10214'0'10215'_882 (coe v0) (coe v1) (coe v2) (coe v3)
                                (coe v4) (coe v5) (coe v6) (coe v7) (coe v8) (coe v9) (coe v17)
                                (coe v12))
                             (coe
                                MAlonzo.Code.Algebra.Structures.d_'8729''45'cong_96
                                (MAlonzo.Code.Algebra.Structures.d_isMagma_202
                                   (coe
                                      MAlonzo.Code.Algebra.Structures.d_isSemigroup_368
                                      (coe
                                         MAlonzo.Code.Algebra.Structures.d_'42''45'isMonoid_1160
                                         (coe
                                            MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1252
                                            (coe
                                               MAlonzo.Code.Algebra.Structures.d_isSemiring_1358
                                               (coe
                                                  MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d_isCommutativeSemiring_62
                                                  (coe
                                                     MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d_isAlmostCommutativeRing_212
                                                     (coe v5))))))))
                                (MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d_0'35'_208
                                   (coe v5))
                                (d_'10214'_'10215'N_454
                                   (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5) (coe v6)
                                   (coe v7) (coe v8) (coe v9) (coe v12))
                                (coe
                                   MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d__'43'__202
                                   v5
                                   (coe
                                      MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d__'42'__204
                                      v5
                                      (d_'10214'_'10215'H_450
                                         (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5)
                                         (coe v6) (coe v7) (coe v8) (coe v14)
                                         (coe MAlonzo.Code.Data.Vec.Base.C__'8759'__36 v11 v12))
                                      v11)
                                   (d_'10214'_'10215'N_454
                                      (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5) (coe v6)
                                      (coe v7) (coe v8) (coe v15) (coe v12)))
                                (coe
                                   MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d__'43'__202
                                   v5
                                   (coe
                                      MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d__'42'__204
                                      v5
                                      (d_'10214'_'10215'H_450
                                         (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5)
                                         (coe v6) (coe v7) (coe v8) (coe v14)
                                         (coe MAlonzo.Code.Data.Vec.Base.C__'8759'__36 v11 v12))
                                      v11)
                                   (d_'10214'_'10215'N_454
                                      (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5) (coe v6)
                                      (coe v7) (coe v8) (coe v15) (coe v12))))
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
                                                        MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d_isCommutativeSemiring_62
                                                        (coe
                                                           MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d_isAlmostCommutativeRing_212
                                                           (coe v5))))))))))
                                (coe
                                   MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d__'43'__202
                                   v5
                                   (coe
                                      MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d__'42'__204
                                      v5
                                      (d_'10214'_'10215'H_450
                                         (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5)
                                         (coe v6) (coe v7) (coe v8) (coe v14)
                                         (coe MAlonzo.Code.Data.Vec.Base.C__'8759'__36 v11 v12))
                                      v11)
                                   (d_'10214'_'10215'N_454
                                      (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5) (coe v6)
                                      (coe v7) (coe v8) (coe v15) (coe v12))))))
                       (coe
                          MAlonzo.Code.Relation.Binary.Structures.d_sym_36
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
                                                  MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d_isCommutativeSemiring_62
                                                  (coe
                                                     MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d_isAlmostCommutativeRing_212
                                                     (coe v5))))))))))
                          (coe
                             MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d__'42'__204
                             v5
                             (MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d_0'35'_208
                                (coe v5))
                             (coe
                                MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d__'43'__202
                                v5
                                (coe
                                   MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d__'42'__204
                                   v5
                                   (d_'10214'_'10215'H_450
                                      (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5) (coe v6)
                                      (coe v7) (coe v8) (coe v14)
                                      (coe MAlonzo.Code.Data.Vec.Base.C__'8759'__36 v11 v12))
                                   v11)
                                (d_'10214'_'10215'N_454
                                   (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5) (coe v6)
                                   (coe v7) (coe v8) (coe v15) (coe v12))))
                          (MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d_0'35'_208
                             (coe v5))
                          (let v18
                                 = MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d_isAlmostCommutativeRing_212
                                     (coe v5) in
                           let v19
                                 = MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d_isCommutativeSemiring_62
                                     (coe v18) in
                           let v20
                                 = MAlonzo.Code.Algebra.Structures.d_isSemiring_1358 (coe v19) in
                           coe
                             MAlonzo.Code.Algebra.Structures.du_zero'737'_986
                             (coe
                                MAlonzo.Code.Algebra.Structures.du_isSemiringWithoutOne_1326
                                (coe v20))
                             (coe
                                MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d__'43'__202
                                v5
                                (coe
                                   MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d__'42'__204
                                   v5
                                   (d_'10214'_'10215'H_450
                                      (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5) (coe v6)
                                      (coe v7) (coe v8) (coe v14)
                                      (coe MAlonzo.Code.Data.Vec.Base.C__'8759'__36 v11 v12))
                                   v11)
                                (d_'10214'_'10215'N_454
                                   (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5) (coe v6)
                                   (coe v7) (coe v8) (coe v15) (coe v12))))))
             MAlonzo.Code.Agda.Builtin.Maybe.C_nothing_18
               -> coe
                    MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.d_begin__40
                    (coe
                       MAlonzo.Code.Relation.Binary.Reasoning.Setoid.du_step'45''8776'_58
                       (let v17
                              = MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d_isAlmostCommutativeRing_212
                                  (coe v5) in
                        let v18
                              = MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d_isCommutativeSemiring_62
                                  (coe v17) in
                        let v19
                              = MAlonzo.Code.Algebra.Structures.d_isSemiring_1358 (coe v18) in
                        let v20
                              = MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1252
                                  (coe v19) in
                        let v21
                              = MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_1158
                                  (coe v20) in
                        let v22
                              = MAlonzo.Code.Algebra.Structures.d_isMonoid_416 (coe v21) in
                        let v23
                              = MAlonzo.Code.Algebra.Structures.d_isSemigroup_368 (coe v22) in
                        coe
                          MAlonzo.Code.Algebra.Structures.du_setoid_110
                          (coe MAlonzo.Code.Algebra.Structures.d_isMagma_202 (coe v23)))
                       (coe
                          MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d__'43'__202
                          v5
                          (coe
                             MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d__'42'__204
                             v5
                             (d_'10214'_'10215'H_450
                                (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5) (coe v6)
                                (coe v7) (coe v8)
                                (coe
                                   d__'42'NH__714 (coe v0) (coe v1) (coe v2) (coe v3) (coe v4)
                                   (coe v5) (coe v6) (coe v7) (coe v8) (coe v9) (coe v14))
                                (coe MAlonzo.Code.Data.Vec.Base.C__'8759'__36 v11 v12))
                             v11)
                          (d_'10214'_'10215'N_454
                             (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5) (coe v6)
                             (coe v7) (coe v8)
                             (coe
                                d__'42'N__726 (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5)
                                (coe v6) (coe v7) (coe v8) (coe v9) (coe v15))
                             (coe v12)))
                       (coe
                          MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d__'43'__202
                          v5
                          (coe
                             MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d__'42'__204
                             v5
                             (coe
                                MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d__'42'__204
                                v5
                                (d_'10214'_'10215'N_454
                                   (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5) (coe v6)
                                   (coe v7) (coe v8) (coe v9) (coe v12))
                                (d_'10214'_'10215'H_450
                                   (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5) (coe v6)
                                   (coe v7) (coe v8) (coe v14)
                                   (coe MAlonzo.Code.Data.Vec.Base.C__'8759'__36 v11 v12)))
                             v11)
                          (coe
                             MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d__'42'__204
                             v5
                             (d_'10214'_'10215'N_454
                                (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5) (coe v6)
                                (coe v7) (coe v8) (coe v9) (coe v12))
                             (d_'10214'_'10215'N_454
                                (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5) (coe v6)
                                (coe v7) (coe v8) (coe v15) (coe v12))))
                       (coe
                          MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d__'42'__204
                          v5
                          (d_'10214'_'10215'N_454
                             (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5) (coe v6)
                             (coe v7) (coe v8) (coe v9) (coe v12))
                          (coe
                             MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d__'43'__202
                             v5
                             (coe
                                MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d__'42'__204
                                v5
                                (d_'10214'_'10215'H_450
                                   (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5) (coe v6)
                                   (coe v7) (coe v8) (coe v14)
                                   (coe MAlonzo.Code.Data.Vec.Base.C__'8759'__36 v11 v12))
                                v11)
                             (d_'10214'_'10215'N_454
                                (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5) (coe v6)
                                (coe v7) (coe v8) (coe v15) (coe v12))))
                       (coe
                          MAlonzo.Code.Relation.Binary.Reasoning.Setoid.du_step'45''8776'_58
                          (let v17
                                 = MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d_isAlmostCommutativeRing_212
                                     (coe v5) in
                           let v18
                                 = MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d_isCommutativeSemiring_62
                                     (coe v17) in
                           let v19
                                 = MAlonzo.Code.Algebra.Structures.d_isSemiring_1358 (coe v18) in
                           let v20
                                 = MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1252
                                     (coe v19) in
                           let v21
                                 = MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_1158
                                     (coe v20) in
                           let v22
                                 = MAlonzo.Code.Algebra.Structures.d_isMonoid_416 (coe v21) in
                           let v23
                                 = MAlonzo.Code.Algebra.Structures.d_isSemigroup_368 (coe v22) in
                           coe
                             MAlonzo.Code.Algebra.Structures.du_setoid_110
                             (coe MAlonzo.Code.Algebra.Structures.d_isMagma_202 (coe v23)))
                          (coe
                             MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d__'43'__202
                             v5
                             (coe
                                MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d__'42'__204
                                v5
                                (coe
                                   MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d__'42'__204
                                   v5
                                   (d_'10214'_'10215'N_454
                                      (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5) (coe v6)
                                      (coe v7) (coe v8) (coe v9) (coe v12))
                                   (d_'10214'_'10215'H_450
                                      (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5) (coe v6)
                                      (coe v7) (coe v8) (coe v14)
                                      (coe MAlonzo.Code.Data.Vec.Base.C__'8759'__36 v11 v12)))
                                v11)
                             (coe
                                MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d__'42'__204
                                v5
                                (d_'10214'_'10215'N_454
                                   (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5) (coe v6)
                                   (coe v7) (coe v8) (coe v9) (coe v12))
                                (d_'10214'_'10215'N_454
                                   (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5) (coe v6)
                                   (coe v7) (coe v8) (coe v15) (coe v12))))
                          (coe
                             MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d__'42'__204
                             v5
                             (d_'10214'_'10215'N_454
                                (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5) (coe v6)
                                (coe v7) (coe v8) (coe v9) (coe v12))
                             (coe
                                MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d__'43'__202
                                v5
                                (coe
                                   MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d__'42'__204
                                   v5
                                   (d_'10214'_'10215'H_450
                                      (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5) (coe v6)
                                      (coe v7) (coe v8) (coe v14)
                                      (coe MAlonzo.Code.Data.Vec.Base.C__'8759'__36 v11 v12))
                                   v11)
                                (d_'10214'_'10215'N_454
                                   (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5) (coe v6)
                                   (coe v7) (coe v8) (coe v15) (coe v12))))
                          (coe
                             MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d__'42'__204
                             v5
                             (d_'10214'_'10215'N_454
                                (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5) (coe v6)
                                (coe v7) (coe v8) (coe v9) (coe v12))
                             (coe
                                MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d__'43'__202
                                v5
                                (coe
                                   MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d__'42'__204
                                   v5
                                   (d_'10214'_'10215'H_450
                                      (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5) (coe v6)
                                      (coe v7) (coe v8) (coe v14)
                                      (coe MAlonzo.Code.Data.Vec.Base.C__'8759'__36 v11 v12))
                                   v11)
                                (d_'10214'_'10215'N_454
                                   (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5) (coe v6)
                                   (coe v7) (coe v8) (coe v15) (coe v12))))
                          (coe
                             MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du__'8718'_86
                             (coe
                                MAlonzo.Code.Relation.Binary.Structures.d_refl_34
                                (coe
                                   MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_60
                                   (let v17
                                          = MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d_isAlmostCommutativeRing_212
                                              (coe v5) in
                                    let v18
                                          = MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d_isCommutativeSemiring_62
                                              (coe v17) in
                                    let v19
                                          = MAlonzo.Code.Algebra.Structures.d_isSemiring_1358
                                              (coe v18) in
                                    let v20
                                          = MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1252
                                              (coe v19) in
                                    let v21
                                          = MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_1158
                                              (coe v20) in
                                    let v22
                                          = MAlonzo.Code.Algebra.Structures.d_isMonoid_416
                                              (coe v21) in
                                    let v23
                                          = MAlonzo.Code.Algebra.Structures.d_isSemigroup_368
                                              (coe v22) in
                                    coe
                                      MAlonzo.Code.Algebra.Structures.du_setoid_110
                                      (coe
                                         MAlonzo.Code.Algebra.Structures.d_isMagma_202 (coe v23)))))
                             (coe
                                MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d__'42'__204
                                v5
                                (d_'10214'_'10215'N_454
                                   (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5) (coe v6)
                                   (coe v7) (coe v8) (coe v9) (coe v12))
                                (coe
                                   MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d__'43'__202
                                   v5
                                   (coe
                                      MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d__'42'__204
                                      v5
                                      (d_'10214'_'10215'H_450
                                         (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5)
                                         (coe v6) (coe v7) (coe v8) (coe v14)
                                         (coe MAlonzo.Code.Data.Vec.Base.C__'8759'__36 v11 v12))
                                      v11)
                                   (d_'10214'_'10215'N_454
                                      (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5) (coe v6)
                                      (coe v7) (coe v8) (coe v15) (coe v12)))))
                          (coe
                             MAlonzo.Code.Algebra.Solver.Ring.Lemmas.du_lemma'8323'_304 (coe v5)
                             (coe
                                d_'10214'_'10215'N_454 (coe v0) (coe v1) (coe v2) (coe v3) (coe v4)
                                (coe v5) (coe v6) (coe v7) (coe v8) (coe v9) (coe v12))
                             (coe
                                d_'10214'_'10215'H_450 (coe v0) (coe v1) (coe v2) (coe v3) (coe v4)
                                (coe v5) (coe v6) (coe v7) (coe v8) (coe v14)
                                (coe MAlonzo.Code.Data.Vec.Base.C__'8759'__36 v11 v12))
                             (coe
                                d_'10214'_'10215'N_454 (coe v0) (coe v1) (coe v2) (coe v3) (coe v4)
                                (coe v5) (coe v6) (coe v7) (coe v8) (coe v15) (coe v12))
                             (coe v11)))
                       (coe
                          MAlonzo.Code.Function.Base.du__'10216'_'10217'__250
                          (coe
                             MAlonzo.Code.Function.Base.du__'10216'_'10217'__250
                             (coe
                                d_'42'NH'45'homo_1068 (coe v0) (coe v1) (coe v2) (coe v3) (coe v4)
                                (coe v5) (coe v6) (coe v7) (coe v8) (coe v9) (coe v14) (coe v11)
                                (coe v12))
                             (coe
                                MAlonzo.Code.Algebra.Structures.d_'8729''45'cong_96
                                (MAlonzo.Code.Algebra.Structures.d_isMagma_202
                                   (coe
                                      MAlonzo.Code.Algebra.Structures.d_isSemigroup_368
                                      (coe
                                         MAlonzo.Code.Algebra.Structures.d_'42''45'isMonoid_1160
                                         (coe
                                            MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1252
                                            (coe
                                               MAlonzo.Code.Algebra.Structures.d_isSemiring_1358
                                               (coe
                                                  MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d_isCommutativeSemiring_62
                                                  (coe
                                                     MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d_isAlmostCommutativeRing_212
                                                     (coe v5))))))))
                                (d_'10214'_'10215'H_450
                                   (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5) (coe v6)
                                   (coe v7) (coe v8)
                                   (coe
                                      d__'42'NH__714 (coe v0) (coe v1) (coe v2) (coe v3) (coe v4)
                                      (coe v5) (coe v6) (coe v7) (coe v8) (coe v9) (coe v14))
                                   (coe MAlonzo.Code.Data.Vec.Base.C__'8759'__36 v11 v12))
                                (coe
                                   MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d__'42'__204
                                   v5
                                   (d_'10214'_'10215'N_454
                                      (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5) (coe v6)
                                      (coe v7) (coe v8) (coe v9) (coe v12))
                                   (d_'10214'_'10215'H_450
                                      (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5) (coe v6)
                                      (coe v7) (coe v8) (coe v14)
                                      (coe MAlonzo.Code.Data.Vec.Base.C__'8759'__36 v11 v12)))
                                v11 v11)
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
                                                        MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d_isCommutativeSemiring_62
                                                        (coe
                                                           MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d_isAlmostCommutativeRing_212
                                                           (coe v5))))))))))
                                v11))
                          (coe
                             MAlonzo.Code.Algebra.Structures.d_'8729''45'cong_96
                             (MAlonzo.Code.Algebra.Structures.d_isMagma_202
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
                                                  MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d_isCommutativeSemiring_62
                                                  (coe
                                                     MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d_isAlmostCommutativeRing_212
                                                     (coe v5)))))))))
                             (coe
                                MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d__'42'__204
                                v5
                                (d_'10214'_'10215'H_450
                                   (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5) (coe v6)
                                   (coe v7) (coe v8)
                                   (coe
                                      d__'42'NH__714 (coe v0) (coe v1) (coe v2) (coe v3) (coe v4)
                                      (coe v5) (coe v6) (coe v7) (coe v8) (coe v9) (coe v14))
                                   (coe MAlonzo.Code.Data.Vec.Base.C__'8759'__36 v11 v12))
                                v11)
                             (coe
                                MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d__'42'__204
                                v5
                                (coe
                                   MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d__'42'__204
                                   v5
                                   (d_'10214'_'10215'N_454
                                      (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5) (coe v6)
                                      (coe v7) (coe v8) (coe v9) (coe v12))
                                   (d_'10214'_'10215'H_450
                                      (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5) (coe v6)
                                      (coe v7) (coe v8) (coe v14)
                                      (coe MAlonzo.Code.Data.Vec.Base.C__'8759'__36 v11 v12)))
                                v11)
                             (d_'10214'_'10215'N_454
                                (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5) (coe v6)
                                (coe v7) (coe v8)
                                (coe
                                   d__'42'N__726 (coe v0) (coe v1) (coe v2) (coe v3) (coe v4)
                                   (coe v5) (coe v6) (coe v7) (coe v8) (coe v9) (coe v15))
                                (coe v12))
                             (coe
                                MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d__'42'__204
                                v5
                                (d_'10214'_'10215'N_454
                                   (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5) (coe v6)
                                   (coe v7) (coe v8) (coe v9) (coe v12))
                                (d_'10214'_'10215'N_454
                                   (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5) (coe v6)
                                   (coe v7) (coe v8) (coe v15) (coe v12))))
                          (coe
                             d_'42'N'45'homo_1100 (coe v0) (coe v1) (coe v2) (coe v3) (coe v4)
                             (coe v5) (coe v6) (coe v7) (coe v8) (coe v9) (coe v15) (coe v12))))
             _ -> MAlonzo.RTE.mazUnreachableError
      _ -> MAlonzo.RTE.mazUnreachableError
-- Algebra.Solver.Ring.*HN-homo
d_'42'HN'45'homo_1080 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Algebra.Bundles.T_RawRing_2460 ->
  MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.T_AlmostCommutativeRing_176 ->
  MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.T__'45'Raw'45'AlmostCommutative'10230'__354 ->
  (AgdaAny -> AgdaAny -> Maybe AgdaAny) ->
  Integer ->
  T_HNF_430 ->
  T_Normal_432 ->
  AgdaAny -> MAlonzo.Code.Data.Vec.Base.T_Vec_24 -> AgdaAny
d_'42'HN'45'homo_1080 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12
  = case coe v9 of
      C_'8709'_436
        -> coe
             MAlonzo.Code.Relation.Binary.Structures.d_sym_36
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
                                     MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d_isCommutativeSemiring_62
                                     (coe
                                        MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d_isAlmostCommutativeRing_212
                                        (coe v5))))))))))
             (coe
                MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d__'42'__204
                v5
                (MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d_0'35'_208
                   (coe v5))
                (d_'10214'_'10215'N_454
                   (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5) (coe v6)
                   (coe v7) (coe v8) (coe v10) (coe v12)))
             (MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d_0'35'_208
                (coe v5))
             (let v14
                    = MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d_isAlmostCommutativeRing_212
                        (coe v5) in
              let v15
                    = MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d_isCommutativeSemiring_62
                        (coe v14) in
              let v16
                    = MAlonzo.Code.Algebra.Structures.d_isSemiring_1358 (coe v15) in
              coe
                MAlonzo.Code.Algebra.Structures.du_zero'737'_986
                (coe
                   MAlonzo.Code.Algebra.Structures.du_isSemiringWithoutOne_1326
                   (coe v16))
                (d_'10214'_'10215'N_454
                   (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5) (coe v6)
                   (coe v7) (coe v8) (coe v10) (coe v12)))
      C__'42'x'43'__440 v14 v15
        -> let v16
                 = d__'8799'N__514
                     (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5) (coe v6)
                     (coe v7) (coe v8) (coe v10) (coe du_0N_632 (coe v4) (coe v8)) in
           case coe v16 of
             MAlonzo.Code.Agda.Builtin.Maybe.C_just_16 v17
               -> coe
                    MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.d_begin__40
                    (coe
                       MAlonzo.Code.Relation.Binary.Reasoning.Setoid.du_step'45''8776'_58
                       (let v18
                              = MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d_isAlmostCommutativeRing_212
                                  (coe v5) in
                        let v19
                              = MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d_isCommutativeSemiring_62
                                  (coe v18) in
                        let v20
                              = MAlonzo.Code.Algebra.Structures.d_isSemiring_1358 (coe v19) in
                        let v21
                              = MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1252
                                  (coe v20) in
                        let v22
                              = MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_1158
                                  (coe v21) in
                        let v23
                              = MAlonzo.Code.Algebra.Structures.d_isMonoid_416 (coe v22) in
                        let v24
                              = MAlonzo.Code.Algebra.Structures.d_isSemigroup_368 (coe v23) in
                        coe
                          MAlonzo.Code.Algebra.Structures.du_setoid_110
                          (coe MAlonzo.Code.Algebra.Structures.d_isMagma_202 (coe v24)))
                       (MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d_0'35'_208
                          (coe v5))
                       (coe
                          MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d__'42'__204
                          v5
                          (coe
                             MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d__'43'__202
                             v5
                             (coe
                                MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d__'42'__204
                                v5
                                (d_'10214'_'10215'H_450
                                   (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5) (coe v6)
                                   (coe v7) (coe v8) (coe v14)
                                   (coe MAlonzo.Code.Data.Vec.Base.C__'8759'__36 v11 v12))
                                v11)
                             (d_'10214'_'10215'N_454
                                (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5) (coe v6)
                                (coe v7) (coe v8) (coe v15) (coe v12)))
                          (MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d_0'35'_208
                             (coe v5)))
                       (coe
                          MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d__'42'__204
                          v5
                          (coe
                             MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d__'43'__202
                             v5
                             (coe
                                MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d__'42'__204
                                v5
                                (d_'10214'_'10215'H_450
                                   (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5) (coe v6)
                                   (coe v7) (coe v8) (coe v14)
                                   (coe MAlonzo.Code.Data.Vec.Base.C__'8759'__36 v11 v12))
                                v11)
                             (d_'10214'_'10215'N_454
                                (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5) (coe v6)
                                (coe v7) (coe v8) (coe v15) (coe v12)))
                          (d_'10214'_'10215'N_454
                             (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5) (coe v6)
                             (coe v7) (coe v8) (coe v10) (coe v12)))
                       (coe
                          MAlonzo.Code.Relation.Binary.Reasoning.Setoid.du_step'45''8776'_58
                          (let v18
                                 = MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d_isAlmostCommutativeRing_212
                                     (coe v5) in
                           let v19
                                 = MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d_isCommutativeSemiring_62
                                     (coe v18) in
                           let v20
                                 = MAlonzo.Code.Algebra.Structures.d_isSemiring_1358 (coe v19) in
                           let v21
                                 = MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1252
                                     (coe v20) in
                           let v22
                                 = MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_1158
                                     (coe v21) in
                           let v23
                                 = MAlonzo.Code.Algebra.Structures.d_isMonoid_416 (coe v22) in
                           let v24
                                 = MAlonzo.Code.Algebra.Structures.d_isSemigroup_368 (coe v23) in
                           coe
                             MAlonzo.Code.Algebra.Structures.du_setoid_110
                             (coe MAlonzo.Code.Algebra.Structures.d_isMagma_202 (coe v24)))
                          (coe
                             MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d__'42'__204
                             v5
                             (coe
                                MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d__'43'__202
                                v5
                                (coe
                                   MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d__'42'__204
                                   v5
                                   (d_'10214'_'10215'H_450
                                      (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5) (coe v6)
                                      (coe v7) (coe v8) (coe v14)
                                      (coe MAlonzo.Code.Data.Vec.Base.C__'8759'__36 v11 v12))
                                   v11)
                                (d_'10214'_'10215'N_454
                                   (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5) (coe v6)
                                   (coe v7) (coe v8) (coe v15) (coe v12)))
                             (MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d_0'35'_208
                                (coe v5)))
                          (coe
                             MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d__'42'__204
                             v5
                             (coe
                                MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d__'43'__202
                                v5
                                (coe
                                   MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d__'42'__204
                                   v5
                                   (d_'10214'_'10215'H_450
                                      (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5) (coe v6)
                                      (coe v7) (coe v8) (coe v14)
                                      (coe MAlonzo.Code.Data.Vec.Base.C__'8759'__36 v11 v12))
                                   v11)
                                (d_'10214'_'10215'N_454
                                   (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5) (coe v6)
                                   (coe v7) (coe v8) (coe v15) (coe v12)))
                             (d_'10214'_'10215'N_454
                                (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5) (coe v6)
                                (coe v7) (coe v8) (coe v10) (coe v12)))
                          (coe
                             MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d__'42'__204
                             v5
                             (coe
                                MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d__'43'__202
                                v5
                                (coe
                                   MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d__'42'__204
                                   v5
                                   (d_'10214'_'10215'H_450
                                      (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5) (coe v6)
                                      (coe v7) (coe v8) (coe v14)
                                      (coe MAlonzo.Code.Data.Vec.Base.C__'8759'__36 v11 v12))
                                   v11)
                                (d_'10214'_'10215'N_454
                                   (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5) (coe v6)
                                   (coe v7) (coe v8) (coe v15) (coe v12)))
                             (d_'10214'_'10215'N_454
                                (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5) (coe v6)
                                (coe v7) (coe v8) (coe v10) (coe v12)))
                          (coe
                             MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du__'8718'_86
                             (coe
                                MAlonzo.Code.Relation.Binary.Structures.d_refl_34
                                (coe
                                   MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_60
                                   (let v18
                                          = MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d_isAlmostCommutativeRing_212
                                              (coe v5) in
                                    let v19
                                          = MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d_isCommutativeSemiring_62
                                              (coe v18) in
                                    let v20
                                          = MAlonzo.Code.Algebra.Structures.d_isSemiring_1358
                                              (coe v19) in
                                    let v21
                                          = MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1252
                                              (coe v20) in
                                    let v22
                                          = MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_1158
                                              (coe v21) in
                                    let v23
                                          = MAlonzo.Code.Algebra.Structures.d_isMonoid_416
                                              (coe v22) in
                                    let v24
                                          = MAlonzo.Code.Algebra.Structures.d_isSemigroup_368
                                              (coe v23) in
                                    coe
                                      MAlonzo.Code.Algebra.Structures.du_setoid_110
                                      (coe
                                         MAlonzo.Code.Algebra.Structures.d_isMagma_202 (coe v24)))))
                             (coe
                                MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d__'42'__204
                                v5
                                (coe
                                   MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d__'43'__202
                                   v5
                                   (coe
                                      MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d__'42'__204
                                      v5
                                      (d_'10214'_'10215'H_450
                                         (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5)
                                         (coe v6) (coe v7) (coe v8) (coe v14)
                                         (coe MAlonzo.Code.Data.Vec.Base.C__'8759'__36 v11 v12))
                                      v11)
                                   (d_'10214'_'10215'N_454
                                      (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5) (coe v6)
                                      (coe v7) (coe v8) (coe v15) (coe v12)))
                                (d_'10214'_'10215'N_454
                                   (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5) (coe v6)
                                   (coe v7) (coe v8) (coe v10) (coe v12))))
                          (coe
                             MAlonzo.Code.Function.Base.du__'10216'_'10217'__250
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
                                                        MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d_isCommutativeSemiring_62
                                                        (coe
                                                           MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d_isAlmostCommutativeRing_212
                                                           (coe v5))))))))))
                                (coe
                                   MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d__'43'__202
                                   v5
                                   (coe
                                      MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d__'42'__204
                                      v5
                                      (d_'10214'_'10215'H_450
                                         (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5)
                                         (coe v6) (coe v7) (coe v8) (coe v14)
                                         (coe MAlonzo.Code.Data.Vec.Base.C__'8759'__36 v11 v12))
                                      v11)
                                   (d_'10214'_'10215'N_454
                                      (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5) (coe v6)
                                      (coe v7) (coe v8) (coe v15) (coe v12))))
                             (coe
                                MAlonzo.Code.Algebra.Structures.d_'8729''45'cong_96
                                (MAlonzo.Code.Algebra.Structures.d_isMagma_202
                                   (coe
                                      MAlonzo.Code.Algebra.Structures.d_isSemigroup_368
                                      (coe
                                         MAlonzo.Code.Algebra.Structures.d_'42''45'isMonoid_1160
                                         (coe
                                            MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1252
                                            (coe
                                               MAlonzo.Code.Algebra.Structures.d_isSemiring_1358
                                               (coe
                                                  MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d_isCommutativeSemiring_62
                                                  (coe
                                                     MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d_isAlmostCommutativeRing_212
                                                     (coe v5))))))))
                                (coe
                                   MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d__'43'__202
                                   v5
                                   (coe
                                      MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d__'42'__204
                                      v5
                                      (d_'10214'_'10215'H_450
                                         (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5)
                                         (coe v6) (coe v7) (coe v8) (coe v14)
                                         (coe MAlonzo.Code.Data.Vec.Base.C__'8759'__36 v11 v12))
                                      v11)
                                   (d_'10214'_'10215'N_454
                                      (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5) (coe v6)
                                      (coe v7) (coe v8) (coe v15) (coe v12)))
                                (coe
                                   MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d__'43'__202
                                   v5
                                   (coe
                                      MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d__'42'__204
                                      v5
                                      (d_'10214'_'10215'H_450
                                         (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5)
                                         (coe v6) (coe v7) (coe v8) (coe v14)
                                         (coe MAlonzo.Code.Data.Vec.Base.C__'8759'__36 v11 v12))
                                      v11)
                                   (d_'10214'_'10215'N_454
                                      (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5) (coe v6)
                                      (coe v7) (coe v8) (coe v15) (coe v12)))
                                (MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d_0'35'_208
                                   (coe v5))
                                (d_'10214'_'10215'N_454
                                   (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5) (coe v6)
                                   (coe v7) (coe v8) (coe v10) (coe v12)))
                             (coe
                                d_0'8776''10214'0'10215'_882 (coe v0) (coe v1) (coe v2) (coe v3)
                                (coe v4) (coe v5) (coe v6) (coe v7) (coe v8) (coe v10) (coe v17)
                                (coe v12))))
                       (coe
                          MAlonzo.Code.Relation.Binary.Structures.d_sym_36
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
                                                  MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d_isCommutativeSemiring_62
                                                  (coe
                                                     MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d_isAlmostCommutativeRing_212
                                                     (coe v5))))))))))
                          (coe
                             MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d__'42'__204
                             v5
                             (coe
                                MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d__'43'__202
                                v5
                                (coe
                                   MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d__'42'__204
                                   v5
                                   (d_'10214'_'10215'H_450
                                      (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5) (coe v6)
                                      (coe v7) (coe v8) (coe v14)
                                      (coe MAlonzo.Code.Data.Vec.Base.C__'8759'__36 v11 v12))
                                   v11)
                                (d_'10214'_'10215'N_454
                                   (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5) (coe v6)
                                   (coe v7) (coe v8) (coe v15) (coe v12)))
                             (MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d_0'35'_208
                                (coe v5)))
                          (MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d_0'35'_208
                             (coe v5))
                          (let v18
                                 = MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d_isAlmostCommutativeRing_212
                                     (coe v5) in
                           let v19
                                 = MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d_isCommutativeSemiring_62
                                     (coe v18) in
                           let v20
                                 = MAlonzo.Code.Algebra.Structures.d_isSemiring_1358 (coe v19) in
                           coe
                             MAlonzo.Code.Algebra.Structures.du_zero'691'_988
                             (coe
                                MAlonzo.Code.Algebra.Structures.du_isSemiringWithoutOne_1326
                                (coe v20))
                             (coe
                                MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d__'43'__202
                                v5
                                (coe
                                   MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d__'42'__204
                                   v5
                                   (d_'10214'_'10215'H_450
                                      (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5) (coe v6)
                                      (coe v7) (coe v8) (coe v14)
                                      (coe MAlonzo.Code.Data.Vec.Base.C__'8759'__36 v11 v12))
                                   v11)
                                (d_'10214'_'10215'N_454
                                   (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5) (coe v6)
                                   (coe v7) (coe v8) (coe v15) (coe v12))))))
             MAlonzo.Code.Agda.Builtin.Maybe.C_nothing_18
               -> coe
                    MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.d_begin__40
                    (coe
                       MAlonzo.Code.Relation.Binary.Reasoning.Setoid.du_step'45''8776'_58
                       (let v17
                              = MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d_isAlmostCommutativeRing_212
                                  (coe v5) in
                        let v18
                              = MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d_isCommutativeSemiring_62
                                  (coe v17) in
                        let v19
                              = MAlonzo.Code.Algebra.Structures.d_isSemiring_1358 (coe v18) in
                        let v20
                              = MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1252
                                  (coe v19) in
                        let v21
                              = MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_1158
                                  (coe v20) in
                        let v22
                              = MAlonzo.Code.Algebra.Structures.d_isMonoid_416 (coe v21) in
                        let v23
                              = MAlonzo.Code.Algebra.Structures.d_isSemigroup_368 (coe v22) in
                        coe
                          MAlonzo.Code.Algebra.Structures.du_setoid_110
                          (coe MAlonzo.Code.Algebra.Structures.d_isMagma_202 (coe v23)))
                       (coe
                          MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d__'43'__202
                          v5
                          (coe
                             MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d__'42'__204
                             v5
                             (d_'10214'_'10215'H_450
                                (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5) (coe v6)
                                (coe v7) (coe v8)
                                (coe
                                   d__'42'HN__718 (coe v0) (coe v1) (coe v2) (coe v3) (coe v4)
                                   (coe v5) (coe v6) (coe v7) (coe v8) (coe v14) (coe v10))
                                (coe MAlonzo.Code.Data.Vec.Base.C__'8759'__36 v11 v12))
                             v11)
                          (d_'10214'_'10215'N_454
                             (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5) (coe v6)
                             (coe v7) (coe v8)
                             (coe
                                d__'42'N__726 (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5)
                                (coe v6) (coe v7) (coe v8) (coe v15) (coe v10))
                             (coe v12)))
                       (coe
                          MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d__'43'__202
                          v5
                          (coe
                             MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d__'42'__204
                             v5
                             (coe
                                MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d__'42'__204
                                v5
                                (d_'10214'_'10215'H_450
                                   (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5) (coe v6)
                                   (coe v7) (coe v8) (coe v14)
                                   (coe MAlonzo.Code.Data.Vec.Base.C__'8759'__36 v11 v12))
                                (d_'10214'_'10215'N_454
                                   (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5) (coe v6)
                                   (coe v7) (coe v8) (coe v10) (coe v12)))
                             v11)
                          (coe
                             MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d__'42'__204
                             v5
                             (d_'10214'_'10215'N_454
                                (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5) (coe v6)
                                (coe v7) (coe v8) (coe v15) (coe v12))
                             (d_'10214'_'10215'N_454
                                (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5) (coe v6)
                                (coe v7) (coe v8) (coe v10) (coe v12))))
                       (coe
                          MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d__'42'__204
                          v5
                          (coe
                             MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d__'43'__202
                             v5
                             (coe
                                MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d__'42'__204
                                v5
                                (d_'10214'_'10215'H_450
                                   (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5) (coe v6)
                                   (coe v7) (coe v8) (coe v14)
                                   (coe MAlonzo.Code.Data.Vec.Base.C__'8759'__36 v11 v12))
                                v11)
                             (d_'10214'_'10215'N_454
                                (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5) (coe v6)
                                (coe v7) (coe v8) (coe v15) (coe v12)))
                          (d_'10214'_'10215'N_454
                             (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5) (coe v6)
                             (coe v7) (coe v8) (coe v10) (coe v12)))
                       (coe
                          MAlonzo.Code.Relation.Binary.Reasoning.Setoid.du_step'45''8776'_58
                          (let v17
                                 = MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d_isAlmostCommutativeRing_212
                                     (coe v5) in
                           let v18
                                 = MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d_isCommutativeSemiring_62
                                     (coe v17) in
                           let v19
                                 = MAlonzo.Code.Algebra.Structures.d_isSemiring_1358 (coe v18) in
                           let v20
                                 = MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1252
                                     (coe v19) in
                           let v21
                                 = MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_1158
                                     (coe v20) in
                           let v22
                                 = MAlonzo.Code.Algebra.Structures.d_isMonoid_416 (coe v21) in
                           let v23
                                 = MAlonzo.Code.Algebra.Structures.d_isSemigroup_368 (coe v22) in
                           coe
                             MAlonzo.Code.Algebra.Structures.du_setoid_110
                             (coe MAlonzo.Code.Algebra.Structures.d_isMagma_202 (coe v23)))
                          (coe
                             MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d__'43'__202
                             v5
                             (coe
                                MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d__'42'__204
                                v5
                                (coe
                                   MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d__'42'__204
                                   v5
                                   (d_'10214'_'10215'H_450
                                      (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5) (coe v6)
                                      (coe v7) (coe v8) (coe v14)
                                      (coe MAlonzo.Code.Data.Vec.Base.C__'8759'__36 v11 v12))
                                   (d_'10214'_'10215'N_454
                                      (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5) (coe v6)
                                      (coe v7) (coe v8) (coe v10) (coe v12)))
                                v11)
                             (coe
                                MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d__'42'__204
                                v5
                                (d_'10214'_'10215'N_454
                                   (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5) (coe v6)
                                   (coe v7) (coe v8) (coe v15) (coe v12))
                                (d_'10214'_'10215'N_454
                                   (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5) (coe v6)
                                   (coe v7) (coe v8) (coe v10) (coe v12))))
                          (coe
                             MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d__'42'__204
                             v5
                             (coe
                                MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d__'43'__202
                                v5
                                (coe
                                   MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d__'42'__204
                                   v5
                                   (d_'10214'_'10215'H_450
                                      (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5) (coe v6)
                                      (coe v7) (coe v8) (coe v14)
                                      (coe MAlonzo.Code.Data.Vec.Base.C__'8759'__36 v11 v12))
                                   v11)
                                (d_'10214'_'10215'N_454
                                   (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5) (coe v6)
                                   (coe v7) (coe v8) (coe v15) (coe v12)))
                             (d_'10214'_'10215'N_454
                                (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5) (coe v6)
                                (coe v7) (coe v8) (coe v10) (coe v12)))
                          (coe
                             MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d__'42'__204
                             v5
                             (coe
                                MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d__'43'__202
                                v5
                                (coe
                                   MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d__'42'__204
                                   v5
                                   (d_'10214'_'10215'H_450
                                      (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5) (coe v6)
                                      (coe v7) (coe v8) (coe v14)
                                      (coe MAlonzo.Code.Data.Vec.Base.C__'8759'__36 v11 v12))
                                   v11)
                                (d_'10214'_'10215'N_454
                                   (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5) (coe v6)
                                   (coe v7) (coe v8) (coe v15) (coe v12)))
                             (d_'10214'_'10215'N_454
                                (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5) (coe v6)
                                (coe v7) (coe v8) (coe v10) (coe v12)))
                          (coe
                             MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du__'8718'_86
                             (coe
                                MAlonzo.Code.Relation.Binary.Structures.d_refl_34
                                (coe
                                   MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_60
                                   (let v17
                                          = MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d_isAlmostCommutativeRing_212
                                              (coe v5) in
                                    let v18
                                          = MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d_isCommutativeSemiring_62
                                              (coe v17) in
                                    let v19
                                          = MAlonzo.Code.Algebra.Structures.d_isSemiring_1358
                                              (coe v18) in
                                    let v20
                                          = MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1252
                                              (coe v19) in
                                    let v21
                                          = MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_1158
                                              (coe v20) in
                                    let v22
                                          = MAlonzo.Code.Algebra.Structures.d_isMonoid_416
                                              (coe v21) in
                                    let v23
                                          = MAlonzo.Code.Algebra.Structures.d_isSemigroup_368
                                              (coe v22) in
                                    coe
                                      MAlonzo.Code.Algebra.Structures.du_setoid_110
                                      (coe
                                         MAlonzo.Code.Algebra.Structures.d_isMagma_202 (coe v23)))))
                             (coe
                                MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d__'42'__204
                                v5
                                (coe
                                   MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d__'43'__202
                                   v5
                                   (coe
                                      MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d__'42'__204
                                      v5
                                      (d_'10214'_'10215'H_450
                                         (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5)
                                         (coe v6) (coe v7) (coe v8) (coe v14)
                                         (coe MAlonzo.Code.Data.Vec.Base.C__'8759'__36 v11 v12))
                                      v11)
                                   (d_'10214'_'10215'N_454
                                      (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5) (coe v6)
                                      (coe v7) (coe v8) (coe v15) (coe v12)))
                                (d_'10214'_'10215'N_454
                                   (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5) (coe v6)
                                   (coe v7) (coe v8) (coe v10) (coe v12))))
                          (coe
                             MAlonzo.Code.Algebra.Solver.Ring.Lemmas.du_lemma'8322'_280 (coe v5)
                             (coe
                                d_'10214'_'10215'H_450 (coe v0) (coe v1) (coe v2) (coe v3) (coe v4)
                                (coe v5) (coe v6) (coe v7) (coe v8) (coe v14)
                                (coe MAlonzo.Code.Data.Vec.Base.C__'8759'__36 v11 v12))
                             (coe
                                d_'10214'_'10215'N_454 (coe v0) (coe v1) (coe v2) (coe v3) (coe v4)
                                (coe v5) (coe v6) (coe v7) (coe v8) (coe v15) (coe v12))
                             (coe
                                d_'10214'_'10215'N_454 (coe v0) (coe v1) (coe v2) (coe v3) (coe v4)
                                (coe v5) (coe v6) (coe v7) (coe v8) (coe v10) (coe v12))
                             (coe v11)))
                       (coe
                          MAlonzo.Code.Function.Base.du__'10216'_'10217'__250
                          (coe
                             MAlonzo.Code.Function.Base.du__'10216'_'10217'__250
                             (coe
                                d_'42'HN'45'homo_1080 (coe v0) (coe v1) (coe v2) (coe v3) (coe v4)
                                (coe v5) (coe v6) (coe v7) (coe v8) (coe v14) (coe v10) (coe v11)
                                (coe v12))
                             (coe
                                MAlonzo.Code.Algebra.Structures.d_'8729''45'cong_96
                                (MAlonzo.Code.Algebra.Structures.d_isMagma_202
                                   (coe
                                      MAlonzo.Code.Algebra.Structures.d_isSemigroup_368
                                      (coe
                                         MAlonzo.Code.Algebra.Structures.d_'42''45'isMonoid_1160
                                         (coe
                                            MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1252
                                            (coe
                                               MAlonzo.Code.Algebra.Structures.d_isSemiring_1358
                                               (coe
                                                  MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d_isCommutativeSemiring_62
                                                  (coe
                                                     MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d_isAlmostCommutativeRing_212
                                                     (coe v5))))))))
                                (d_'10214'_'10215'H_450
                                   (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5) (coe v6)
                                   (coe v7) (coe v8)
                                   (coe
                                      d__'42'HN__718 (coe v0) (coe v1) (coe v2) (coe v3) (coe v4)
                                      (coe v5) (coe v6) (coe v7) (coe v8) (coe v14) (coe v10))
                                   (coe MAlonzo.Code.Data.Vec.Base.C__'8759'__36 v11 v12))
                                (coe
                                   MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d__'42'__204
                                   v5
                                   (d_'10214'_'10215'H_450
                                      (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5) (coe v6)
                                      (coe v7) (coe v8) (coe v14)
                                      (coe MAlonzo.Code.Data.Vec.Base.C__'8759'__36 v11 v12))
                                   (d_'10214'_'10215'N_454
                                      (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5) (coe v6)
                                      (coe v7) (coe v8) (coe v10) (coe v12)))
                                v11 v11)
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
                                                        MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d_isCommutativeSemiring_62
                                                        (coe
                                                           MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d_isAlmostCommutativeRing_212
                                                           (coe v5))))))))))
                                v11))
                          (coe
                             MAlonzo.Code.Algebra.Structures.d_'8729''45'cong_96
                             (MAlonzo.Code.Algebra.Structures.d_isMagma_202
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
                                                  MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d_isCommutativeSemiring_62
                                                  (coe
                                                     MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d_isAlmostCommutativeRing_212
                                                     (coe v5)))))))))
                             (coe
                                MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d__'42'__204
                                v5
                                (d_'10214'_'10215'H_450
                                   (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5) (coe v6)
                                   (coe v7) (coe v8)
                                   (coe
                                      d__'42'HN__718 (coe v0) (coe v1) (coe v2) (coe v3) (coe v4)
                                      (coe v5) (coe v6) (coe v7) (coe v8) (coe v14) (coe v10))
                                   (coe MAlonzo.Code.Data.Vec.Base.C__'8759'__36 v11 v12))
                                v11)
                             (coe
                                MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d__'42'__204
                                v5
                                (coe
                                   MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d__'42'__204
                                   v5
                                   (d_'10214'_'10215'H_450
                                      (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5) (coe v6)
                                      (coe v7) (coe v8) (coe v14)
                                      (coe MAlonzo.Code.Data.Vec.Base.C__'8759'__36 v11 v12))
                                   (d_'10214'_'10215'N_454
                                      (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5) (coe v6)
                                      (coe v7) (coe v8) (coe v10) (coe v12)))
                                v11)
                             (d_'10214'_'10215'N_454
                                (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5) (coe v6)
                                (coe v7) (coe v8)
                                (coe
                                   d__'42'N__726 (coe v0) (coe v1) (coe v2) (coe v3) (coe v4)
                                   (coe v5) (coe v6) (coe v7) (coe v8) (coe v15) (coe v10))
                                (coe v12))
                             (coe
                                MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d__'42'__204
                                v5
                                (d_'10214'_'10215'N_454
                                   (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5) (coe v6)
                                   (coe v7) (coe v8) (coe v15) (coe v12))
                                (d_'10214'_'10215'N_454
                                   (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5) (coe v6)
                                   (coe v7) (coe v8) (coe v10) (coe v12))))
                          (coe
                             d_'42'N'45'homo_1100 (coe v0) (coe v1) (coe v2) (coe v3) (coe v4)
                             (coe v5) (coe v6) (coe v7) (coe v8) (coe v15) (coe v10)
                             (coe v12))))
             _ -> MAlonzo.RTE.mazUnreachableError
      _ -> MAlonzo.RTE.mazUnreachableError
-- Algebra.Solver.Ring.*H-homo
d_'42'H'45'homo_1090 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Algebra.Bundles.T_RawRing_2460 ->
  MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.T_AlmostCommutativeRing_176 ->
  MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.T__'45'Raw'45'AlmostCommutative'10230'__354 ->
  (AgdaAny -> AgdaAny -> Maybe AgdaAny) ->
  Integer ->
  T_HNF_430 ->
  T_HNF_430 -> MAlonzo.Code.Data.Vec.Base.T_Vec_24 -> AgdaAny
d_'42'H'45'homo_1090 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11
  = case coe v9 of
      C_'8709'_436
        -> coe
             MAlonzo.Code.Relation.Binary.Structures.d_sym_36
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
                                     MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d_isCommutativeSemiring_62
                                     (coe
                                        MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d_isAlmostCommutativeRing_212
                                        (coe v5))))))))))
             (coe
                MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d__'42'__204
                v5
                (MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d_0'35'_208
                   (coe v5))
                (d_'10214'_'10215'H_450
                   (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5) (coe v6)
                   (coe v7) (coe v8) (coe v10) (coe v11)))
             (MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d_0'35'_208
                (coe v5))
             (let v13
                    = MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d_isAlmostCommutativeRing_212
                        (coe v5) in
              let v14
                    = MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d_isCommutativeSemiring_62
                        (coe v13) in
              let v15
                    = MAlonzo.Code.Algebra.Structures.d_isSemiring_1358 (coe v14) in
              coe
                MAlonzo.Code.Algebra.Structures.du_zero'737'_986
                (coe
                   MAlonzo.Code.Algebra.Structures.du_isSemiringWithoutOne_1326
                   (coe v15))
                (d_'10214'_'10215'H_450
                   (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5) (coe v6)
                   (coe v7) (coe v8) (coe v10) (coe v11)))
      C__'42'x'43'__440 v13 v14
        -> case coe v10 of
             C_'8709'_436
               -> coe
                    MAlonzo.Code.Relation.Binary.Structures.d_sym_36
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
                                            MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d_isCommutativeSemiring_62
                                            (coe
                                               MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d_isAlmostCommutativeRing_212
                                               (coe v5))))))))))
                    (coe
                       MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d__'42'__204
                       v5
                       (d_'10214'_'10215'H_450
                          (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5) (coe v6)
                          (coe v7) (coe v8) (coe C__'42'x'43'__440 v13 v14) (coe v11))
                       (MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d_0'35'_208
                          (coe v5)))
                    (MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d_0'35'_208
                       (coe v5))
                    (let v16
                           = MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d_isAlmostCommutativeRing_212
                               (coe v5) in
                     let v17
                           = MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d_isCommutativeSemiring_62
                               (coe v16) in
                     let v18
                           = MAlonzo.Code.Algebra.Structures.d_isSemiring_1358 (coe v17) in
                     coe
                       MAlonzo.Code.Algebra.Structures.du_zero'691'_988
                       (coe
                          MAlonzo.Code.Algebra.Structures.du_isSemiringWithoutOne_1326
                          (coe v18))
                       (d_'10214'_'10215'H_450
                          (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5) (coe v6)
                          (coe v7) (coe v8) (coe C__'42'x'43'__440 v13 v14) (coe v11)))
             C__'42'x'43'__440 v16 v17
               -> case coe v11 of
                    MAlonzo.Code.Data.Vec.Base.C__'8759'__36 v19 v20
                      -> coe
                           MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.d_begin__40
                           (coe
                              MAlonzo.Code.Relation.Binary.Reasoning.Setoid.du_step'45''8776'_58
                              (let v21
                                     = MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d_isAlmostCommutativeRing_212
                                         (coe v5) in
                               let v22
                                     = MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d_isCommutativeSemiring_62
                                         (coe v21) in
                               let v23
                                     = MAlonzo.Code.Algebra.Structures.d_isSemiring_1358
                                         (coe v22) in
                               let v24
                                     = MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1252
                                         (coe v23) in
                               let v25
                                     = MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_1158
                                         (coe v24) in
                               let v26
                                     = MAlonzo.Code.Algebra.Structures.d_isMonoid_416 (coe v25) in
                               let v27
                                     = MAlonzo.Code.Algebra.Structures.d_isSemigroup_368
                                         (coe v26) in
                               coe
                                 MAlonzo.Code.Algebra.Structures.du_setoid_110
                                 (coe MAlonzo.Code.Algebra.Structures.d_isMagma_202 (coe v27)))
                              (d_'10214'_'10215'H_450
                                 (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5) (coe v6)
                                 (coe v7) (coe v8)
                                 (coe
                                    d__'42'x'43'HN__650 (coe v0) (coe v1) (coe v2) (coe v3) (coe v4)
                                    (coe v5) (coe v6) (coe v7) (coe v8)
                                    (coe
                                       d__'42'x'43'H__700 (coe v0) (coe v1) (coe v2) (coe v3)
                                       (coe v4) (coe v5) (coe v6) (coe v7) (coe v8)
                                       (coe
                                          d__'42'H__722 (coe v0) (coe v1) (coe v2) (coe v3) (coe v4)
                                          (coe v5) (coe v6) (coe v7) (coe v8) (coe v13) (coe v16))
                                       (coe
                                          d__'43'H__672 (coe v0) (coe v1) (coe v2) (coe v3) (coe v4)
                                          (coe v5) (coe v6) (coe v7) (coe v8)
                                          (coe
                                             d__'42'HN__718 (coe v0) (coe v1) (coe v2) (coe v3)
                                             (coe v4) (coe v5) (coe v6) (coe v7) (coe v8) (coe v13)
                                             (coe v17))
                                          (coe
                                             d__'42'NH__714 (coe v0) (coe v1) (coe v2) (coe v3)
                                             (coe v4) (coe v5) (coe v6) (coe v7) (coe v8) (coe v14)
                                             (coe v16))))
                                    (coe
                                       d__'42'N__726 (coe v0) (coe v1) (coe v2) (coe v3) (coe v4)
                                       (coe v5) (coe v6) (coe v7) (coe v8) (coe v14) (coe v17)))
                                 (coe MAlonzo.Code.Data.Vec.Base.C__'8759'__36 v19 v20))
                              (coe
                                 MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d__'43'__202
                                 v5
                                 (coe
                                    MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d__'42'__204
                                    v5
                                    (d_'10214'_'10215'H_450
                                       (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5)
                                       (coe v6) (coe v7) (coe v8)
                                       (coe
                                          d__'42'x'43'H__700 (coe v0) (coe v1) (coe v2) (coe v3)
                                          (coe v4) (coe v5) (coe v6) (coe v7) (coe v8)
                                          (coe
                                             d__'42'H__722 (coe v0) (coe v1) (coe v2) (coe v3)
                                             (coe v4) (coe v5) (coe v6) (coe v7) (coe v8) (coe v13)
                                             (coe v16))
                                          (coe
                                             d__'43'H__672 (coe v0) (coe v1) (coe v2) (coe v3)
                                             (coe v4) (coe v5) (coe v6) (coe v7) (coe v8)
                                             (coe
                                                d__'42'HN__718 (coe v0) (coe v1) (coe v2) (coe v3)
                                                (coe v4) (coe v5) (coe v6) (coe v7) (coe v8)
                                                (coe v13) (coe v17))
                                             (coe
                                                d__'42'NH__714 (coe v0) (coe v1) (coe v2) (coe v3)
                                                (coe v4) (coe v5) (coe v6) (coe v7) (coe v8)
                                                (coe v14) (coe v16))))
                                       (coe MAlonzo.Code.Data.Vec.Base.C__'8759'__36 v19 v20))
                                    v19)
                                 (d_'10214'_'10215'N_454
                                    (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5) (coe v6)
                                    (coe v7) (coe v8)
                                    (coe
                                       d__'42'N__726 (coe v0) (coe v1) (coe v2) (coe v3) (coe v4)
                                       (coe v5) (coe v6) (coe v7) (coe v8) (coe v14) (coe v17))
                                    (coe v20)))
                              (coe
                                 MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d__'42'__204
                                 v5
                                 (coe
                                    MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d__'43'__202
                                    v5
                                    (coe
                                       MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d__'42'__204
                                       v5
                                       (d_'10214'_'10215'H_450
                                          (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5)
                                          (coe v6) (coe v7) (coe v8) (coe v13)
                                          (coe MAlonzo.Code.Data.Vec.Base.C__'8759'__36 v19 v20))
                                       v19)
                                    (d_'10214'_'10215'N_454
                                       (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5)
                                       (coe v6) (coe v7) (coe v8) (coe v14) (coe v20)))
                                 (coe
                                    MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d__'43'__202
                                    v5
                                    (coe
                                       MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d__'42'__204
                                       v5
                                       (d_'10214'_'10215'H_450
                                          (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5)
                                          (coe v6) (coe v7) (coe v8) (coe v16)
                                          (coe MAlonzo.Code.Data.Vec.Base.C__'8759'__36 v19 v20))
                                       v19)
                                    (d_'10214'_'10215'N_454
                                       (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5)
                                       (coe v6) (coe v7) (coe v8) (coe v17) (coe v20))))
                              (coe
                                 MAlonzo.Code.Relation.Binary.Reasoning.Setoid.du_step'45''8776'_58
                                 (let v21
                                        = MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d_isAlmostCommutativeRing_212
                                            (coe v5) in
                                  let v22
                                        = MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d_isCommutativeSemiring_62
                                            (coe v21) in
                                  let v23
                                        = MAlonzo.Code.Algebra.Structures.d_isSemiring_1358
                                            (coe v22) in
                                  let v24
                                        = MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1252
                                            (coe v23) in
                                  let v25
                                        = MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_1158
                                            (coe v24) in
                                  let v26
                                        = MAlonzo.Code.Algebra.Structures.d_isMonoid_416
                                            (coe v25) in
                                  let v27
                                        = MAlonzo.Code.Algebra.Structures.d_isSemigroup_368
                                            (coe v26) in
                                  coe
                                    MAlonzo.Code.Algebra.Structures.du_setoid_110
                                    (coe MAlonzo.Code.Algebra.Structures.d_isMagma_202 (coe v27)))
                                 (coe
                                    MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d__'43'__202
                                    v5
                                    (coe
                                       MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d__'42'__204
                                       v5
                                       (d_'10214'_'10215'H_450
                                          (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5)
                                          (coe v6) (coe v7) (coe v8)
                                          (coe
                                             d__'42'x'43'H__700 (coe v0) (coe v1) (coe v2) (coe v3)
                                             (coe v4) (coe v5) (coe v6) (coe v7) (coe v8)
                                             (coe
                                                d__'42'H__722 (coe v0) (coe v1) (coe v2) (coe v3)
                                                (coe v4) (coe v5) (coe v6) (coe v7) (coe v8)
                                                (coe v13) (coe v16))
                                             (coe
                                                d__'43'H__672 (coe v0) (coe v1) (coe v2) (coe v3)
                                                (coe v4) (coe v5) (coe v6) (coe v7) (coe v8)
                                                (coe
                                                   d__'42'HN__718 (coe v0) (coe v1) (coe v2)
                                                   (coe v3) (coe v4) (coe v5) (coe v6) (coe v7)
                                                   (coe v8) (coe v13) (coe v17))
                                                (coe
                                                   d__'42'NH__714 (coe v0) (coe v1) (coe v2)
                                                   (coe v3) (coe v4) (coe v5) (coe v6) (coe v7)
                                                   (coe v8) (coe v14) (coe v16))))
                                          (coe MAlonzo.Code.Data.Vec.Base.C__'8759'__36 v19 v20))
                                       v19)
                                    (d_'10214'_'10215'N_454
                                       (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5)
                                       (coe v6) (coe v7) (coe v8)
                                       (coe
                                          d__'42'N__726 (coe v0) (coe v1) (coe v2) (coe v3) (coe v4)
                                          (coe v5) (coe v6) (coe v7) (coe v8) (coe v14) (coe v17))
                                       (coe v20)))
                                 (coe
                                    MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d__'43'__202
                                    v5
                                    (coe
                                       MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d__'42'__204
                                       v5
                                       (coe
                                          MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d__'43'__202
                                          v5
                                          (coe
                                             MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d__'42'__204
                                             v5
                                             (d_'10214'_'10215'H_450
                                                (coe v0) (coe v1) (coe v2) (coe v3) (coe v4)
                                                (coe v5) (coe v6) (coe v7) (coe v8)
                                                (coe
                                                   d__'42'H__722 (coe v0) (coe v1) (coe v2) (coe v3)
                                                   (coe v4) (coe v5) (coe v6) (coe v7) (coe v8)
                                                   (coe v13) (coe v16))
                                                (coe
                                                   MAlonzo.Code.Data.Vec.Base.C__'8759'__36 v19
                                                   v20))
                                             v19)
                                          (d_'10214'_'10215'H_450
                                             (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5)
                                             (coe v6) (coe v7) (coe v8)
                                             (coe
                                                d__'43'H__672 (coe v0) (coe v1) (coe v2) (coe v3)
                                                (coe v4) (coe v5) (coe v6) (coe v7) (coe v8)
                                                (coe
                                                   d__'42'HN__718 (coe v0) (coe v1) (coe v2)
                                                   (coe v3) (coe v4) (coe v5) (coe v6) (coe v7)
                                                   (coe v8) (coe v13) (coe v17))
                                                (coe
                                                   d__'42'NH__714 (coe v0) (coe v1) (coe v2)
                                                   (coe v3) (coe v4) (coe v5) (coe v6) (coe v7)
                                                   (coe v8) (coe v14) (coe v16)))
                                             (coe
                                                MAlonzo.Code.Data.Vec.Base.C__'8759'__36 v19 v20)))
                                       v19)
                                    (coe
                                       MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d__'42'__204
                                       v5
                                       (d_'10214'_'10215'N_454
                                          (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5)
                                          (coe v6) (coe v7) (coe v8) (coe v14) (coe v20))
                                       (d_'10214'_'10215'N_454
                                          (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5)
                                          (coe v6) (coe v7) (coe v8) (coe v17) (coe v20))))
                                 (coe
                                    MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d__'42'__204
                                    v5
                                    (coe
                                       MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d__'43'__202
                                       v5
                                       (coe
                                          MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d__'42'__204
                                          v5
                                          (d_'10214'_'10215'H_450
                                             (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5)
                                             (coe v6) (coe v7) (coe v8) (coe v13)
                                             (coe MAlonzo.Code.Data.Vec.Base.C__'8759'__36 v19 v20))
                                          v19)
                                       (d_'10214'_'10215'N_454
                                          (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5)
                                          (coe v6) (coe v7) (coe v8) (coe v14) (coe v20)))
                                    (coe
                                       MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d__'43'__202
                                       v5
                                       (coe
                                          MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d__'42'__204
                                          v5
                                          (d_'10214'_'10215'H_450
                                             (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5)
                                             (coe v6) (coe v7) (coe v8) (coe v16)
                                             (coe MAlonzo.Code.Data.Vec.Base.C__'8759'__36 v19 v20))
                                          v19)
                                       (d_'10214'_'10215'N_454
                                          (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5)
                                          (coe v6) (coe v7) (coe v8) (coe v17) (coe v20))))
                                 (coe
                                    MAlonzo.Code.Relation.Binary.Reasoning.Setoid.du_step'45''8776'_58
                                    (let v21
                                           = MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d_isAlmostCommutativeRing_212
                                               (coe v5) in
                                     let v22
                                           = MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d_isCommutativeSemiring_62
                                               (coe v21) in
                                     let v23
                                           = MAlonzo.Code.Algebra.Structures.d_isSemiring_1358
                                               (coe v22) in
                                     let v24
                                           = MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1252
                                               (coe v23) in
                                     let v25
                                           = MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_1158
                                               (coe v24) in
                                     let v26
                                           = MAlonzo.Code.Algebra.Structures.d_isMonoid_416
                                               (coe v25) in
                                     let v27
                                           = MAlonzo.Code.Algebra.Structures.d_isSemigroup_368
                                               (coe v26) in
                                     coe
                                       MAlonzo.Code.Algebra.Structures.du_setoid_110
                                       (coe
                                          MAlonzo.Code.Algebra.Structures.d_isMagma_202 (coe v27)))
                                    (coe
                                       MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d__'43'__202
                                       v5
                                       (coe
                                          MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d__'42'__204
                                          v5
                                          (coe
                                             MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d__'43'__202
                                             v5
                                             (coe
                                                MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d__'42'__204
                                                v5
                                                (d_'10214'_'10215'H_450
                                                   (coe v0) (coe v1) (coe v2) (coe v3) (coe v4)
                                                   (coe v5) (coe v6) (coe v7) (coe v8)
                                                   (coe
                                                      d__'42'H__722 (coe v0) (coe v1) (coe v2)
                                                      (coe v3) (coe v4) (coe v5) (coe v6) (coe v7)
                                                      (coe v8) (coe v13) (coe v16))
                                                   (coe
                                                      MAlonzo.Code.Data.Vec.Base.C__'8759'__36 v19
                                                      v20))
                                                v19)
                                             (d_'10214'_'10215'H_450
                                                (coe v0) (coe v1) (coe v2) (coe v3) (coe v4)
                                                (coe v5) (coe v6) (coe v7) (coe v8)
                                                (coe
                                                   d__'43'H__672 (coe v0) (coe v1) (coe v2) (coe v3)
                                                   (coe v4) (coe v5) (coe v6) (coe v7) (coe v8)
                                                   (coe
                                                      d__'42'HN__718 (coe v0) (coe v1) (coe v2)
                                                      (coe v3) (coe v4) (coe v5) (coe v6) (coe v7)
                                                      (coe v8) (coe v13) (coe v17))
                                                   (coe
                                                      d__'42'NH__714 (coe v0) (coe v1) (coe v2)
                                                      (coe v3) (coe v4) (coe v5) (coe v6) (coe v7)
                                                      (coe v8) (coe v14) (coe v16)))
                                                (coe
                                                   MAlonzo.Code.Data.Vec.Base.C__'8759'__36 v19
                                                   v20)))
                                          v19)
                                       (coe
                                          MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d__'42'__204
                                          v5
                                          (d_'10214'_'10215'N_454
                                             (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5)
                                             (coe v6) (coe v7) (coe v8) (coe v14) (coe v20))
                                          (d_'10214'_'10215'N_454
                                             (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5)
                                             (coe v6) (coe v7) (coe v8) (coe v17) (coe v20))))
                                    (coe
                                       MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d__'43'__202
                                       v5
                                       (coe
                                          MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d__'42'__204
                                          v5
                                          (coe
                                             MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d__'43'__202
                                             v5
                                             (coe
                                                MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d__'42'__204
                                                v5
                                                (coe
                                                   MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d__'42'__204
                                                   v5
                                                   (d_'10214'_'10215'H_450
                                                      (coe v0) (coe v1) (coe v2) (coe v3) (coe v4)
                                                      (coe v5) (coe v6) (coe v7) (coe v8) (coe v13)
                                                      (coe
                                                         MAlonzo.Code.Data.Vec.Base.C__'8759'__36
                                                         v19 v20))
                                                   (d_'10214'_'10215'H_450
                                                      (coe v0) (coe v1) (coe v2) (coe v3) (coe v4)
                                                      (coe v5) (coe v6) (coe v7) (coe v8) (coe v16)
                                                      (coe
                                                         MAlonzo.Code.Data.Vec.Base.C__'8759'__36
                                                         v19 v20)))
                                                v19)
                                             (coe
                                                MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d__'43'__202
                                                v5
                                                (d_'10214'_'10215'H_450
                                                   (coe v0) (coe v1) (coe v2) (coe v3) (coe v4)
                                                   (coe v5) (coe v6) (coe v7) (coe v8)
                                                   (coe
                                                      d__'42'HN__718 (coe v0) (coe v1) (coe v2)
                                                      (coe v3) (coe v4) (coe v5) (coe v6) (coe v7)
                                                      (coe v8) (coe v13) (coe v17))
                                                   (coe
                                                      MAlonzo.Code.Data.Vec.Base.C__'8759'__36 v19
                                                      v20))
                                                (d_'10214'_'10215'H_450
                                                   (coe v0) (coe v1) (coe v2) (coe v3) (coe v4)
                                                   (coe v5) (coe v6) (coe v7) (coe v8)
                                                   (coe
                                                      d__'42'NH__714 (coe v0) (coe v1) (coe v2)
                                                      (coe v3) (coe v4) (coe v5) (coe v6) (coe v7)
                                                      (coe v8) (coe v14) (coe v16))
                                                   (coe
                                                      MAlonzo.Code.Data.Vec.Base.C__'8759'__36 v19
                                                      v20))))
                                          v19)
                                       (coe
                                          MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d__'42'__204
                                          v5
                                          (d_'10214'_'10215'N_454
                                             (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5)
                                             (coe v6) (coe v7) (coe v8) (coe v14) (coe v20))
                                          (d_'10214'_'10215'N_454
                                             (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5)
                                             (coe v6) (coe v7) (coe v8) (coe v17) (coe v20))))
                                    (coe
                                       MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d__'42'__204
                                       v5
                                       (coe
                                          MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d__'43'__202
                                          v5
                                          (coe
                                             MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d__'42'__204
                                             v5
                                             (d_'10214'_'10215'H_450
                                                (coe v0) (coe v1) (coe v2) (coe v3) (coe v4)
                                                (coe v5) (coe v6) (coe v7) (coe v8) (coe v13)
                                                (coe
                                                   MAlonzo.Code.Data.Vec.Base.C__'8759'__36 v19
                                                   v20))
                                             v19)
                                          (d_'10214'_'10215'N_454
                                             (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5)
                                             (coe v6) (coe v7) (coe v8) (coe v14) (coe v20)))
                                       (coe
                                          MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d__'43'__202
                                          v5
                                          (coe
                                             MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d__'42'__204
                                             v5
                                             (d_'10214'_'10215'H_450
                                                (coe v0) (coe v1) (coe v2) (coe v3) (coe v4)
                                                (coe v5) (coe v6) (coe v7) (coe v8) (coe v16)
                                                (coe
                                                   MAlonzo.Code.Data.Vec.Base.C__'8759'__36 v19
                                                   v20))
                                             v19)
                                          (d_'10214'_'10215'N_454
                                             (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5)
                                             (coe v6) (coe v7) (coe v8) (coe v17) (coe v20))))
                                    (coe
                                       MAlonzo.Code.Relation.Binary.Reasoning.Setoid.du_step'45''8776'_58
                                       (let v21
                                              = MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d_isAlmostCommutativeRing_212
                                                  (coe v5) in
                                        let v22
                                              = MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d_isCommutativeSemiring_62
                                                  (coe v21) in
                                        let v23
                                              = MAlonzo.Code.Algebra.Structures.d_isSemiring_1358
                                                  (coe v22) in
                                        let v24
                                              = MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1252
                                                  (coe v23) in
                                        let v25
                                              = MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_1158
                                                  (coe v24) in
                                        let v26
                                              = MAlonzo.Code.Algebra.Structures.d_isMonoid_416
                                                  (coe v25) in
                                        let v27
                                              = MAlonzo.Code.Algebra.Structures.d_isSemigroup_368
                                                  (coe v26) in
                                        coe
                                          MAlonzo.Code.Algebra.Structures.du_setoid_110
                                          (coe
                                             MAlonzo.Code.Algebra.Structures.d_isMagma_202
                                             (coe v27)))
                                       (coe
                                          MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d__'43'__202
                                          v5
                                          (coe
                                             MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d__'42'__204
                                             v5
                                             (coe
                                                MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d__'43'__202
                                                v5
                                                (coe
                                                   MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d__'42'__204
                                                   v5
                                                   (coe
                                                      MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d__'42'__204
                                                      v5
                                                      (d_'10214'_'10215'H_450
                                                         (coe v0) (coe v1) (coe v2) (coe v3)
                                                         (coe v4) (coe v5) (coe v6) (coe v7)
                                                         (coe v8) (coe v13)
                                                         (coe
                                                            MAlonzo.Code.Data.Vec.Base.C__'8759'__36
                                                            v19 v20))
                                                      (d_'10214'_'10215'H_450
                                                         (coe v0) (coe v1) (coe v2) (coe v3)
                                                         (coe v4) (coe v5) (coe v6) (coe v7)
                                                         (coe v8) (coe v16)
                                                         (coe
                                                            MAlonzo.Code.Data.Vec.Base.C__'8759'__36
                                                            v19 v20)))
                                                   v19)
                                                (coe
                                                   MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d__'43'__202
                                                   v5
                                                   (d_'10214'_'10215'H_450
                                                      (coe v0) (coe v1) (coe v2) (coe v3) (coe v4)
                                                      (coe v5) (coe v6) (coe v7) (coe v8)
                                                      (coe
                                                         d__'42'HN__718 (coe v0) (coe v1) (coe v2)
                                                         (coe v3) (coe v4) (coe v5) (coe v6)
                                                         (coe v7) (coe v8) (coe v13) (coe v17))
                                                      (coe
                                                         MAlonzo.Code.Data.Vec.Base.C__'8759'__36
                                                         v19 v20))
                                                   (d_'10214'_'10215'H_450
                                                      (coe v0) (coe v1) (coe v2) (coe v3) (coe v4)
                                                      (coe v5) (coe v6) (coe v7) (coe v8)
                                                      (coe
                                                         d__'42'NH__714 (coe v0) (coe v1) (coe v2)
                                                         (coe v3) (coe v4) (coe v5) (coe v6)
                                                         (coe v7) (coe v8) (coe v14) (coe v16))
                                                      (coe
                                                         MAlonzo.Code.Data.Vec.Base.C__'8759'__36
                                                         v19 v20))))
                                             v19)
                                          (coe
                                             MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d__'42'__204
                                             v5
                                             (d_'10214'_'10215'N_454
                                                (coe v0) (coe v1) (coe v2) (coe v3) (coe v4)
                                                (coe v5) (coe v6) (coe v7) (coe v8) (coe v14)
                                                (coe v20))
                                             (d_'10214'_'10215'N_454
                                                (coe v0) (coe v1) (coe v2) (coe v3) (coe v4)
                                                (coe v5) (coe v6) (coe v7) (coe v8) (coe v17)
                                                (coe v20))))
                                       (coe
                                          MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d__'43'__202
                                          v5
                                          (coe
                                             MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d__'42'__204
                                             v5
                                             (coe
                                                MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d__'43'__202
                                                v5
                                                (coe
                                                   MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d__'42'__204
                                                   v5
                                                   (coe
                                                      MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d__'42'__204
                                                      v5
                                                      (d_'10214'_'10215'H_450
                                                         (coe v0) (coe v1) (coe v2) (coe v3)
                                                         (coe v4) (coe v5) (coe v6) (coe v7)
                                                         (coe v8) (coe v13)
                                                         (coe
                                                            MAlonzo.Code.Data.Vec.Base.C__'8759'__36
                                                            v19 v20))
                                                      (d_'10214'_'10215'H_450
                                                         (coe v0) (coe v1) (coe v2) (coe v3)
                                                         (coe v4) (coe v5) (coe v6) (coe v7)
                                                         (coe v8) (coe v16)
                                                         (coe
                                                            MAlonzo.Code.Data.Vec.Base.C__'8759'__36
                                                            v19 v20)))
                                                   v19)
                                                (coe
                                                   MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d__'43'__202
                                                   v5
                                                   (coe
                                                      MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d__'42'__204
                                                      v5
                                                      (d_'10214'_'10215'H_450
                                                         (coe v0) (coe v1) (coe v2) (coe v3)
                                                         (coe v4) (coe v5) (coe v6) (coe v7)
                                                         (coe v8) (coe v13)
                                                         (coe
                                                            MAlonzo.Code.Data.Vec.Base.C__'8759'__36
                                                            v19 v20))
                                                      (d_'10214'_'10215'N_454
                                                         (coe v0) (coe v1) (coe v2) (coe v3)
                                                         (coe v4) (coe v5) (coe v6) (coe v7)
                                                         (coe v8) (coe v17) (coe v20)))
                                                   (coe
                                                      MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d__'42'__204
                                                      v5
                                                      (d_'10214'_'10215'N_454
                                                         (coe v0) (coe v1) (coe v2) (coe v3)
                                                         (coe v4) (coe v5) (coe v6) (coe v7)
                                                         (coe v8) (coe v14) (coe v20))
                                                      (d_'10214'_'10215'H_450
                                                         (coe v0) (coe v1) (coe v2) (coe v3)
                                                         (coe v4) (coe v5) (coe v6) (coe v7)
                                                         (coe v8) (coe v16)
                                                         (coe
                                                            MAlonzo.Code.Data.Vec.Base.C__'8759'__36
                                                            v19 v20)))))
                                             v19)
                                          (coe
                                             MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d__'42'__204
                                             v5
                                             (d_'10214'_'10215'N_454
                                                (coe v0) (coe v1) (coe v2) (coe v3) (coe v4)
                                                (coe v5) (coe v6) (coe v7) (coe v8) (coe v14)
                                                (coe v20))
                                             (d_'10214'_'10215'N_454
                                                (coe v0) (coe v1) (coe v2) (coe v3) (coe v4)
                                                (coe v5) (coe v6) (coe v7) (coe v8) (coe v17)
                                                (coe v20))))
                                       (coe
                                          MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d__'42'__204
                                          v5
                                          (coe
                                             MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d__'43'__202
                                             v5
                                             (coe
                                                MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d__'42'__204
                                                v5
                                                (d_'10214'_'10215'H_450
                                                   (coe v0) (coe v1) (coe v2) (coe v3) (coe v4)
                                                   (coe v5) (coe v6) (coe v7) (coe v8) (coe v13)
                                                   (coe
                                                      MAlonzo.Code.Data.Vec.Base.C__'8759'__36 v19
                                                      v20))
                                                v19)
                                             (d_'10214'_'10215'N_454
                                                (coe v0) (coe v1) (coe v2) (coe v3) (coe v4)
                                                (coe v5) (coe v6) (coe v7) (coe v8) (coe v14)
                                                (coe v20)))
                                          (coe
                                             MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d__'43'__202
                                             v5
                                             (coe
                                                MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d__'42'__204
                                                v5
                                                (d_'10214'_'10215'H_450
                                                   (coe v0) (coe v1) (coe v2) (coe v3) (coe v4)
                                                   (coe v5) (coe v6) (coe v7) (coe v8) (coe v16)
                                                   (coe
                                                      MAlonzo.Code.Data.Vec.Base.C__'8759'__36 v19
                                                      v20))
                                                v19)
                                             (d_'10214'_'10215'N_454
                                                (coe v0) (coe v1) (coe v2) (coe v3) (coe v4)
                                                (coe v5) (coe v6) (coe v7) (coe v8) (coe v17)
                                                (coe v20))))
                                       (coe
                                          MAlonzo.Code.Relation.Binary.Reasoning.Setoid.du_step'45''8776'_58
                                          (let v21
                                                 = MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d_isAlmostCommutativeRing_212
                                                     (coe v5) in
                                           let v22
                                                 = MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d_isCommutativeSemiring_62
                                                     (coe v21) in
                                           let v23
                                                 = MAlonzo.Code.Algebra.Structures.d_isSemiring_1358
                                                     (coe v22) in
                                           let v24
                                                 = MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1252
                                                     (coe v23) in
                                           let v25
                                                 = MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_1158
                                                     (coe v24) in
                                           let v26
                                                 = MAlonzo.Code.Algebra.Structures.d_isMonoid_416
                                                     (coe v25) in
                                           let v27
                                                 = MAlonzo.Code.Algebra.Structures.d_isSemigroup_368
                                                     (coe v26) in
                                           coe
                                             MAlonzo.Code.Algebra.Structures.du_setoid_110
                                             (coe
                                                MAlonzo.Code.Algebra.Structures.d_isMagma_202
                                                (coe v27)))
                                          (coe
                                             MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d__'43'__202
                                             v5
                                             (coe
                                                MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d__'42'__204
                                                v5
                                                (coe
                                                   MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d__'43'__202
                                                   v5
                                                   (coe
                                                      MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d__'42'__204
                                                      v5
                                                      (coe
                                                         MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d__'42'__204
                                                         v5
                                                         (d_'10214'_'10215'H_450
                                                            (coe v0) (coe v1) (coe v2) (coe v3)
                                                            (coe v4) (coe v5) (coe v6) (coe v7)
                                                            (coe v8) (coe v13)
                                                            (coe
                                                               MAlonzo.Code.Data.Vec.Base.C__'8759'__36
                                                               v19 v20))
                                                         (d_'10214'_'10215'H_450
                                                            (coe v0) (coe v1) (coe v2) (coe v3)
                                                            (coe v4) (coe v5) (coe v6) (coe v7)
                                                            (coe v8) (coe v16)
                                                            (coe
                                                               MAlonzo.Code.Data.Vec.Base.C__'8759'__36
                                                               v19 v20)))
                                                      v19)
                                                   (coe
                                                      MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d__'43'__202
                                                      v5
                                                      (coe
                                                         MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d__'42'__204
                                                         v5
                                                         (d_'10214'_'10215'H_450
                                                            (coe v0) (coe v1) (coe v2) (coe v3)
                                                            (coe v4) (coe v5) (coe v6) (coe v7)
                                                            (coe v8) (coe v13)
                                                            (coe
                                                               MAlonzo.Code.Data.Vec.Base.C__'8759'__36
                                                               v19 v20))
                                                         (d_'10214'_'10215'N_454
                                                            (coe v0) (coe v1) (coe v2) (coe v3)
                                                            (coe v4) (coe v5) (coe v6) (coe v7)
                                                            (coe v8) (coe v17) (coe v20)))
                                                      (coe
                                                         MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d__'42'__204
                                                         v5
                                                         (d_'10214'_'10215'N_454
                                                            (coe v0) (coe v1) (coe v2) (coe v3)
                                                            (coe v4) (coe v5) (coe v6) (coe v7)
                                                            (coe v8) (coe v14) (coe v20))
                                                         (d_'10214'_'10215'H_450
                                                            (coe v0) (coe v1) (coe v2) (coe v3)
                                                            (coe v4) (coe v5) (coe v6) (coe v7)
                                                            (coe v8) (coe v16)
                                                            (coe
                                                               MAlonzo.Code.Data.Vec.Base.C__'8759'__36
                                                               v19 v20)))))
                                                v19)
                                             (coe
                                                MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d__'42'__204
                                                v5
                                                (d_'10214'_'10215'N_454
                                                   (coe v0) (coe v1) (coe v2) (coe v3) (coe v4)
                                                   (coe v5) (coe v6) (coe v7) (coe v8) (coe v14)
                                                   (coe v20))
                                                (d_'10214'_'10215'N_454
                                                   (coe v0) (coe v1) (coe v2) (coe v3) (coe v4)
                                                   (coe v5) (coe v6) (coe v7) (coe v8) (coe v17)
                                                   (coe v20))))
                                          (coe
                                             MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d__'42'__204
                                             v5
                                             (coe
                                                MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d__'43'__202
                                                v5
                                                (coe
                                                   MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d__'42'__204
                                                   v5
                                                   (d_'10214'_'10215'H_450
                                                      (coe v0) (coe v1) (coe v2) (coe v3) (coe v4)
                                                      (coe v5) (coe v6) (coe v7) (coe v8) (coe v13)
                                                      (coe
                                                         MAlonzo.Code.Data.Vec.Base.C__'8759'__36
                                                         v19 v20))
                                                   v19)
                                                (d_'10214'_'10215'N_454
                                                   (coe v0) (coe v1) (coe v2) (coe v3) (coe v4)
                                                   (coe v5) (coe v6) (coe v7) (coe v8) (coe v14)
                                                   (coe v20)))
                                             (coe
                                                MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d__'43'__202
                                                v5
                                                (coe
                                                   MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d__'42'__204
                                                   v5
                                                   (d_'10214'_'10215'H_450
                                                      (coe v0) (coe v1) (coe v2) (coe v3) (coe v4)
                                                      (coe v5) (coe v6) (coe v7) (coe v8) (coe v16)
                                                      (coe
                                                         MAlonzo.Code.Data.Vec.Base.C__'8759'__36
                                                         v19 v20))
                                                   v19)
                                                (d_'10214'_'10215'N_454
                                                   (coe v0) (coe v1) (coe v2) (coe v3) (coe v4)
                                                   (coe v5) (coe v6) (coe v7) (coe v8) (coe v17)
                                                   (coe v20))))
                                          (coe
                                             MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d__'42'__204
                                             v5
                                             (coe
                                                MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d__'43'__202
                                                v5
                                                (coe
                                                   MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d__'42'__204
                                                   v5
                                                   (d_'10214'_'10215'H_450
                                                      (coe v0) (coe v1) (coe v2) (coe v3) (coe v4)
                                                      (coe v5) (coe v6) (coe v7) (coe v8) (coe v13)
                                                      (coe
                                                         MAlonzo.Code.Data.Vec.Base.C__'8759'__36
                                                         v19 v20))
                                                   v19)
                                                (d_'10214'_'10215'N_454
                                                   (coe v0) (coe v1) (coe v2) (coe v3) (coe v4)
                                                   (coe v5) (coe v6) (coe v7) (coe v8) (coe v14)
                                                   (coe v20)))
                                             (coe
                                                MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d__'43'__202
                                                v5
                                                (coe
                                                   MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d__'42'__204
                                                   v5
                                                   (d_'10214'_'10215'H_450
                                                      (coe v0) (coe v1) (coe v2) (coe v3) (coe v4)
                                                      (coe v5) (coe v6) (coe v7) (coe v8) (coe v16)
                                                      (coe
                                                         MAlonzo.Code.Data.Vec.Base.C__'8759'__36
                                                         v19 v20))
                                                   v19)
                                                (d_'10214'_'10215'N_454
                                                   (coe v0) (coe v1) (coe v2) (coe v3) (coe v4)
                                                   (coe v5) (coe v6) (coe v7) (coe v8) (coe v17)
                                                   (coe v20))))
                                          (coe
                                             MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du__'8718'_86
                                             (coe
                                                MAlonzo.Code.Relation.Binary.Structures.d_refl_34
                                                (coe
                                                   MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_60
                                                   (let v21
                                                          = MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d_isAlmostCommutativeRing_212
                                                              (coe v5) in
                                                    let v22
                                                          = MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d_isCommutativeSemiring_62
                                                              (coe v21) in
                                                    let v23
                                                          = MAlonzo.Code.Algebra.Structures.d_isSemiring_1358
                                                              (coe v22) in
                                                    let v24
                                                          = MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1252
                                                              (coe v23) in
                                                    let v25
                                                          = MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_1158
                                                              (coe v24) in
                                                    let v26
                                                          = MAlonzo.Code.Algebra.Structures.d_isMonoid_416
                                                              (coe v25) in
                                                    let v27
                                                          = MAlonzo.Code.Algebra.Structures.d_isSemigroup_368
                                                              (coe v26) in
                                                    coe
                                                      MAlonzo.Code.Algebra.Structures.du_setoid_110
                                                      (coe
                                                         MAlonzo.Code.Algebra.Structures.d_isMagma_202
                                                         (coe v27)))))
                                             (coe
                                                MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d__'42'__204
                                                v5
                                                (coe
                                                   MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d__'43'__202
                                                   v5
                                                   (coe
                                                      MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d__'42'__204
                                                      v5
                                                      (d_'10214'_'10215'H_450
                                                         (coe v0) (coe v1) (coe v2) (coe v3)
                                                         (coe v4) (coe v5) (coe v6) (coe v7)
                                                         (coe v8) (coe v13)
                                                         (coe
                                                            MAlonzo.Code.Data.Vec.Base.C__'8759'__36
                                                            v19 v20))
                                                      v19)
                                                   (d_'10214'_'10215'N_454
                                                      (coe v0) (coe v1) (coe v2) (coe v3) (coe v4)
                                                      (coe v5) (coe v6) (coe v7) (coe v8) (coe v14)
                                                      (coe v20)))
                                                (coe
                                                   MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d__'43'__202
                                                   v5
                                                   (coe
                                                      MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d__'42'__204
                                                      v5
                                                      (d_'10214'_'10215'H_450
                                                         (coe v0) (coe v1) (coe v2) (coe v3)
                                                         (coe v4) (coe v5) (coe v6) (coe v7)
                                                         (coe v8) (coe v16)
                                                         (coe
                                                            MAlonzo.Code.Data.Vec.Base.C__'8759'__36
                                                            v19 v20))
                                                      v19)
                                                   (d_'10214'_'10215'N_454
                                                      (coe v0) (coe v1) (coe v2) (coe v3) (coe v4)
                                                      (coe v5) (coe v6) (coe v7) (coe v8) (coe v17)
                                                      (coe v20)))))
                                          (coe
                                             MAlonzo.Code.Algebra.Solver.Ring.Lemmas.du_lemma'8324'_324
                                             (coe v5)
                                             (coe
                                                d_'10214'_'10215'H_450 (coe v0) (coe v1) (coe v2)
                                                (coe v3) (coe v4) (coe v5) (coe v6) (coe v7)
                                                (coe v8) (coe v13)
                                                (coe
                                                   MAlonzo.Code.Data.Vec.Base.C__'8759'__36 v19
                                                   v20))
                                             (coe
                                                d_'10214'_'10215'N_454 (coe v0) (coe v1) (coe v2)
                                                (coe v3) (coe v4) (coe v5) (coe v6) (coe v7)
                                                (coe v8) (coe v14) (coe v20))
                                             (coe
                                                d_'10214'_'10215'H_450 (coe v0) (coe v1) (coe v2)
                                                (coe v3) (coe v4) (coe v5) (coe v6) (coe v7)
                                                (coe v8) (coe v16)
                                                (coe
                                                   MAlonzo.Code.Data.Vec.Base.C__'8759'__36 v19
                                                   v20))
                                             (coe
                                                d_'10214'_'10215'N_454 (coe v0) (coe v1) (coe v2)
                                                (coe v3) (coe v4) (coe v5) (coe v6) (coe v7)
                                                (coe v8) (coe v17) (coe v20))
                                             (coe v19)))
                                       (coe
                                          MAlonzo.Code.Function.Base.du__'10216'_'10217'__250
                                          (coe
                                             MAlonzo.Code.Function.Base.du__'10216'_'10217'__250
                                             (coe
                                                MAlonzo.Code.Function.Base.du__'10216'_'10217'__250
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
                                                                           MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d_isCommutativeSemiring_62
                                                                           (coe
                                                                              MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d_isAlmostCommutativeRing_212
                                                                              (coe v5))))))))))
                                                   (coe
                                                      MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d__'42'__204
                                                      v5
                                                      (coe
                                                         MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d__'42'__204
                                                         v5
                                                         (d_'10214'_'10215'H_450
                                                            (coe v0) (coe v1) (coe v2) (coe v3)
                                                            (coe v4) (coe v5) (coe v6) (coe v7)
                                                            (coe v8) (coe v13)
                                                            (coe
                                                               MAlonzo.Code.Data.Vec.Base.C__'8759'__36
                                                               v19 v20))
                                                         (d_'10214'_'10215'H_450
                                                            (coe v0) (coe v1) (coe v2) (coe v3)
                                                            (coe v4) (coe v5) (coe v6) (coe v7)
                                                            (coe v8) (coe v16)
                                                            (coe
                                                               MAlonzo.Code.Data.Vec.Base.C__'8759'__36
                                                               v19 v20)))
                                                      v19))
                                                (coe
                                                   MAlonzo.Code.Algebra.Structures.d_'8729''45'cong_96
                                                   (MAlonzo.Code.Algebra.Structures.d_isMagma_202
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
                                                                        MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d_isCommutativeSemiring_62
                                                                        (coe
                                                                           MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d_isAlmostCommutativeRing_212
                                                                           (coe v5)))))))))
                                                   (coe
                                                      MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d__'42'__204
                                                      v5
                                                      (coe
                                                         MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d__'42'__204
                                                         v5
                                                         (d_'10214'_'10215'H_450
                                                            (coe v0) (coe v1) (coe v2) (coe v3)
                                                            (coe v4) (coe v5) (coe v6) (coe v7)
                                                            (coe v8) (coe v13)
                                                            (coe
                                                               MAlonzo.Code.Data.Vec.Base.C__'8759'__36
                                                               v19 v20))
                                                         (d_'10214'_'10215'H_450
                                                            (coe v0) (coe v1) (coe v2) (coe v3)
                                                            (coe v4) (coe v5) (coe v6) (coe v7)
                                                            (coe v8) (coe v16)
                                                            (coe
                                                               MAlonzo.Code.Data.Vec.Base.C__'8759'__36
                                                               v19 v20)))
                                                      v19)
                                                   (coe
                                                      MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d__'42'__204
                                                      v5
                                                      (coe
                                                         MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d__'42'__204
                                                         v5
                                                         (d_'10214'_'10215'H_450
                                                            (coe v0) (coe v1) (coe v2) (coe v3)
                                                            (coe v4) (coe v5) (coe v6) (coe v7)
                                                            (coe v8) (coe v13)
                                                            (coe
                                                               MAlonzo.Code.Data.Vec.Base.C__'8759'__36
                                                               v19 v20))
                                                         (d_'10214'_'10215'H_450
                                                            (coe v0) (coe v1) (coe v2) (coe v3)
                                                            (coe v4) (coe v5) (coe v6) (coe v7)
                                                            (coe v8) (coe v16)
                                                            (coe
                                                               MAlonzo.Code.Data.Vec.Base.C__'8759'__36
                                                               v19 v20)))
                                                      v19)
                                                   (coe
                                                      MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d__'43'__202
                                                      v5
                                                      (d_'10214'_'10215'H_450
                                                         (coe v0) (coe v1) (coe v2) (coe v3)
                                                         (coe v4) (coe v5) (coe v6) (coe v7)
                                                         (coe v8)
                                                         (coe
                                                            d__'42'HN__718 (coe v0) (coe v1)
                                                            (coe v2) (coe v3) (coe v4) (coe v5)
                                                            (coe v6) (coe v7) (coe v8) (coe v13)
                                                            (coe v17))
                                                         (coe
                                                            MAlonzo.Code.Data.Vec.Base.C__'8759'__36
                                                            v19 v20))
                                                      (d_'10214'_'10215'H_450
                                                         (coe v0) (coe v1) (coe v2) (coe v3)
                                                         (coe v4) (coe v5) (coe v6) (coe v7)
                                                         (coe v8)
                                                         (coe
                                                            d__'42'NH__714 (coe v0) (coe v1)
                                                            (coe v2) (coe v3) (coe v4) (coe v5)
                                                            (coe v6) (coe v7) (coe v8) (coe v14)
                                                            (coe v16))
                                                         (coe
                                                            MAlonzo.Code.Data.Vec.Base.C__'8759'__36
                                                            v19 v20)))
                                                   (coe
                                                      MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d__'43'__202
                                                      v5
                                                      (coe
                                                         MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d__'42'__204
                                                         v5
                                                         (d_'10214'_'10215'H_450
                                                            (coe v0) (coe v1) (coe v2) (coe v3)
                                                            (coe v4) (coe v5) (coe v6) (coe v7)
                                                            (coe v8) (coe v13)
                                                            (coe
                                                               MAlonzo.Code.Data.Vec.Base.C__'8759'__36
                                                               v19 v20))
                                                         (d_'10214'_'10215'N_454
                                                            (coe v0) (coe v1) (coe v2) (coe v3)
                                                            (coe v4) (coe v5) (coe v6) (coe v7)
                                                            (coe v8) (coe v17) (coe v20)))
                                                      (coe
                                                         MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d__'42'__204
                                                         v5
                                                         (d_'10214'_'10215'N_454
                                                            (coe v0) (coe v1) (coe v2) (coe v3)
                                                            (coe v4) (coe v5) (coe v6) (coe v7)
                                                            (coe v8) (coe v14) (coe v20))
                                                         (d_'10214'_'10215'H_450
                                                            (coe v0) (coe v1) (coe v2) (coe v3)
                                                            (coe v4) (coe v5) (coe v6) (coe v7)
                                                            (coe v8) (coe v16)
                                                            (coe
                                                               MAlonzo.Code.Data.Vec.Base.C__'8759'__36
                                                               v19 v20)))))
                                                (coe
                                                   MAlonzo.Code.Function.Base.du__'10216'_'10217'__250
                                                   (coe
                                                      d_'42'HN'45'homo_1080 (coe v0) (coe v1)
                                                      (coe v2) (coe v3) (coe v4) (coe v5) (coe v6)
                                                      (coe v7) (coe v8) (coe v13) (coe v17)
                                                      (coe v19) (coe v20))
                                                   (coe
                                                      MAlonzo.Code.Algebra.Structures.d_'8729''45'cong_96
                                                      (MAlonzo.Code.Algebra.Structures.d_isMagma_202
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
                                                                           MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d_isCommutativeSemiring_62
                                                                           (coe
                                                                              MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d_isAlmostCommutativeRing_212
                                                                              (coe v5)))))))))
                                                      (d_'10214'_'10215'H_450
                                                         (coe v0) (coe v1) (coe v2) (coe v3)
                                                         (coe v4) (coe v5) (coe v6) (coe v7)
                                                         (coe v8)
                                                         (coe
                                                            d__'42'HN__718 (coe v0) (coe v1)
                                                            (coe v2) (coe v3) (coe v4) (coe v5)
                                                            (coe v6) (coe v7) (coe v8) (coe v13)
                                                            (coe v17))
                                                         (coe
                                                            MAlonzo.Code.Data.Vec.Base.C__'8759'__36
                                                            v19 v20))
                                                      (coe
                                                         MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d__'42'__204
                                                         v5
                                                         (d_'10214'_'10215'H_450
                                                            (coe v0) (coe v1) (coe v2) (coe v3)
                                                            (coe v4) (coe v5) (coe v6) (coe v7)
                                                            (coe v8) (coe v13)
                                                            (coe
                                                               MAlonzo.Code.Data.Vec.Base.C__'8759'__36
                                                               v19 v20))
                                                         (d_'10214'_'10215'N_454
                                                            (coe v0) (coe v1) (coe v2) (coe v3)
                                                            (coe v4) (coe v5) (coe v6) (coe v7)
                                                            (coe v8) (coe v17) (coe v20)))
                                                      (d_'10214'_'10215'H_450
                                                         (coe v0) (coe v1) (coe v2) (coe v3)
                                                         (coe v4) (coe v5) (coe v6) (coe v7)
                                                         (coe v8)
                                                         (coe
                                                            d__'42'NH__714 (coe v0) (coe v1)
                                                            (coe v2) (coe v3) (coe v4) (coe v5)
                                                            (coe v6) (coe v7) (coe v8) (coe v14)
                                                            (coe v16))
                                                         (coe
                                                            MAlonzo.Code.Data.Vec.Base.C__'8759'__36
                                                            v19 v20))
                                                      (coe
                                                         MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d__'42'__204
                                                         v5
                                                         (d_'10214'_'10215'N_454
                                                            (coe v0) (coe v1) (coe v2) (coe v3)
                                                            (coe v4) (coe v5) (coe v6) (coe v7)
                                                            (coe v8) (coe v14) (coe v20))
                                                         (d_'10214'_'10215'H_450
                                                            (coe v0) (coe v1) (coe v2) (coe v3)
                                                            (coe v4) (coe v5) (coe v6) (coe v7)
                                                            (coe v8) (coe v16)
                                                            (coe
                                                               MAlonzo.Code.Data.Vec.Base.C__'8759'__36
                                                               v19 v20))))
                                                   (coe
                                                      d_'42'NH'45'homo_1068 (coe v0) (coe v1)
                                                      (coe v2) (coe v3) (coe v4) (coe v5) (coe v6)
                                                      (coe v7) (coe v8) (coe v14) (coe v16)
                                                      (coe v19) (coe v20))))
                                             (coe
                                                MAlonzo.Code.Algebra.Structures.d_'8729''45'cong_96
                                                (MAlonzo.Code.Algebra.Structures.d_isMagma_202
                                                   (coe
                                                      MAlonzo.Code.Algebra.Structures.d_isSemigroup_368
                                                      (coe
                                                         MAlonzo.Code.Algebra.Structures.d_'42''45'isMonoid_1160
                                                         (coe
                                                            MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1252
                                                            (coe
                                                               MAlonzo.Code.Algebra.Structures.d_isSemiring_1358
                                                               (coe
                                                                  MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d_isCommutativeSemiring_62
                                                                  (coe
                                                                     MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d_isAlmostCommutativeRing_212
                                                                     (coe v5))))))))
                                                (coe
                                                   MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d__'43'__202
                                                   v5
                                                   (coe
                                                      MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d__'42'__204
                                                      v5
                                                      (coe
                                                         MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d__'42'__204
                                                         v5
                                                         (d_'10214'_'10215'H_450
                                                            (coe v0) (coe v1) (coe v2) (coe v3)
                                                            (coe v4) (coe v5) (coe v6) (coe v7)
                                                            (coe v8) (coe v13)
                                                            (coe
                                                               MAlonzo.Code.Data.Vec.Base.C__'8759'__36
                                                               v19 v20))
                                                         (d_'10214'_'10215'H_450
                                                            (coe v0) (coe v1) (coe v2) (coe v3)
                                                            (coe v4) (coe v5) (coe v6) (coe v7)
                                                            (coe v8) (coe v16)
                                                            (coe
                                                               MAlonzo.Code.Data.Vec.Base.C__'8759'__36
                                                               v19 v20)))
                                                      v19)
                                                   (coe
                                                      MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d__'43'__202
                                                      v5
                                                      (d_'10214'_'10215'H_450
                                                         (coe v0) (coe v1) (coe v2) (coe v3)
                                                         (coe v4) (coe v5) (coe v6) (coe v7)
                                                         (coe v8)
                                                         (coe
                                                            d__'42'HN__718 (coe v0) (coe v1)
                                                            (coe v2) (coe v3) (coe v4) (coe v5)
                                                            (coe v6) (coe v7) (coe v8) (coe v13)
                                                            (coe v17))
                                                         (coe
                                                            MAlonzo.Code.Data.Vec.Base.C__'8759'__36
                                                            v19 v20))
                                                      (d_'10214'_'10215'H_450
                                                         (coe v0) (coe v1) (coe v2) (coe v3)
                                                         (coe v4) (coe v5) (coe v6) (coe v7)
                                                         (coe v8)
                                                         (coe
                                                            d__'42'NH__714 (coe v0) (coe v1)
                                                            (coe v2) (coe v3) (coe v4) (coe v5)
                                                            (coe v6) (coe v7) (coe v8) (coe v14)
                                                            (coe v16))
                                                         (coe
                                                            MAlonzo.Code.Data.Vec.Base.C__'8759'__36
                                                            v19 v20))))
                                                (coe
                                                   MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d__'43'__202
                                                   v5
                                                   (coe
                                                      MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d__'42'__204
                                                      v5
                                                      (coe
                                                         MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d__'42'__204
                                                         v5
                                                         (d_'10214'_'10215'H_450
                                                            (coe v0) (coe v1) (coe v2) (coe v3)
                                                            (coe v4) (coe v5) (coe v6) (coe v7)
                                                            (coe v8) (coe v13)
                                                            (coe
                                                               MAlonzo.Code.Data.Vec.Base.C__'8759'__36
                                                               v19 v20))
                                                         (d_'10214'_'10215'H_450
                                                            (coe v0) (coe v1) (coe v2) (coe v3)
                                                            (coe v4) (coe v5) (coe v6) (coe v7)
                                                            (coe v8) (coe v16)
                                                            (coe
                                                               MAlonzo.Code.Data.Vec.Base.C__'8759'__36
                                                               v19 v20)))
                                                      v19)
                                                   (coe
                                                      MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d__'43'__202
                                                      v5
                                                      (coe
                                                         MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d__'42'__204
                                                         v5
                                                         (d_'10214'_'10215'H_450
                                                            (coe v0) (coe v1) (coe v2) (coe v3)
                                                            (coe v4) (coe v5) (coe v6) (coe v7)
                                                            (coe v8) (coe v13)
                                                            (coe
                                                               MAlonzo.Code.Data.Vec.Base.C__'8759'__36
                                                               v19 v20))
                                                         (d_'10214'_'10215'N_454
                                                            (coe v0) (coe v1) (coe v2) (coe v3)
                                                            (coe v4) (coe v5) (coe v6) (coe v7)
                                                            (coe v8) (coe v17) (coe v20)))
                                                      (coe
                                                         MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d__'42'__204
                                                         v5
                                                         (d_'10214'_'10215'N_454
                                                            (coe v0) (coe v1) (coe v2) (coe v3)
                                                            (coe v4) (coe v5) (coe v6) (coe v7)
                                                            (coe v8) (coe v14) (coe v20))
                                                         (d_'10214'_'10215'H_450
                                                            (coe v0) (coe v1) (coe v2) (coe v3)
                                                            (coe v4) (coe v5) (coe v6) (coe v7)
                                                            (coe v8) (coe v16)
                                                            (coe
                                                               MAlonzo.Code.Data.Vec.Base.C__'8759'__36
                                                               v19 v20)))))
                                                v19 v19)
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
                                                                        MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d_isCommutativeSemiring_62
                                                                        (coe
                                                                           MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d_isAlmostCommutativeRing_212
                                                                           (coe v5))))))))))
                                                v19))
                                          (coe
                                             MAlonzo.Code.Algebra.Structures.d_'8729''45'cong_96
                                             (MAlonzo.Code.Algebra.Structures.d_isMagma_202
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
                                                                  MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d_isCommutativeSemiring_62
                                                                  (coe
                                                                     MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d_isAlmostCommutativeRing_212
                                                                     (coe v5)))))))))
                                             (coe
                                                MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d__'42'__204
                                                v5
                                                (coe
                                                   MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d__'43'__202
                                                   v5
                                                   (coe
                                                      MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d__'42'__204
                                                      v5
                                                      (coe
                                                         MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d__'42'__204
                                                         v5
                                                         (d_'10214'_'10215'H_450
                                                            (coe v0) (coe v1) (coe v2) (coe v3)
                                                            (coe v4) (coe v5) (coe v6) (coe v7)
                                                            (coe v8) (coe v13)
                                                            (coe
                                                               MAlonzo.Code.Data.Vec.Base.C__'8759'__36
                                                               v19 v20))
                                                         (d_'10214'_'10215'H_450
                                                            (coe v0) (coe v1) (coe v2) (coe v3)
                                                            (coe v4) (coe v5) (coe v6) (coe v7)
                                                            (coe v8) (coe v16)
                                                            (coe
                                                               MAlonzo.Code.Data.Vec.Base.C__'8759'__36
                                                               v19 v20)))
                                                      v19)
                                                   (coe
                                                      MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d__'43'__202
                                                      v5
                                                      (d_'10214'_'10215'H_450
                                                         (coe v0) (coe v1) (coe v2) (coe v3)
                                                         (coe v4) (coe v5) (coe v6) (coe v7)
                                                         (coe v8)
                                                         (coe
                                                            d__'42'HN__718 (coe v0) (coe v1)
                                                            (coe v2) (coe v3) (coe v4) (coe v5)
                                                            (coe v6) (coe v7) (coe v8) (coe v13)
                                                            (coe v17))
                                                         (coe
                                                            MAlonzo.Code.Data.Vec.Base.C__'8759'__36
                                                            v19 v20))
                                                      (d_'10214'_'10215'H_450
                                                         (coe v0) (coe v1) (coe v2) (coe v3)
                                                         (coe v4) (coe v5) (coe v6) (coe v7)
                                                         (coe v8)
                                                         (coe
                                                            d__'42'NH__714 (coe v0) (coe v1)
                                                            (coe v2) (coe v3) (coe v4) (coe v5)
                                                            (coe v6) (coe v7) (coe v8) (coe v14)
                                                            (coe v16))
                                                         (coe
                                                            MAlonzo.Code.Data.Vec.Base.C__'8759'__36
                                                            v19 v20))))
                                                v19)
                                             (coe
                                                MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d__'42'__204
                                                v5
                                                (coe
                                                   MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d__'43'__202
                                                   v5
                                                   (coe
                                                      MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d__'42'__204
                                                      v5
                                                      (coe
                                                         MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d__'42'__204
                                                         v5
                                                         (d_'10214'_'10215'H_450
                                                            (coe v0) (coe v1) (coe v2) (coe v3)
                                                            (coe v4) (coe v5) (coe v6) (coe v7)
                                                            (coe v8) (coe v13)
                                                            (coe
                                                               MAlonzo.Code.Data.Vec.Base.C__'8759'__36
                                                               v19 v20))
                                                         (d_'10214'_'10215'H_450
                                                            (coe v0) (coe v1) (coe v2) (coe v3)
                                                            (coe v4) (coe v5) (coe v6) (coe v7)
                                                            (coe v8) (coe v16)
                                                            (coe
                                                               MAlonzo.Code.Data.Vec.Base.C__'8759'__36
                                                               v19 v20)))
                                                      v19)
                                                   (coe
                                                      MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d__'43'__202
                                                      v5
                                                      (coe
                                                         MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d__'42'__204
                                                         v5
                                                         (d_'10214'_'10215'H_450
                                                            (coe v0) (coe v1) (coe v2) (coe v3)
                                                            (coe v4) (coe v5) (coe v6) (coe v7)
                                                            (coe v8) (coe v13)
                                                            (coe
                                                               MAlonzo.Code.Data.Vec.Base.C__'8759'__36
                                                               v19 v20))
                                                         (d_'10214'_'10215'N_454
                                                            (coe v0) (coe v1) (coe v2) (coe v3)
                                                            (coe v4) (coe v5) (coe v6) (coe v7)
                                                            (coe v8) (coe v17) (coe v20)))
                                                      (coe
                                                         MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d__'42'__204
                                                         v5
                                                         (d_'10214'_'10215'N_454
                                                            (coe v0) (coe v1) (coe v2) (coe v3)
                                                            (coe v4) (coe v5) (coe v6) (coe v7)
                                                            (coe v8) (coe v14) (coe v20))
                                                         (d_'10214'_'10215'H_450
                                                            (coe v0) (coe v1) (coe v2) (coe v3)
                                                            (coe v4) (coe v5) (coe v6) (coe v7)
                                                            (coe v8) (coe v16)
                                                            (coe
                                                               MAlonzo.Code.Data.Vec.Base.C__'8759'__36
                                                               v19 v20)))))
                                                v19)
                                             (coe
                                                MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d__'42'__204
                                                v5
                                                (d_'10214'_'10215'N_454
                                                   (coe v0) (coe v1) (coe v2) (coe v3) (coe v4)
                                                   (coe v5) (coe v6) (coe v7) (coe v8) (coe v14)
                                                   (coe v20))
                                                (d_'10214'_'10215'N_454
                                                   (coe v0) (coe v1) (coe v2) (coe v3) (coe v4)
                                                   (coe v5) (coe v6) (coe v7) (coe v8) (coe v17)
                                                   (coe v20)))
                                             (coe
                                                MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d__'42'__204
                                                v5
                                                (d_'10214'_'10215'N_454
                                                   (coe v0) (coe v1) (coe v2) (coe v3) (coe v4)
                                                   (coe v5) (coe v6) (coe v7) (coe v8) (coe v14)
                                                   (coe v20))
                                                (d_'10214'_'10215'N_454
                                                   (coe v0) (coe v1) (coe v2) (coe v3) (coe v4)
                                                   (coe v5) (coe v6) (coe v7) (coe v8) (coe v17)
                                                   (coe v20))))
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
                                                                     MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d_isCommutativeSemiring_62
                                                                     (coe
                                                                        MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d_isAlmostCommutativeRing_212
                                                                        (coe v5))))))))))
                                             (coe
                                                MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d__'42'__204
                                                v5
                                                (d_'10214'_'10215'N_454
                                                   (coe v0) (coe v1) (coe v2) (coe v3) (coe v4)
                                                   (coe v5) (coe v6) (coe v7) (coe v8) (coe v14)
                                                   (coe v20))
                                                (d_'10214'_'10215'N_454
                                                   (coe v0) (coe v1) (coe v2) (coe v3) (coe v4)
                                                   (coe v5) (coe v6) (coe v7) (coe v8) (coe v17)
                                                   (coe v20))))))
                                    (coe
                                       MAlonzo.Code.Function.Base.du__'10216'_'10217'__250
                                       (coe
                                          MAlonzo.Code.Function.Base.du__'10216'_'10217'__250
                                          (coe
                                             MAlonzo.Code.Function.Base.du__'10216'_'10217'__250
                                             (coe
                                                MAlonzo.Code.Function.Base.du__'10216'_'10217'__250
                                                (coe
                                                   d_'42'H'45'homo_1090 (coe v0) (coe v1) (coe v2)
                                                   (coe v3) (coe v4) (coe v5) (coe v6) (coe v7)
                                                   (coe v8) (coe v13) (coe v16)
                                                   (coe
                                                      MAlonzo.Code.Data.Vec.Base.C__'8759'__36 v19
                                                      v20))
                                                (coe
                                                   MAlonzo.Code.Algebra.Structures.d_'8729''45'cong_96
                                                   (MAlonzo.Code.Algebra.Structures.d_isMagma_202
                                                      (coe
                                                         MAlonzo.Code.Algebra.Structures.d_isSemigroup_368
                                                         (coe
                                                            MAlonzo.Code.Algebra.Structures.d_'42''45'isMonoid_1160
                                                            (coe
                                                               MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1252
                                                               (coe
                                                                  MAlonzo.Code.Algebra.Structures.d_isSemiring_1358
                                                                  (coe
                                                                     MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d_isCommutativeSemiring_62
                                                                     (coe
                                                                        MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d_isAlmostCommutativeRing_212
                                                                        (coe v5))))))))
                                                   (d_'10214'_'10215'H_450
                                                      (coe v0) (coe v1) (coe v2) (coe v3) (coe v4)
                                                      (coe v5) (coe v6) (coe v7) (coe v8)
                                                      (coe
                                                         d__'42'H__722 (coe v0) (coe v1) (coe v2)
                                                         (coe v3) (coe v4) (coe v5) (coe v6)
                                                         (coe v7) (coe v8) (coe v13) (coe v16))
                                                      (coe
                                                         MAlonzo.Code.Data.Vec.Base.C__'8759'__36
                                                         v19 v20))
                                                   (coe
                                                      MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d__'42'__204
                                                      v5
                                                      (d_'10214'_'10215'H_450
                                                         (coe v0) (coe v1) (coe v2) (coe v3)
                                                         (coe v4) (coe v5) (coe v6) (coe v7)
                                                         (coe v8) (coe v13)
                                                         (coe
                                                            MAlonzo.Code.Data.Vec.Base.C__'8759'__36
                                                            v19 v20))
                                                      (d_'10214'_'10215'H_450
                                                         (coe v0) (coe v1) (coe v2) (coe v3)
                                                         (coe v4) (coe v5) (coe v6) (coe v7)
                                                         (coe v8) (coe v16)
                                                         (coe
                                                            MAlonzo.Code.Data.Vec.Base.C__'8759'__36
                                                            v19 v20)))
                                                   v19 v19)
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
                                                                           MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d_isCommutativeSemiring_62
                                                                           (coe
                                                                              MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d_isAlmostCommutativeRing_212
                                                                              (coe v5))))))))))
                                                   v19))
                                             (coe
                                                MAlonzo.Code.Algebra.Structures.d_'8729''45'cong_96
                                                (MAlonzo.Code.Algebra.Structures.d_isMagma_202
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
                                                                     MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d_isCommutativeSemiring_62
                                                                     (coe
                                                                        MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d_isAlmostCommutativeRing_212
                                                                        (coe v5)))))))))
                                                (coe
                                                   MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d__'42'__204
                                                   v5
                                                   (d_'10214'_'10215'H_450
                                                      (coe v0) (coe v1) (coe v2) (coe v3) (coe v4)
                                                      (coe v5) (coe v6) (coe v7) (coe v8)
                                                      (coe
                                                         d__'42'H__722 (coe v0) (coe v1) (coe v2)
                                                         (coe v3) (coe v4) (coe v5) (coe v6)
                                                         (coe v7) (coe v8) (coe v13) (coe v16))
                                                      (coe
                                                         MAlonzo.Code.Data.Vec.Base.C__'8759'__36
                                                         v19 v20))
                                                   v19)
                                                (coe
                                                   MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d__'42'__204
                                                   v5
                                                   (coe
                                                      MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d__'42'__204
                                                      v5
                                                      (d_'10214'_'10215'H_450
                                                         (coe v0) (coe v1) (coe v2) (coe v3)
                                                         (coe v4) (coe v5) (coe v6) (coe v7)
                                                         (coe v8) (coe v13)
                                                         (coe
                                                            MAlonzo.Code.Data.Vec.Base.C__'8759'__36
                                                            v19 v20))
                                                      (d_'10214'_'10215'H_450
                                                         (coe v0) (coe v1) (coe v2) (coe v3)
                                                         (coe v4) (coe v5) (coe v6) (coe v7)
                                                         (coe v8) (coe v16)
                                                         (coe
                                                            MAlonzo.Code.Data.Vec.Base.C__'8759'__36
                                                            v19 v20)))
                                                   v19)
                                                (d_'10214'_'10215'H_450
                                                   (coe v0) (coe v1) (coe v2) (coe v3) (coe v4)
                                                   (coe v5) (coe v6) (coe v7) (coe v8)
                                                   (coe
                                                      d__'43'H__672 (coe v0) (coe v1) (coe v2)
                                                      (coe v3) (coe v4) (coe v5) (coe v6) (coe v7)
                                                      (coe v8)
                                                      (coe
                                                         d__'42'HN__718 (coe v0) (coe v1) (coe v2)
                                                         (coe v3) (coe v4) (coe v5) (coe v6)
                                                         (coe v7) (coe v8) (coe v13) (coe v17))
                                                      (coe
                                                         d__'42'NH__714 (coe v0) (coe v1) (coe v2)
                                                         (coe v3) (coe v4) (coe v5) (coe v6)
                                                         (coe v7) (coe v8) (coe v14) (coe v16)))
                                                   (coe
                                                      MAlonzo.Code.Data.Vec.Base.C__'8759'__36 v19
                                                      v20))
                                                (coe
                                                   MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d__'43'__202
                                                   v5
                                                   (d_'10214'_'10215'H_450
                                                      (coe v0) (coe v1) (coe v2) (coe v3) (coe v4)
                                                      (coe v5) (coe v6) (coe v7) (coe v8)
                                                      (coe
                                                         d__'42'HN__718 (coe v0) (coe v1) (coe v2)
                                                         (coe v3) (coe v4) (coe v5) (coe v6)
                                                         (coe v7) (coe v8) (coe v13) (coe v17))
                                                      (coe
                                                         MAlonzo.Code.Data.Vec.Base.C__'8759'__36
                                                         v19 v20))
                                                   (d_'10214'_'10215'H_450
                                                      (coe v0) (coe v1) (coe v2) (coe v3) (coe v4)
                                                      (coe v5) (coe v6) (coe v7) (coe v8)
                                                      (coe
                                                         d__'42'NH__714 (coe v0) (coe v1) (coe v2)
                                                         (coe v3) (coe v4) (coe v5) (coe v6)
                                                         (coe v7) (coe v8) (coe v14) (coe v16))
                                                      (coe
                                                         MAlonzo.Code.Data.Vec.Base.C__'8759'__36
                                                         v19 v20))))
                                             (coe
                                                d_'43'H'45'homo_984 (coe v0) (coe v1) (coe v2)
                                                (coe v3) (coe v4) (coe v5) (coe v6) (coe v7)
                                                (coe v8)
                                                (coe
                                                   d__'42'HN__718 (coe v0) (coe v1) (coe v2)
                                                   (coe v3) (coe v4) (coe v5) (coe v6) (coe v7)
                                                   (coe v8) (coe v13) (coe v17))
                                                (coe
                                                   d__'42'NH__714 (coe v0) (coe v1) (coe v2)
                                                   (coe v3) (coe v4) (coe v5) (coe v6) (coe v7)
                                                   (coe v8) (coe v14) (coe v16))
                                                (coe
                                                   MAlonzo.Code.Data.Vec.Base.C__'8759'__36 v19
                                                   v20)))
                                          (coe
                                             MAlonzo.Code.Algebra.Structures.d_'8729''45'cong_96
                                             (MAlonzo.Code.Algebra.Structures.d_isMagma_202
                                                (coe
                                                   MAlonzo.Code.Algebra.Structures.d_isSemigroup_368
                                                   (coe
                                                      MAlonzo.Code.Algebra.Structures.d_'42''45'isMonoid_1160
                                                      (coe
                                                         MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1252
                                                         (coe
                                                            MAlonzo.Code.Algebra.Structures.d_isSemiring_1358
                                                            (coe
                                                               MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d_isCommutativeSemiring_62
                                                               (coe
                                                                  MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d_isAlmostCommutativeRing_212
                                                                  (coe v5))))))))
                                             (coe
                                                MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d__'43'__202
                                                v5
                                                (coe
                                                   MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d__'42'__204
                                                   v5
                                                   (d_'10214'_'10215'H_450
                                                      (coe v0) (coe v1) (coe v2) (coe v3) (coe v4)
                                                      (coe v5) (coe v6) (coe v7) (coe v8)
                                                      (coe
                                                         d__'42'H__722 (coe v0) (coe v1) (coe v2)
                                                         (coe v3) (coe v4) (coe v5) (coe v6)
                                                         (coe v7) (coe v8) (coe v13) (coe v16))
                                                      (coe
                                                         MAlonzo.Code.Data.Vec.Base.C__'8759'__36
                                                         v19 v20))
                                                   v19)
                                                (d_'10214'_'10215'H_450
                                                   (coe v0) (coe v1) (coe v2) (coe v3) (coe v4)
                                                   (coe v5) (coe v6) (coe v7) (coe v8)
                                                   (coe
                                                      d__'43'H__672 (coe v0) (coe v1) (coe v2)
                                                      (coe v3) (coe v4) (coe v5) (coe v6) (coe v7)
                                                      (coe v8)
                                                      (coe
                                                         d__'42'HN__718 (coe v0) (coe v1) (coe v2)
                                                         (coe v3) (coe v4) (coe v5) (coe v6)
                                                         (coe v7) (coe v8) (coe v13) (coe v17))
                                                      (coe
                                                         d__'42'NH__714 (coe v0) (coe v1) (coe v2)
                                                         (coe v3) (coe v4) (coe v5) (coe v6)
                                                         (coe v7) (coe v8) (coe v14) (coe v16)))
                                                   (coe
                                                      MAlonzo.Code.Data.Vec.Base.C__'8759'__36 v19
                                                      v20)))
                                             (coe
                                                MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d__'43'__202
                                                v5
                                                (coe
                                                   MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d__'42'__204
                                                   v5
                                                   (coe
                                                      MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d__'42'__204
                                                      v5
                                                      (d_'10214'_'10215'H_450
                                                         (coe v0) (coe v1) (coe v2) (coe v3)
                                                         (coe v4) (coe v5) (coe v6) (coe v7)
                                                         (coe v8) (coe v13)
                                                         (coe
                                                            MAlonzo.Code.Data.Vec.Base.C__'8759'__36
                                                            v19 v20))
                                                      (d_'10214'_'10215'H_450
                                                         (coe v0) (coe v1) (coe v2) (coe v3)
                                                         (coe v4) (coe v5) (coe v6) (coe v7)
                                                         (coe v8) (coe v16)
                                                         (coe
                                                            MAlonzo.Code.Data.Vec.Base.C__'8759'__36
                                                            v19 v20)))
                                                   v19)
                                                (coe
                                                   MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d__'43'__202
                                                   v5
                                                   (d_'10214'_'10215'H_450
                                                      (coe v0) (coe v1) (coe v2) (coe v3) (coe v4)
                                                      (coe v5) (coe v6) (coe v7) (coe v8)
                                                      (coe
                                                         d__'42'HN__718 (coe v0) (coe v1) (coe v2)
                                                         (coe v3) (coe v4) (coe v5) (coe v6)
                                                         (coe v7) (coe v8) (coe v13) (coe v17))
                                                      (coe
                                                         MAlonzo.Code.Data.Vec.Base.C__'8759'__36
                                                         v19 v20))
                                                   (d_'10214'_'10215'H_450
                                                      (coe v0) (coe v1) (coe v2) (coe v3) (coe v4)
                                                      (coe v5) (coe v6) (coe v7) (coe v8)
                                                      (coe
                                                         d__'42'NH__714 (coe v0) (coe v1) (coe v2)
                                                         (coe v3) (coe v4) (coe v5) (coe v6)
                                                         (coe v7) (coe v8) (coe v14) (coe v16))
                                                      (coe
                                                         MAlonzo.Code.Data.Vec.Base.C__'8759'__36
                                                         v19 v20))))
                                             v19 v19)
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
                                                                     MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d_isCommutativeSemiring_62
                                                                     (coe
                                                                        MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d_isAlmostCommutativeRing_212
                                                                        (coe v5))))))))))
                                             v19))
                                       (coe
                                          MAlonzo.Code.Algebra.Structures.d_'8729''45'cong_96
                                          (MAlonzo.Code.Algebra.Structures.d_isMagma_202
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
                                                               MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d_isCommutativeSemiring_62
                                                               (coe
                                                                  MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d_isAlmostCommutativeRing_212
                                                                  (coe v5)))))))))
                                          (coe
                                             MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d__'42'__204
                                             v5
                                             (coe
                                                MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d__'43'__202
                                                v5
                                                (coe
                                                   MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d__'42'__204
                                                   v5
                                                   (d_'10214'_'10215'H_450
                                                      (coe v0) (coe v1) (coe v2) (coe v3) (coe v4)
                                                      (coe v5) (coe v6) (coe v7) (coe v8)
                                                      (coe
                                                         d__'42'H__722 (coe v0) (coe v1) (coe v2)
                                                         (coe v3) (coe v4) (coe v5) (coe v6)
                                                         (coe v7) (coe v8) (coe v13) (coe v16))
                                                      (coe
                                                         MAlonzo.Code.Data.Vec.Base.C__'8759'__36
                                                         v19 v20))
                                                   v19)
                                                (d_'10214'_'10215'H_450
                                                   (coe v0) (coe v1) (coe v2) (coe v3) (coe v4)
                                                   (coe v5) (coe v6) (coe v7) (coe v8)
                                                   (coe
                                                      d__'43'H__672 (coe v0) (coe v1) (coe v2)
                                                      (coe v3) (coe v4) (coe v5) (coe v6) (coe v7)
                                                      (coe v8)
                                                      (coe
                                                         d__'42'HN__718 (coe v0) (coe v1) (coe v2)
                                                         (coe v3) (coe v4) (coe v5) (coe v6)
                                                         (coe v7) (coe v8) (coe v13) (coe v17))
                                                      (coe
                                                         d__'42'NH__714 (coe v0) (coe v1) (coe v2)
                                                         (coe v3) (coe v4) (coe v5) (coe v6)
                                                         (coe v7) (coe v8) (coe v14) (coe v16)))
                                                   (coe
                                                      MAlonzo.Code.Data.Vec.Base.C__'8759'__36 v19
                                                      v20)))
                                             v19)
                                          (coe
                                             MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d__'42'__204
                                             v5
                                             (coe
                                                MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d__'43'__202
                                                v5
                                                (coe
                                                   MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d__'42'__204
                                                   v5
                                                   (coe
                                                      MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d__'42'__204
                                                      v5
                                                      (d_'10214'_'10215'H_450
                                                         (coe v0) (coe v1) (coe v2) (coe v3)
                                                         (coe v4) (coe v5) (coe v6) (coe v7)
                                                         (coe v8) (coe v13)
                                                         (coe
                                                            MAlonzo.Code.Data.Vec.Base.C__'8759'__36
                                                            v19 v20))
                                                      (d_'10214'_'10215'H_450
                                                         (coe v0) (coe v1) (coe v2) (coe v3)
                                                         (coe v4) (coe v5) (coe v6) (coe v7)
                                                         (coe v8) (coe v16)
                                                         (coe
                                                            MAlonzo.Code.Data.Vec.Base.C__'8759'__36
                                                            v19 v20)))
                                                   v19)
                                                (coe
                                                   MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d__'43'__202
                                                   v5
                                                   (d_'10214'_'10215'H_450
                                                      (coe v0) (coe v1) (coe v2) (coe v3) (coe v4)
                                                      (coe v5) (coe v6) (coe v7) (coe v8)
                                                      (coe
                                                         d__'42'HN__718 (coe v0) (coe v1) (coe v2)
                                                         (coe v3) (coe v4) (coe v5) (coe v6)
                                                         (coe v7) (coe v8) (coe v13) (coe v17))
                                                      (coe
                                                         MAlonzo.Code.Data.Vec.Base.C__'8759'__36
                                                         v19 v20))
                                                   (d_'10214'_'10215'H_450
                                                      (coe v0) (coe v1) (coe v2) (coe v3) (coe v4)
                                                      (coe v5) (coe v6) (coe v7) (coe v8)
                                                      (coe
                                                         d__'42'NH__714 (coe v0) (coe v1) (coe v2)
                                                         (coe v3) (coe v4) (coe v5) (coe v6)
                                                         (coe v7) (coe v8) (coe v14) (coe v16))
                                                      (coe
                                                         MAlonzo.Code.Data.Vec.Base.C__'8759'__36
                                                         v19 v20))))
                                             v19)
                                          (coe
                                             MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d__'42'__204
                                             v5
                                             (d_'10214'_'10215'N_454
                                                (coe v0) (coe v1) (coe v2) (coe v3) (coe v4)
                                                (coe v5) (coe v6) (coe v7) (coe v8) (coe v14)
                                                (coe v20))
                                             (d_'10214'_'10215'N_454
                                                (coe v0) (coe v1) (coe v2) (coe v3) (coe v4)
                                                (coe v5) (coe v6) (coe v7) (coe v8) (coe v17)
                                                (coe v20)))
                                          (coe
                                             MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d__'42'__204
                                             v5
                                             (d_'10214'_'10215'N_454
                                                (coe v0) (coe v1) (coe v2) (coe v3) (coe v4)
                                                (coe v5) (coe v6) (coe v7) (coe v8) (coe v14)
                                                (coe v20))
                                             (d_'10214'_'10215'N_454
                                                (coe v0) (coe v1) (coe v2) (coe v3) (coe v4)
                                                (coe v5) (coe v6) (coe v7) (coe v8) (coe v17)
                                                (coe v20))))
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
                                                                  MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d_isCommutativeSemiring_62
                                                                  (coe
                                                                     MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d_isAlmostCommutativeRing_212
                                                                     (coe v5))))))))))
                                          (coe
                                             MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d__'42'__204
                                             v5
                                             (d_'10214'_'10215'N_454
                                                (coe v0) (coe v1) (coe v2) (coe v3) (coe v4)
                                                (coe v5) (coe v6) (coe v7) (coe v8) (coe v14)
                                                (coe v20))
                                             (d_'10214'_'10215'N_454
                                                (coe v0) (coe v1) (coe v2) (coe v3) (coe v4)
                                                (coe v5) (coe v6) (coe v7) (coe v8) (coe v17)
                                                (coe v20))))))
                                 (coe
                                    MAlonzo.Code.Function.Base.du__'10216'_'10217'__250
                                    (coe
                                       MAlonzo.Code.Function.Base.du__'10216'_'10217'__250
                                       (coe
                                          d_'42'x'43'H'45'homo_1038 (coe v0) (coe v1) (coe v2)
                                          (coe v3) (coe v4) (coe v5) (coe v6) (coe v7) (coe v8)
                                          (coe
                                             d__'42'H__722 (coe v0) (coe v1) (coe v2) (coe v3)
                                             (coe v4) (coe v5) (coe v6) (coe v7) (coe v8) (coe v13)
                                             (coe v16))
                                          (coe
                                             d__'43'H__672 (coe v0) (coe v1) (coe v2) (coe v3)
                                             (coe v4) (coe v5) (coe v6) (coe v7) (coe v8)
                                             (coe
                                                d__'42'HN__718 (coe v0) (coe v1) (coe v2) (coe v3)
                                                (coe v4) (coe v5) (coe v6) (coe v7) (coe v8)
                                                (coe v13) (coe v17))
                                             (coe
                                                d__'42'NH__714 (coe v0) (coe v1) (coe v2) (coe v3)
                                                (coe v4) (coe v5) (coe v6) (coe v7) (coe v8)
                                                (coe v14) (coe v16)))
                                          (coe v19) (coe v20))
                                       (coe
                                          MAlonzo.Code.Algebra.Structures.d_'8729''45'cong_96
                                          (MAlonzo.Code.Algebra.Structures.d_isMagma_202
                                             (coe
                                                MAlonzo.Code.Algebra.Structures.d_isSemigroup_368
                                                (coe
                                                   MAlonzo.Code.Algebra.Structures.d_'42''45'isMonoid_1160
                                                   (coe
                                                      MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1252
                                                      (coe
                                                         MAlonzo.Code.Algebra.Structures.d_isSemiring_1358
                                                         (coe
                                                            MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d_isCommutativeSemiring_62
                                                            (coe
                                                               MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d_isAlmostCommutativeRing_212
                                                               (coe v5))))))))
                                          (d_'10214'_'10215'H_450
                                             (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5)
                                             (coe v6) (coe v7) (coe v8)
                                             (coe
                                                d__'42'x'43'H__700 (coe v0) (coe v1) (coe v2)
                                                (coe v3) (coe v4) (coe v5) (coe v6) (coe v7)
                                                (coe v8)
                                                (coe
                                                   d__'42'H__722 (coe v0) (coe v1) (coe v2) (coe v3)
                                                   (coe v4) (coe v5) (coe v6) (coe v7) (coe v8)
                                                   (coe v13) (coe v16))
                                                (coe
                                                   d__'43'H__672 (coe v0) (coe v1) (coe v2) (coe v3)
                                                   (coe v4) (coe v5) (coe v6) (coe v7) (coe v8)
                                                   (coe
                                                      d__'42'HN__718 (coe v0) (coe v1) (coe v2)
                                                      (coe v3) (coe v4) (coe v5) (coe v6) (coe v7)
                                                      (coe v8) (coe v13) (coe v17))
                                                   (coe
                                                      d__'42'NH__714 (coe v0) (coe v1) (coe v2)
                                                      (coe v3) (coe v4) (coe v5) (coe v6) (coe v7)
                                                      (coe v8) (coe v14) (coe v16))))
                                             (coe MAlonzo.Code.Data.Vec.Base.C__'8759'__36 v19 v20))
                                          (coe
                                             MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d__'43'__202
                                             v5
                                             (coe
                                                MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d__'42'__204
                                                v5
                                                (d_'10214'_'10215'H_450
                                                   (coe v0) (coe v1) (coe v2) (coe v3) (coe v4)
                                                   (coe v5) (coe v6) (coe v7) (coe v8)
                                                   (coe
                                                      d__'42'H__722 (coe v0) (coe v1) (coe v2)
                                                      (coe v3) (coe v4) (coe v5) (coe v6) (coe v7)
                                                      (coe v8) (coe v13) (coe v16))
                                                   (coe
                                                      MAlonzo.Code.Data.Vec.Base.C__'8759'__36 v19
                                                      v20))
                                                v19)
                                             (d_'10214'_'10215'H_450
                                                (coe v0) (coe v1) (coe v2) (coe v3) (coe v4)
                                                (coe v5) (coe v6) (coe v7) (coe v8)
                                                (coe
                                                   d__'43'H__672 (coe v0) (coe v1) (coe v2) (coe v3)
                                                   (coe v4) (coe v5) (coe v6) (coe v7) (coe v8)
                                                   (coe
                                                      d__'42'HN__718 (coe v0) (coe v1) (coe v2)
                                                      (coe v3) (coe v4) (coe v5) (coe v6) (coe v7)
                                                      (coe v8) (coe v13) (coe v17))
                                                   (coe
                                                      d__'42'NH__714 (coe v0) (coe v1) (coe v2)
                                                      (coe v3) (coe v4) (coe v5) (coe v6) (coe v7)
                                                      (coe v8) (coe v14) (coe v16)))
                                                (coe
                                                   MAlonzo.Code.Data.Vec.Base.C__'8759'__36 v19
                                                   v20)))
                                          v19 v19)
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
                                                                  MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d_isCommutativeSemiring_62
                                                                  (coe
                                                                     MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d_isAlmostCommutativeRing_212
                                                                     (coe v5))))))))))
                                          v19))
                                    (coe
                                       MAlonzo.Code.Algebra.Structures.d_'8729''45'cong_96
                                       (MAlonzo.Code.Algebra.Structures.d_isMagma_202
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
                                                            MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d_isCommutativeSemiring_62
                                                            (coe
                                                               MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d_isAlmostCommutativeRing_212
                                                               (coe v5)))))))))
                                       (coe
                                          MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d__'42'__204
                                          v5
                                          (d_'10214'_'10215'H_450
                                             (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5)
                                             (coe v6) (coe v7) (coe v8)
                                             (coe
                                                d__'42'x'43'H__700 (coe v0) (coe v1) (coe v2)
                                                (coe v3) (coe v4) (coe v5) (coe v6) (coe v7)
                                                (coe v8)
                                                (coe
                                                   d__'42'H__722 (coe v0) (coe v1) (coe v2) (coe v3)
                                                   (coe v4) (coe v5) (coe v6) (coe v7) (coe v8)
                                                   (coe v13) (coe v16))
                                                (coe
                                                   d__'43'H__672 (coe v0) (coe v1) (coe v2) (coe v3)
                                                   (coe v4) (coe v5) (coe v6) (coe v7) (coe v8)
                                                   (coe
                                                      d__'42'HN__718 (coe v0) (coe v1) (coe v2)
                                                      (coe v3) (coe v4) (coe v5) (coe v6) (coe v7)
                                                      (coe v8) (coe v13) (coe v17))
                                                   (coe
                                                      d__'42'NH__714 (coe v0) (coe v1) (coe v2)
                                                      (coe v3) (coe v4) (coe v5) (coe v6) (coe v7)
                                                      (coe v8) (coe v14) (coe v16))))
                                             (coe MAlonzo.Code.Data.Vec.Base.C__'8759'__36 v19 v20))
                                          v19)
                                       (coe
                                          MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d__'42'__204
                                          v5
                                          (coe
                                             MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d__'43'__202
                                             v5
                                             (coe
                                                MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d__'42'__204
                                                v5
                                                (d_'10214'_'10215'H_450
                                                   (coe v0) (coe v1) (coe v2) (coe v3) (coe v4)
                                                   (coe v5) (coe v6) (coe v7) (coe v8)
                                                   (coe
                                                      d__'42'H__722 (coe v0) (coe v1) (coe v2)
                                                      (coe v3) (coe v4) (coe v5) (coe v6) (coe v7)
                                                      (coe v8) (coe v13) (coe v16))
                                                   (coe
                                                      MAlonzo.Code.Data.Vec.Base.C__'8759'__36 v19
                                                      v20))
                                                v19)
                                             (d_'10214'_'10215'H_450
                                                (coe v0) (coe v1) (coe v2) (coe v3) (coe v4)
                                                (coe v5) (coe v6) (coe v7) (coe v8)
                                                (coe
                                                   d__'43'H__672 (coe v0) (coe v1) (coe v2) (coe v3)
                                                   (coe v4) (coe v5) (coe v6) (coe v7) (coe v8)
                                                   (coe
                                                      d__'42'HN__718 (coe v0) (coe v1) (coe v2)
                                                      (coe v3) (coe v4) (coe v5) (coe v6) (coe v7)
                                                      (coe v8) (coe v13) (coe v17))
                                                   (coe
                                                      d__'42'NH__714 (coe v0) (coe v1) (coe v2)
                                                      (coe v3) (coe v4) (coe v5) (coe v6) (coe v7)
                                                      (coe v8) (coe v14) (coe v16)))
                                                (coe
                                                   MAlonzo.Code.Data.Vec.Base.C__'8759'__36 v19
                                                   v20)))
                                          v19)
                                       (d_'10214'_'10215'N_454
                                          (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5)
                                          (coe v6) (coe v7) (coe v8)
                                          (coe
                                             d__'42'N__726 (coe v0) (coe v1) (coe v2) (coe v3)
                                             (coe v4) (coe v5) (coe v6) (coe v7) (coe v8) (coe v14)
                                             (coe v17))
                                          (coe v20))
                                       (coe
                                          MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d__'42'__204
                                          v5
                                          (d_'10214'_'10215'N_454
                                             (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5)
                                             (coe v6) (coe v7) (coe v8) (coe v14) (coe v20))
                                          (d_'10214'_'10215'N_454
                                             (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5)
                                             (coe v6) (coe v7) (coe v8) (coe v17) (coe v20))))
                                    (coe
                                       d_'42'N'45'homo_1100 (coe v0) (coe v1) (coe v2) (coe v3)
                                       (coe v4) (coe v5) (coe v6) (coe v7) (coe v8) (coe v14)
                                       (coe v17) (coe v20))))
                              (d_'42'x'43'HN'8776''42'x'43'_908
                                 (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5) (coe v6)
                                 (coe v7) (coe v8)
                                 (coe
                                    d__'42'x'43'H__700 (coe v0) (coe v1) (coe v2) (coe v3) (coe v4)
                                    (coe v5) (coe v6) (coe v7) (coe v8)
                                    (coe
                                       d__'42'H__722 (coe v0) (coe v1) (coe v2) (coe v3) (coe v4)
                                       (coe v5) (coe v6) (coe v7) (coe v8) (coe v13) (coe v16))
                                    (coe
                                       d__'43'H__672 (coe v0) (coe v1) (coe v2) (coe v3) (coe v4)
                                       (coe v5) (coe v6) (coe v7) (coe v8)
                                       (coe
                                          d__'42'HN__718 (coe v0) (coe v1) (coe v2) (coe v3)
                                          (coe v4) (coe v5) (coe v6) (coe v7) (coe v8) (coe v13)
                                          (coe v17))
                                       (coe
                                          d__'42'NH__714 (coe v0) (coe v1) (coe v2) (coe v3)
                                          (coe v4) (coe v5) (coe v6) (coe v7) (coe v8) (coe v14)
                                          (coe v16))))
                                 (coe
                                    d__'42'N__726 (coe v0) (coe v1) (coe v2) (coe v3) (coe v4)
                                    (coe v5) (coe v6) (coe v7) (coe v8) (coe v14) (coe v17))
                                 (coe MAlonzo.Code.Data.Vec.Base.C__'8759'__36 v19 v20)))
                    _ -> MAlonzo.RTE.mazUnreachableError
             _ -> MAlonzo.RTE.mazUnreachableError
      _ -> MAlonzo.RTE.mazUnreachableError
-- Algebra.Solver.Ring.*N-homo
d_'42'N'45'homo_1100 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Algebra.Bundles.T_RawRing_2460 ->
  MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.T_AlmostCommutativeRing_176 ->
  MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.T__'45'Raw'45'AlmostCommutative'10230'__354 ->
  (AgdaAny -> AgdaAny -> Maybe AgdaAny) ->
  Integer ->
  T_Normal_432 ->
  T_Normal_432 -> MAlonzo.Code.Data.Vec.Base.T_Vec_24 -> AgdaAny
d_'42'N'45'homo_1100 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11
  = case coe v9 of
      C_con_442 v12
        -> case coe v10 of
             C_con_442 v13
               -> coe
                    MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d_'42''45'homo_748
                    v6 v12 v13
             _ -> MAlonzo.RTE.mazUnreachableError
      C_poly_446 v13
        -> let v14 = subInt (coe v8) (coe (1 :: Integer)) in
           case coe v10 of
             C_poly_446 v16
               -> coe
                    d_'42'H'45'homo_1090 (coe v0) (coe v1) (coe v2) (coe v3) (coe v4)
                    (coe v5) (coe v6) (coe v7) (coe v14) (coe v13) (coe v16) (coe v11)
             _ -> MAlonzo.RTE.mazUnreachableError
      _ -> MAlonzo.RTE.mazUnreachableError
-- Algebra.Solver.Ring.^N-homo
d_'94'N'45'homo_1226 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Algebra.Bundles.T_RawRing_2460 ->
  MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.T_AlmostCommutativeRing_176 ->
  MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.T__'45'Raw'45'AlmostCommutative'10230'__354 ->
  (AgdaAny -> AgdaAny -> Maybe AgdaAny) ->
  Integer ->
  T_Normal_432 ->
  Integer -> MAlonzo.Code.Data.Vec.Base.T_Vec_24 -> AgdaAny
d_'94'N'45'homo_1226 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11
  = case coe v10 of
      0 -> coe
             d_1N'45'homo_894 (coe v0) (coe v1) (coe v2) (coe v3) (coe v4)
             (coe v5) (coe v6) (coe v7) (coe v8) (coe v11)
      _ -> let v12 = subInt (coe v10) (coe (1 :: Integer)) in
           coe
             MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.d_begin__40
             (coe
                MAlonzo.Code.Relation.Binary.Reasoning.Setoid.du_step'45''8776'_58
                (let v13
                       = MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d_isAlmostCommutativeRing_212
                           (coe v5) in
                 let v14
                       = MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d_isCommutativeSemiring_62
                           (coe v13) in
                 let v15
                       = MAlonzo.Code.Algebra.Structures.d_isSemiring_1358 (coe v14) in
                 let v16
                       = MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1252
                           (coe v15) in
                 let v17
                       = MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_1158
                           (coe v16) in
                 let v18
                       = MAlonzo.Code.Algebra.Structures.d_isMonoid_416 (coe v17) in
                 let v19
                       = MAlonzo.Code.Algebra.Structures.d_isSemigroup_368 (coe v18) in
                 coe
                   MAlonzo.Code.Algebra.Structures.du_setoid_110
                   (coe MAlonzo.Code.Algebra.Structures.d_isMagma_202 (coe v19)))
                (d_'10214'_'10215'N_454
                   (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5) (coe v6)
                   (coe v7) (coe v8)
                   (coe
                      d__'42'N__726 (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5)
                      (coe v6) (coe v7) (coe v8) (coe v9)
                      (coe
                         d__'94'N__798 (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5)
                         (coe v6) (coe v7) (coe v8) (coe v9) (coe v12)))
                   (coe v11))
                (coe
                   MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d__'42'__204
                   v5
                   (d_'10214'_'10215'N_454
                      (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5) (coe v6)
                      (coe v7) (coe v8) (coe v9) (coe v11))
                   (d_'10214'_'10215'N_454
                      (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5) (coe v6)
                      (coe v7) (coe v8)
                      (coe
                         d__'94'N__798 (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5)
                         (coe v6) (coe v7) (coe v8) (coe v9) (coe v12))
                      (coe v11)))
                (coe
                   MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d__'42'__204
                   v5
                   (d_'10214'_'10215'N_454
                      (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5) (coe v6)
                      (coe v7) (coe v8) (coe v9) (coe v11))
                   (coe
                      MAlonzo.Code.Algebra.Definitions.RawSemiring.du__'94'__70
                      (coe
                         MAlonzo.Code.Algebra.Bundles.du_rawSemiring_1890
                         (coe
                            MAlonzo.Code.Algebra.Bundles.du_semiringWithoutAnnihilatingZero_2048
                            (coe
                               MAlonzo.Code.Algebra.Bundles.du_semiring_2222
                               (coe
                                  MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.du_commutativeSemiring_316
                                  (coe v5)))))
                      (coe
                         d_'10214'_'10215'N_454 (coe v0) (coe v1) (coe v2) (coe v3) (coe v4)
                         (coe v5) (coe v6) (coe v7) (coe v8) (coe v9) (coe v11))
                      (coe v12)))
                (coe
                   MAlonzo.Code.Relation.Binary.Reasoning.Setoid.du_step'45''8776'_58
                   (let v13
                          = MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d_isAlmostCommutativeRing_212
                              (coe v5) in
                    let v14
                          = MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d_isCommutativeSemiring_62
                              (coe v13) in
                    let v15
                          = MAlonzo.Code.Algebra.Structures.d_isSemiring_1358 (coe v14) in
                    let v16
                          = MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1252
                              (coe v15) in
                    let v17
                          = MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_1158
                              (coe v16) in
                    let v18
                          = MAlonzo.Code.Algebra.Structures.d_isMonoid_416 (coe v17) in
                    let v19
                          = MAlonzo.Code.Algebra.Structures.d_isSemigroup_368 (coe v18) in
                    coe
                      MAlonzo.Code.Algebra.Structures.du_setoid_110
                      (coe MAlonzo.Code.Algebra.Structures.d_isMagma_202 (coe v19)))
                   (coe
                      MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d__'42'__204
                      v5
                      (d_'10214'_'10215'N_454
                         (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5) (coe v6)
                         (coe v7) (coe v8) (coe v9) (coe v11))
                      (d_'10214'_'10215'N_454
                         (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5) (coe v6)
                         (coe v7) (coe v8)
                         (coe
                            d__'94'N__798 (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5)
                            (coe v6) (coe v7) (coe v8) (coe v9) (coe v12))
                         (coe v11)))
                   (coe
                      MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d__'42'__204
                      v5
                      (d_'10214'_'10215'N_454
                         (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5) (coe v6)
                         (coe v7) (coe v8) (coe v9) (coe v11))
                      (coe
                         MAlonzo.Code.Algebra.Definitions.RawSemiring.du__'94'__70
                         (coe
                            MAlonzo.Code.Algebra.Bundles.du_rawSemiring_1890
                            (coe
                               MAlonzo.Code.Algebra.Bundles.du_semiringWithoutAnnihilatingZero_2048
                               (coe
                                  MAlonzo.Code.Algebra.Bundles.du_semiring_2222
                                  (coe
                                     MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.du_commutativeSemiring_316
                                     (coe v5)))))
                         (coe
                            d_'10214'_'10215'N_454 (coe v0) (coe v1) (coe v2) (coe v3) (coe v4)
                            (coe v5) (coe v6) (coe v7) (coe v8) (coe v9) (coe v11))
                         (coe v12)))
                   (coe
                      MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d__'42'__204
                      v5
                      (d_'10214'_'10215'N_454
                         (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5) (coe v6)
                         (coe v7) (coe v8) (coe v9) (coe v11))
                      (coe
                         MAlonzo.Code.Algebra.Definitions.RawSemiring.du__'94'__70
                         (coe
                            MAlonzo.Code.Algebra.Bundles.du_rawSemiring_1890
                            (coe
                               MAlonzo.Code.Algebra.Bundles.du_semiringWithoutAnnihilatingZero_2048
                               (coe
                                  MAlonzo.Code.Algebra.Bundles.du_semiring_2222
                                  (coe
                                     MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.du_commutativeSemiring_316
                                     (coe v5)))))
                         (coe
                            d_'10214'_'10215'N_454 (coe v0) (coe v1) (coe v2) (coe v3) (coe v4)
                            (coe v5) (coe v6) (coe v7) (coe v8) (coe v9) (coe v11))
                         (coe v12)))
                   (coe
                      MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du__'8718'_86
                      (coe
                         MAlonzo.Code.Relation.Binary.Structures.d_refl_34
                         (coe
                            MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_60
                            (let v13
                                   = MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d_isAlmostCommutativeRing_212
                                       (coe v5) in
                             let v14
                                   = MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d_isCommutativeSemiring_62
                                       (coe v13) in
                             let v15
                                   = MAlonzo.Code.Algebra.Structures.d_isSemiring_1358 (coe v14) in
                             let v16
                                   = MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1252
                                       (coe v15) in
                             let v17
                                   = MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_1158
                                       (coe v16) in
                             let v18
                                   = MAlonzo.Code.Algebra.Structures.d_isMonoid_416 (coe v17) in
                             let v19
                                   = MAlonzo.Code.Algebra.Structures.d_isSemigroup_368 (coe v18) in
                             coe
                               MAlonzo.Code.Algebra.Structures.du_setoid_110
                               (coe MAlonzo.Code.Algebra.Structures.d_isMagma_202 (coe v19)))))
                      (coe
                         MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d__'42'__204
                         v5
                         (d_'10214'_'10215'N_454
                            (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5) (coe v6)
                            (coe v7) (coe v8) (coe v9) (coe v11))
                         (coe
                            MAlonzo.Code.Algebra.Definitions.RawSemiring.du__'94'__70
                            (coe
                               MAlonzo.Code.Algebra.Bundles.du_rawSemiring_1890
                               (coe
                                  MAlonzo.Code.Algebra.Bundles.du_semiringWithoutAnnihilatingZero_2048
                                  (coe
                                     MAlonzo.Code.Algebra.Bundles.du_semiring_2222
                                     (coe
                                        MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.du_commutativeSemiring_316
                                        (coe v5)))))
                            (coe
                               d_'10214'_'10215'N_454 (coe v0) (coe v1) (coe v2) (coe v3) (coe v4)
                               (coe v5) (coe v6) (coe v7) (coe v8) (coe v9) (coe v11))
                            (coe v12))))
                   (coe
                      MAlonzo.Code.Function.Base.du__'10216'_'10217'__250
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
                                                 MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d_isCommutativeSemiring_62
                                                 (coe
                                                    MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d_isAlmostCommutativeRing_212
                                                    (coe v5))))))))))
                         (d_'10214'_'10215'N_454
                            (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5) (coe v6)
                            (coe v7) (coe v8) (coe v9) (coe v11)))
                      (coe
                         MAlonzo.Code.Algebra.Structures.d_'8729''45'cong_96
                         (MAlonzo.Code.Algebra.Structures.d_isMagma_202
                            (coe
                               MAlonzo.Code.Algebra.Structures.d_isSemigroup_368
                               (coe
                                  MAlonzo.Code.Algebra.Structures.d_'42''45'isMonoid_1160
                                  (coe
                                     MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1252
                                     (coe
                                        MAlonzo.Code.Algebra.Structures.d_isSemiring_1358
                                        (coe
                                           MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d_isCommutativeSemiring_62
                                           (coe
                                              MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d_isAlmostCommutativeRing_212
                                              (coe v5))))))))
                         (d_'10214'_'10215'N_454
                            (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5) (coe v6)
                            (coe v7) (coe v8) (coe v9) (coe v11))
                         (d_'10214'_'10215'N_454
                            (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5) (coe v6)
                            (coe v7) (coe v8) (coe v9) (coe v11))
                         (d_'10214'_'10215'N_454
                            (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5) (coe v6)
                            (coe v7) (coe v8)
                            (coe
                               d__'94'N__798 (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5)
                               (coe v6) (coe v7) (coe v8) (coe v9) (coe v12))
                            (coe v11))
                         (let v13
                                = coe
                                    MAlonzo.Code.Algebra.Bundles.du_semiring_2222
                                    (coe
                                       MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.du_commutativeSemiring_316
                                       (coe v5)) in
                          coe
                            MAlonzo.Code.Algebra.Definitions.RawSemiring.du__'94'__70
                            (coe
                               MAlonzo.Code.Algebra.Bundles.du_rawSemiring_1890
                               (coe
                                  MAlonzo.Code.Algebra.Bundles.du_semiringWithoutAnnihilatingZero_2048
                                  (coe v13)))
                            (coe
                               d_'10214'_'10215'N_454 (coe v0) (coe v1) (coe v2) (coe v3) (coe v4)
                               (coe v5) (coe v6) (coe v7) (coe v8) (coe v9) (coe v11))
                            (coe v12)))
                      (coe
                         d_'94'N'45'homo_1226 (coe v0) (coe v1) (coe v2) (coe v3) (coe v4)
                         (coe v5) (coe v6) (coe v7) (coe v8) (coe v9) (coe v12) (coe v11))))
                (d_'42'N'45'homo_1100
                   (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5) (coe v6)
                   (coe v7) (coe v8) (coe v9)
                   (coe
                      d__'94'N__798 (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5)
                      (coe v6) (coe v7) (coe v8) (coe v9) (coe v12))
                   (coe v11)))
-- Algebra.Solver.Ring.-H‿-homo
d_'45'H'8255''45'homo_1244 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Algebra.Bundles.T_RawRing_2460 ->
  MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.T_AlmostCommutativeRing_176 ->
  MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.T__'45'Raw'45'AlmostCommutative'10230'__354 ->
  (AgdaAny -> AgdaAny -> Maybe AgdaAny) ->
  Integer ->
  T_HNF_430 -> MAlonzo.Code.Data.Vec.Base.T_Vec_24 -> AgdaAny
d_'45'H'8255''45'homo_1244 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10
  = case coe v10 of
      MAlonzo.Code.Data.Vec.Base.C__'8759'__36 v12 v13
        -> coe
             MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.d_begin__40
             (coe
                MAlonzo.Code.Relation.Binary.Reasoning.Setoid.du_step'45''8776'_58
                (let v14
                       = MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d_isAlmostCommutativeRing_212
                           (coe v5) in
                 let v15
                       = MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d_isCommutativeSemiring_62
                           (coe v14) in
                 let v16
                       = MAlonzo.Code.Algebra.Structures.d_isSemiring_1358 (coe v15) in
                 let v17
                       = MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1252
                           (coe v16) in
                 let v18
                       = MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_1158
                           (coe v17) in
                 let v19
                       = MAlonzo.Code.Algebra.Structures.d_isMonoid_416 (coe v18) in
                 let v20
                       = MAlonzo.Code.Algebra.Structures.d_isSemigroup_368 (coe v19) in
                 coe
                   MAlonzo.Code.Algebra.Structures.du_setoid_110
                   (coe MAlonzo.Code.Algebra.Structures.d_isMagma_202 (coe v20)))
                (d_'10214'_'10215'H_450
                   (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5) (coe v6)
                   (coe v7) (coe v8)
                   (coe
                      d__'42'NH__714 (coe v0) (coe v1) (coe v2) (coe v3) (coe v4)
                      (coe v5) (coe v6) (coe v7) (coe v8)
                      (coe
                         d_'45'N__812 (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5)
                         (coe v6) (coe v7) (coe v8)
                         (coe
                            d_1N_642 (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5)
                            (coe v6) (coe v7) (coe v8)))
                      (coe v9))
                   (coe MAlonzo.Code.Data.Vec.Base.C__'8759'__36 v12 v13))
                (coe
                   MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d__'42'__204
                   v5
                   (d_'10214'_'10215'N_454
                      (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5) (coe v6)
                      (coe v7) (coe v8)
                      (coe
                         d_'45'N__812 (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5)
                         (coe v6) (coe v7) (coe v8)
                         (coe
                            d_1N_642 (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5)
                            (coe v6) (coe v7) (coe v8)))
                      (coe v13))
                   (d_'10214'_'10215'H_450
                      (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5) (coe v6)
                      (coe v7) (coe v8) (coe v9)
                      (coe MAlonzo.Code.Data.Vec.Base.C__'8759'__36 v12 v13)))
                (coe
                   MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d_'45'__206
                   v5
                   (d_'10214'_'10215'H_450
                      (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5) (coe v6)
                      (coe v7) (coe v8) (coe v9)
                      (coe MAlonzo.Code.Data.Vec.Base.C__'8759'__36 v12 v13)))
                (coe
                   MAlonzo.Code.Relation.Binary.Reasoning.Setoid.du_step'45''8776'_58
                   (let v14
                          = MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d_isAlmostCommutativeRing_212
                              (coe v5) in
                    let v15
                          = MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d_isCommutativeSemiring_62
                              (coe v14) in
                    let v16
                          = MAlonzo.Code.Algebra.Structures.d_isSemiring_1358 (coe v15) in
                    let v17
                          = MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1252
                              (coe v16) in
                    let v18
                          = MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_1158
                              (coe v17) in
                    let v19
                          = MAlonzo.Code.Algebra.Structures.d_isMonoid_416 (coe v18) in
                    let v20
                          = MAlonzo.Code.Algebra.Structures.d_isSemigroup_368 (coe v19) in
                    coe
                      MAlonzo.Code.Algebra.Structures.du_setoid_110
                      (coe MAlonzo.Code.Algebra.Structures.d_isMagma_202 (coe v20)))
                   (coe
                      MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d__'42'__204
                      v5
                      (d_'10214'_'10215'N_454
                         (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5) (coe v6)
                         (coe v7) (coe v8)
                         (coe
                            d_'45'N__812 (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5)
                            (coe v6) (coe v7) (coe v8)
                            (coe
                               d_1N_642 (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5)
                               (coe v6) (coe v7) (coe v8)))
                         (coe v13))
                      (d_'10214'_'10215'H_450
                         (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5) (coe v6)
                         (coe v7) (coe v8) (coe v9)
                         (coe MAlonzo.Code.Data.Vec.Base.C__'8759'__36 v12 v13)))
                   (coe
                      MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d__'42'__204
                      v5
                      (coe
                         MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d_'45'__206
                         v5
                         (MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d_1'35'_210
                            (coe v5)))
                      (d_'10214'_'10215'H_450
                         (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5) (coe v6)
                         (coe v7) (coe v8) (coe v9)
                         (coe MAlonzo.Code.Data.Vec.Base.C__'8759'__36 v12 v13)))
                   (coe
                      MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d_'45'__206
                      v5
                      (d_'10214'_'10215'H_450
                         (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5) (coe v6)
                         (coe v7) (coe v8) (coe v9)
                         (coe MAlonzo.Code.Data.Vec.Base.C__'8759'__36 v12 v13)))
                   (coe
                      MAlonzo.Code.Relation.Binary.Reasoning.Setoid.du_step'45''8776'_58
                      (let v14
                             = MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d_isAlmostCommutativeRing_212
                                 (coe v5) in
                       let v15
                             = MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d_isCommutativeSemiring_62
                                 (coe v14) in
                       let v16
                             = MAlonzo.Code.Algebra.Structures.d_isSemiring_1358 (coe v15) in
                       let v17
                             = MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1252
                                 (coe v16) in
                       let v18
                             = MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_1158
                                 (coe v17) in
                       let v19
                             = MAlonzo.Code.Algebra.Structures.d_isMonoid_416 (coe v18) in
                       let v20
                             = MAlonzo.Code.Algebra.Structures.d_isSemigroup_368 (coe v19) in
                       coe
                         MAlonzo.Code.Algebra.Structures.du_setoid_110
                         (coe MAlonzo.Code.Algebra.Structures.d_isMagma_202 (coe v20)))
                      (coe
                         MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d__'42'__204
                         v5
                         (coe
                            MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d_'45'__206
                            v5
                            (MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d_1'35'_210
                               (coe v5)))
                         (d_'10214'_'10215'H_450
                            (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5) (coe v6)
                            (coe v7) (coe v8) (coe v9)
                            (coe MAlonzo.Code.Data.Vec.Base.C__'8759'__36 v12 v13)))
                      (coe
                         MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d_'45'__206
                         v5
                         (d_'10214'_'10215'H_450
                            (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5) (coe v6)
                            (coe v7) (coe v8) (coe v9)
                            (coe MAlonzo.Code.Data.Vec.Base.C__'8759'__36 v12 v13)))
                      (coe
                         MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d_'45'__206
                         v5
                         (d_'10214'_'10215'H_450
                            (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5) (coe v6)
                            (coe v7) (coe v8) (coe v9)
                            (coe MAlonzo.Code.Data.Vec.Base.C__'8759'__36 v12 v13)))
                      (coe
                         MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du__'8718'_86
                         (coe
                            MAlonzo.Code.Relation.Binary.Structures.d_refl_34
                            (coe
                               MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_60
                               (let v14
                                      = MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d_isAlmostCommutativeRing_212
                                          (coe v5) in
                                let v15
                                      = MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d_isCommutativeSemiring_62
                                          (coe v14) in
                                let v16
                                      = MAlonzo.Code.Algebra.Structures.d_isSemiring_1358
                                          (coe v15) in
                                let v17
                                      = MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1252
                                          (coe v16) in
                                let v18
                                      = MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_1158
                                          (coe v17) in
                                let v19
                                      = MAlonzo.Code.Algebra.Structures.d_isMonoid_416 (coe v18) in
                                let v20
                                      = MAlonzo.Code.Algebra.Structures.d_isSemigroup_368
                                          (coe v19) in
                                coe
                                  MAlonzo.Code.Algebra.Structures.du_setoid_110
                                  (coe MAlonzo.Code.Algebra.Structures.d_isMagma_202 (coe v20)))))
                         (coe
                            MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d_'45'__206
                            v5
                            (d_'10214'_'10215'H_450
                               (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5) (coe v6)
                               (coe v7) (coe v8) (coe v9)
                               (coe MAlonzo.Code.Data.Vec.Base.C__'8759'__36 v12 v13))))
                      (coe
                         MAlonzo.Code.Algebra.Solver.Ring.Lemmas.du_lemma'8327'_364 (coe v5)
                         (coe
                            d_'10214'_'10215'H_450 (coe v0) (coe v1) (coe v2) (coe v3) (coe v4)
                            (coe v5) (coe v6) (coe v7) (coe v8) (coe v9)
                            (coe MAlonzo.Code.Data.Vec.Base.C__'8759'__36 v12 v13))))
                   (coe
                      MAlonzo.Code.Function.Base.du__'10216'_'10217'__250
                      (coe
                         MAlonzo.Code.Relation.Binary.Structures.d_trans_38
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
                                                 MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d_isCommutativeSemiring_62
                                                 (coe
                                                    MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d_isAlmostCommutativeRing_212
                                                    (coe v5))))))))))
                         (d_'10214'_'10215'N_454
                            (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5) (coe v6)
                            (coe v7) (coe v8)
                            (coe
                               d_'45'N__812 (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5)
                               (coe v6) (coe v7) (coe v8)
                               (coe
                                  d_1N_642 (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5)
                                  (coe v6) (coe v7) (coe v8)))
                            (coe v13))
                         (coe
                            MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d_'45'__206
                            v5
                            (d_'10214'_'10215'N_454
                               (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5) (coe v6)
                               (coe v7) (coe v8)
                               (coe
                                  d_1N_642 (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5)
                                  (coe v6) (coe v7) (coe v8))
                               (coe v13)))
                         (coe
                            MAlonzo.Code.Function.Base.du_'8739'_'10217''45'__308
                            (\ v14 v15 -> v15)
                            (MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d_'45'__206
                               (coe v5))
                            (d_'10214'_'10215'N_454
                               (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5) (coe v6)
                               (coe v7) (coe v8)
                               (coe
                                  d_1N_642 (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5)
                                  (coe v6) (coe v7) (coe v8))
                               (coe v13))
                            (MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d_1'35'_210
                               (coe v5)))
                         (d_'45'N'8255''45'homo_1252
                            (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5) (coe v6)
                            (coe v7) (coe v8)
                            (coe
                               d_1N_642 (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5)
                               (coe v6) (coe v7) (coe v8))
                            (coe v13))
                         (coe
                            MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d_'45''8255'cong_64
                            (MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d_isAlmostCommutativeRing_212
                               (coe v5))
                            (d_'10214'_'10215'N_454
                               (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5) (coe v6)
                               (coe v7) (coe v8)
                               (coe
                                  d_1N_642 (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5)
                                  (coe v6) (coe v7) (coe v8))
                               (coe v13))
                            (MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d_1'35'_210
                               (coe v5))
                            (d_1N'45'homo_894
                               (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5) (coe v6)
                               (coe v7) (coe v8) (coe v13))))
                      (coe
                         MAlonzo.Code.Algebra.Structures.d_'8729''45'cong_96
                         (MAlonzo.Code.Algebra.Structures.d_isMagma_202
                            (coe
                               MAlonzo.Code.Algebra.Structures.d_isSemigroup_368
                               (coe
                                  MAlonzo.Code.Algebra.Structures.d_'42''45'isMonoid_1160
                                  (coe
                                     MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1252
                                     (coe
                                        MAlonzo.Code.Algebra.Structures.d_isSemiring_1358
                                        (coe
                                           MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d_isCommutativeSemiring_62
                                           (coe
                                              MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d_isAlmostCommutativeRing_212
                                              (coe v5))))))))
                         (d_'10214'_'10215'N_454
                            (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5) (coe v6)
                            (coe v7) (coe v8)
                            (coe
                               d_'45'N__812 (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5)
                               (coe v6) (coe v7) (coe v8)
                               (coe
                                  d_1N_642 (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5)
                                  (coe v6) (coe v7) (coe v8)))
                            (coe v13))
                         (coe
                            MAlonzo.Code.Function.Base.du_'8739'_'10217''45'__308
                            (\ v14 v15 -> v15)
                            (MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d_'45'__206
                               (coe v5))
                            (d_'10214'_'10215'N_454
                               (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5) (coe v6)
                               (coe v7) (coe v8)
                               (coe
                                  d_1N_642 (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5)
                                  (coe v6) (coe v7) (coe v8))
                               (coe v13))
                            (MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d_1'35'_210
                               (coe v5)))
                         (d_'10214'_'10215'H_450
                            (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5) (coe v6)
                            (coe v7) (coe v8) (coe v9)
                            (coe MAlonzo.Code.Data.Vec.Base.C__'8759'__36 v12 v13))
                         (d_'10214'_'10215'H_450
                            (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5) (coe v6)
                            (coe v7) (coe v8) (coe v9)
                            (coe MAlonzo.Code.Data.Vec.Base.C__'8759'__36 v12 v13)))
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
                                                 MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d_isCommutativeSemiring_62
                                                 (coe
                                                    MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d_isAlmostCommutativeRing_212
                                                    (coe v5))))))))))
                         (d_'10214'_'10215'H_450
                            (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5) (coe v6)
                            (coe v7) (coe v8) (coe v9)
                            (coe MAlonzo.Code.Data.Vec.Base.C__'8759'__36 v12 v13)))))
                (d_'42'NH'45'homo_1068
                   (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5) (coe v6)
                   (coe v7) (coe v8)
                   (coe
                      d_'45'N__812 (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5)
                      (coe v6) (coe v7) (coe v8)
                      (coe
                         d_1N_642 (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5)
                         (coe v6) (coe v7) (coe v8)))
                   (coe v9) (coe v12) (coe v13)))
      _ -> MAlonzo.RTE.mazUnreachableError
-- Algebra.Solver.Ring.-N‿-homo
d_'45'N'8255''45'homo_1252 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Algebra.Bundles.T_RawRing_2460 ->
  MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.T_AlmostCommutativeRing_176 ->
  MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.T__'45'Raw'45'AlmostCommutative'10230'__354 ->
  (AgdaAny -> AgdaAny -> Maybe AgdaAny) ->
  Integer ->
  T_Normal_432 -> MAlonzo.Code.Data.Vec.Base.T_Vec_24 -> AgdaAny
d_'45'N'8255''45'homo_1252 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10
  = case coe v9 of
      C_con_442 v11
        -> coe
             MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d_'45''8255'homo_750
             v6 v11
      C_poly_446 v12
        -> let v13 = subInt (coe v8) (coe (1 :: Integer)) in
           coe
             d_'45'H'8255''45'homo_1244 (coe v0) (coe v1) (coe v2) (coe v3)
             (coe v4) (coe v5) (coe v6) (coe v7) (coe v13) (coe v12) (coe v10)
      _ -> MAlonzo.RTE.mazUnreachableError
-- Algebra.Solver.Ring.correct-con
d_correct'45'con_1272 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Algebra.Bundles.T_RawRing_2460 ->
  MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.T_AlmostCommutativeRing_176 ->
  MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.T__'45'Raw'45'AlmostCommutative'10230'__354 ->
  (AgdaAny -> AgdaAny -> Maybe AgdaAny) ->
  Integer ->
  AgdaAny -> MAlonzo.Code.Data.Vec.Base.T_Vec_24 -> AgdaAny
d_correct'45'con_1272 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10
  = case coe v10 of
      MAlonzo.Code.Data.Vec.Base.C_'91''93'_28
        -> coe
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
                                     MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d_isCommutativeSemiring_62
                                     (coe
                                        MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d_isAlmostCommutativeRing_212
                                        (coe v5))))))))))
             (d_'10214'_'10215'N_454
                (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5) (coe v6)
                (coe v7) (coe (0 :: Integer))
                (coe
                   d_normalise'45'con_822 (coe v0) (coe v1) (coe v2) (coe v3) (coe v4)
                   (coe v5) (coe v6) (coe v7) (coe (0 :: Integer)) (coe v9))
                (coe v10))
      MAlonzo.Code.Data.Vec.Base.C__'8759'__36 v12 v13
        -> let v14 = subInt (coe v8) (coe (1 :: Integer)) in
           coe
             MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.d_begin__40
             (coe
                MAlonzo.Code.Relation.Binary.Reasoning.Setoid.du_step'45''8776'_58
                (let v15
                       = MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d_isAlmostCommutativeRing_212
                           (coe v5) in
                 let v16
                       = MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d_isCommutativeSemiring_62
                           (coe v15) in
                 let v17
                       = MAlonzo.Code.Algebra.Structures.d_isSemiring_1358 (coe v16) in
                 let v18
                       = MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1252
                           (coe v17) in
                 let v19
                       = MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_1158
                           (coe v18) in
                 let v20
                       = MAlonzo.Code.Algebra.Structures.d_isMonoid_416 (coe v19) in
                 let v21
                       = MAlonzo.Code.Algebra.Structures.d_isSemigroup_368 (coe v20) in
                 coe
                   MAlonzo.Code.Algebra.Structures.du_setoid_110
                   (coe MAlonzo.Code.Algebra.Structures.d_isMagma_202 (coe v21)))
                (d_'10214'_'10215'H_450
                   (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5) (coe v6)
                   (coe v7) (coe v14)
                   (coe
                      d__'42'x'43'HN__650 (coe v0) (coe v1) (coe v2) (coe v3) (coe v4)
                      (coe v5) (coe v6) (coe v7) (coe v14) (coe C_'8709'_436)
                      (coe
                         d_normalise'45'con_822 (coe v0) (coe v1) (coe v2) (coe v3) (coe v4)
                         (coe v5) (coe v6) (coe v7) (coe v14) (coe v9)))
                   (coe MAlonzo.Code.Data.Vec.Base.C__'8759'__36 v12 v13))
                (d_'10214'_'10215'N_454
                   (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5) (coe v6)
                   (coe v7) (coe v14)
                   (coe
                      d_normalise'45'con_822 (coe v0) (coe v1) (coe v2) (coe v3) (coe v4)
                      (coe v5) (coe v6) (coe v7) (coe v14) (coe v9))
                   (coe v13))
                (coe
                   MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d_'10214'_'10215'_744
                   v6 v9)
                (coe
                   MAlonzo.Code.Relation.Binary.Reasoning.Setoid.du_step'45''8776'_58
                   (let v15
                          = MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d_isAlmostCommutativeRing_212
                              (coe v5) in
                    let v16
                          = MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d_isCommutativeSemiring_62
                              (coe v15) in
                    let v17
                          = MAlonzo.Code.Algebra.Structures.d_isSemiring_1358 (coe v16) in
                    let v18
                          = MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1252
                              (coe v17) in
                    let v19
                          = MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_1158
                              (coe v18) in
                    let v20
                          = MAlonzo.Code.Algebra.Structures.d_isMonoid_416 (coe v19) in
                    let v21
                          = MAlonzo.Code.Algebra.Structures.d_isSemigroup_368 (coe v20) in
                    coe
                      MAlonzo.Code.Algebra.Structures.du_setoid_110
                      (coe MAlonzo.Code.Algebra.Structures.d_isMagma_202 (coe v21)))
                   (d_'10214'_'10215'N_454
                      (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5) (coe v6)
                      (coe v7) (coe v14)
                      (coe
                         d_normalise'45'con_822 (coe v0) (coe v1) (coe v2) (coe v3) (coe v4)
                         (coe v5) (coe v6) (coe v7) (coe v14) (coe v9))
                      (coe v13))
                   (coe
                      MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d_'10214'_'10215'_744
                      v6 v9)
                   (coe
                      MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d_'10214'_'10215'_744
                      v6 v9)
                   (coe
                      MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du__'8718'_86
                      (coe
                         MAlonzo.Code.Relation.Binary.Structures.d_refl_34
                         (coe
                            MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_60
                            (let v15
                                   = MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d_isAlmostCommutativeRing_212
                                       (coe v5) in
                             let v16
                                   = MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d_isCommutativeSemiring_62
                                       (coe v15) in
                             let v17
                                   = MAlonzo.Code.Algebra.Structures.d_isSemiring_1358 (coe v16) in
                             let v18
                                   = MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1252
                                       (coe v17) in
                             let v19
                                   = MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_1158
                                       (coe v18) in
                             let v20
                                   = MAlonzo.Code.Algebra.Structures.d_isMonoid_416 (coe v19) in
                             let v21
                                   = MAlonzo.Code.Algebra.Structures.d_isSemigroup_368 (coe v20) in
                             coe
                               MAlonzo.Code.Algebra.Structures.du_setoid_110
                               (coe MAlonzo.Code.Algebra.Structures.d_isMagma_202 (coe v21)))))
                      (coe
                         MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d_'10214'_'10215'_744
                         v6 v9))
                   (d_correct'45'con_1272
                      (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5) (coe v6)
                      (coe v7) (coe v14) (coe v9) (coe v13)))
                (d_'8709''42'x'43'HN'45'homo_950
                   (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5) (coe v6)
                   (coe v7) (coe v14)
                   (coe
                      d_normalise'45'con_822 (coe v0) (coe v1) (coe v2) (coe v3) (coe v4)
                      (coe v5) (coe v6) (coe v7) (coe v14) (coe v9))
                   (coe v12) (coe v13)))
      _ -> MAlonzo.RTE.mazUnreachableError
-- Algebra.Solver.Ring.correct-var
d_correct'45'var_1288 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Algebra.Bundles.T_RawRing_2460 ->
  MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.T_AlmostCommutativeRing_176 ->
  MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.T__'45'Raw'45'AlmostCommutative'10230'__354 ->
  (AgdaAny -> AgdaAny -> Maybe AgdaAny) ->
  Integer ->
  MAlonzo.Code.Data.Fin.Base.T_Fin_6 ->
  MAlonzo.Code.Data.Vec.Base.T_Vec_24 -> AgdaAny
d_correct'45'var_1288 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10
  = case coe v9 of
      MAlonzo.Code.Data.Fin.Base.C_zero_10
        -> let v12 = subInt (coe v8) (coe (1 :: Integer)) in
           case coe v10 of
             MAlonzo.Code.Data.Vec.Base.C__'8759'__36 v14 v15
               -> coe
                    MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.d_begin__40
                    (coe
                       MAlonzo.Code.Relation.Binary.Reasoning.Setoid.du_step'45''8776'_58
                       (let v16
                              = MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d_isAlmostCommutativeRing_212
                                  (coe v5) in
                        let v17
                              = MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d_isCommutativeSemiring_62
                                  (coe v16) in
                        let v18
                              = MAlonzo.Code.Algebra.Structures.d_isSemiring_1358 (coe v17) in
                        let v19
                              = MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1252
                                  (coe v18) in
                        let v20
                              = MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_1158
                                  (coe v19) in
                        let v21
                              = MAlonzo.Code.Algebra.Structures.d_isMonoid_416 (coe v20) in
                        let v22
                              = MAlonzo.Code.Algebra.Structures.d_isSemigroup_368 (coe v21) in
                        coe
                          MAlonzo.Code.Algebra.Structures.du_setoid_110
                          (coe MAlonzo.Code.Algebra.Structures.d_isMagma_202 (coe v22)))
                       (coe
                          MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d__'43'__202
                          v5
                          (coe
                             MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d__'42'__204
                             v5
                             (coe
                                MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d__'43'__202
                                v5
                                (coe
                                   MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d__'42'__204
                                   v5
                                   (MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d_0'35'_208
                                      (coe v5))
                                   v14)
                                (d_'10214'_'10215'N_454
                                   (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5) (coe v6)
                                   (coe v7) (coe v12)
                                   (coe
                                      d_1N_642 (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5)
                                      (coe v6) (coe v7) (coe v12))
                                   (coe v15)))
                             v14)
                          (d_'10214'_'10215'N_454
                             (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5) (coe v6)
                             (coe v7) (coe v12) (coe du_0N_632 (coe v4) (coe v12)) (coe v15)))
                       (coe
                          MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d__'43'__202
                          v5
                          (coe
                             MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d__'42'__204
                             v5
                             (coe
                                MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d__'43'__202
                                v5
                                (coe
                                   MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d__'42'__204
                                   v5
                                   (MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d_0'35'_208
                                      (coe v5))
                                   v14)
                                (MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d_1'35'_210
                                   (coe v5)))
                             v14)
                          (MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d_0'35'_208
                             (coe v5)))
                       v14
                       (coe
                          MAlonzo.Code.Relation.Binary.Reasoning.Setoid.du_step'45''8776'_58
                          (let v16
                                 = MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d_isAlmostCommutativeRing_212
                                     (coe v5) in
                           let v17
                                 = MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d_isCommutativeSemiring_62
                                     (coe v16) in
                           let v18
                                 = MAlonzo.Code.Algebra.Structures.d_isSemiring_1358 (coe v17) in
                           let v19
                                 = MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1252
                                     (coe v18) in
                           let v20
                                 = MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_1158
                                     (coe v19) in
                           let v21
                                 = MAlonzo.Code.Algebra.Structures.d_isMonoid_416 (coe v20) in
                           let v22
                                 = MAlonzo.Code.Algebra.Structures.d_isSemigroup_368 (coe v21) in
                           coe
                             MAlonzo.Code.Algebra.Structures.du_setoid_110
                             (coe MAlonzo.Code.Algebra.Structures.d_isMagma_202 (coe v22)))
                          (coe
                             MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d__'43'__202
                             v5
                             (coe
                                MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d__'42'__204
                                v5
                                (coe
                                   MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d__'43'__202
                                   v5
                                   (coe
                                      MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d__'42'__204
                                      v5
                                      (MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d_0'35'_208
                                         (coe v5))
                                      v14)
                                   (MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d_1'35'_210
                                      (coe v5)))
                                v14)
                             (MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d_0'35'_208
                                (coe v5)))
                          v14 v14
                          (coe
                             MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du__'8718'_86
                             (coe
                                MAlonzo.Code.Relation.Binary.Structures.d_refl_34
                                (coe
                                   MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_60
                                   (let v16
                                          = MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d_isAlmostCommutativeRing_212
                                              (coe v5) in
                                    let v17
                                          = MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d_isCommutativeSemiring_62
                                              (coe v16) in
                                    let v18
                                          = MAlonzo.Code.Algebra.Structures.d_isSemiring_1358
                                              (coe v17) in
                                    let v19
                                          = MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1252
                                              (coe v18) in
                                    let v20
                                          = MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_1158
                                              (coe v19) in
                                    let v21
                                          = MAlonzo.Code.Algebra.Structures.d_isMonoid_416
                                              (coe v20) in
                                    let v22
                                          = MAlonzo.Code.Algebra.Structures.d_isSemigroup_368
                                              (coe v21) in
                                    coe
                                      MAlonzo.Code.Algebra.Structures.du_setoid_110
                                      (coe
                                         MAlonzo.Code.Algebra.Structures.d_isMagma_202 (coe v22)))))
                             (coe v14))
                          (coe
                             MAlonzo.Code.Algebra.Solver.Ring.Lemmas.du_lemma'8325'_348 (coe v5)
                             (coe v14)))
                       (coe
                          MAlonzo.Code.Function.Base.du__'10216'_'10217'__250
                          (coe
                             MAlonzo.Code.Function.Base.du__'10216'_'10217'__250
                             (coe
                                MAlonzo.Code.Function.Base.du__'10216'_'10217'__250
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
                                                           MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d_isCommutativeSemiring_62
                                                           (coe
                                                              MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d_isAlmostCommutativeRing_212
                                                              (coe v5))))))))))
                                   (coe
                                      MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d__'42'__204
                                      v5
                                      (MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d_0'35'_208
                                         (coe v5))
                                      v14))
                                (coe
                                   MAlonzo.Code.Algebra.Structures.d_'8729''45'cong_96
                                   (MAlonzo.Code.Algebra.Structures.d_isMagma_202
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
                                                        MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d_isCommutativeSemiring_62
                                                        (coe
                                                           MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d_isAlmostCommutativeRing_212
                                                           (coe v5)))))))))
                                   (coe
                                      MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d__'42'__204
                                      v5
                                      (MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d_0'35'_208
                                         (coe v5))
                                      v14)
                                   (coe
                                      MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d__'42'__204
                                      v5
                                      (MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d_0'35'_208
                                         (coe v5))
                                      v14)
                                   (d_'10214'_'10215'N_454
                                      (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5) (coe v6)
                                      (coe v7) (coe v12)
                                      (coe
                                         d_1N_642 (coe v0) (coe v1) (coe v2) (coe v3) (coe v4)
                                         (coe v5) (coe v6) (coe v7) (coe v12))
                                      (coe v15))
                                   (MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d_1'35'_210
                                      (coe v5)))
                                (coe
                                   d_1N'45'homo_894 (coe v0) (coe v1) (coe v2) (coe v3) (coe v4)
                                   (coe v5) (coe v6) (coe v7) (coe v12) (coe v15)))
                             (coe
                                MAlonzo.Code.Algebra.Structures.d_'8729''45'cong_96
                                (MAlonzo.Code.Algebra.Structures.d_isMagma_202
                                   (coe
                                      MAlonzo.Code.Algebra.Structures.d_isSemigroup_368
                                      (coe
                                         MAlonzo.Code.Algebra.Structures.d_'42''45'isMonoid_1160
                                         (coe
                                            MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1252
                                            (coe
                                               MAlonzo.Code.Algebra.Structures.d_isSemiring_1358
                                               (coe
                                                  MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d_isCommutativeSemiring_62
                                                  (coe
                                                     MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d_isAlmostCommutativeRing_212
                                                     (coe v5))))))))
                                (coe
                                   MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d__'43'__202
                                   v5
                                   (coe
                                      MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d__'42'__204
                                      v5
                                      (MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d_0'35'_208
                                         (coe v5))
                                      v14)
                                   (d_'10214'_'10215'N_454
                                      (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5) (coe v6)
                                      (coe v7) (coe v12)
                                      (coe
                                         d_1N_642 (coe v0) (coe v1) (coe v2) (coe v3) (coe v4)
                                         (coe v5) (coe v6) (coe v7) (coe v12))
                                      (coe v15)))
                                (coe
                                   MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d__'43'__202
                                   v5
                                   (coe
                                      MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d__'42'__204
                                      v5
                                      (MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d_0'35'_208
                                         (coe v5))
                                      v14)
                                   (MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d_1'35'_210
                                      (coe v5)))
                                v14 v14)
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
                                                        MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d_isCommutativeSemiring_62
                                                        (coe
                                                           MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d_isAlmostCommutativeRing_212
                                                           (coe v5))))))))))
                                v14))
                          (coe
                             MAlonzo.Code.Algebra.Structures.d_'8729''45'cong_96
                             (MAlonzo.Code.Algebra.Structures.d_isMagma_202
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
                                                  MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d_isCommutativeSemiring_62
                                                  (coe
                                                     MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d_isAlmostCommutativeRing_212
                                                     (coe v5)))))))))
                             (coe
                                MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d__'42'__204
                                v5
                                (coe
                                   MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d__'43'__202
                                   v5
                                   (coe
                                      MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d__'42'__204
                                      v5
                                      (MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d_0'35'_208
                                         (coe v5))
                                      v14)
                                   (d_'10214'_'10215'N_454
                                      (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5) (coe v6)
                                      (coe v7) (coe v12)
                                      (coe
                                         d_1N_642 (coe v0) (coe v1) (coe v2) (coe v3) (coe v4)
                                         (coe v5) (coe v6) (coe v7) (coe v12))
                                      (coe v15)))
                                v14)
                             (coe
                                MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d__'42'__204
                                v5
                                (coe
                                   MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d__'43'__202
                                   v5
                                   (coe
                                      MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d__'42'__204
                                      v5
                                      (MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d_0'35'_208
                                         (coe v5))
                                      v14)
                                   (MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d_1'35'_210
                                      (coe v5)))
                                v14)
                             (d_'10214'_'10215'N_454
                                (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5) (coe v6)
                                (coe v7) (coe v12) (coe du_0N_632 (coe v4) (coe v12)) (coe v15))
                             (MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d_0'35'_208
                                (coe v5)))
                          (coe
                             d_0N'45'homo_870 (coe v0) (coe v1) (coe v2) (coe v3) (coe v4)
                             (coe v5) (coe v6) (coe v7) (coe v12) (coe v15))))
             _ -> MAlonzo.RTE.mazUnreachableError
      MAlonzo.Code.Data.Fin.Base.C_suc_16 v12
        -> let v13 = subInt (coe v8) (coe (1 :: Integer)) in
           case coe v10 of
             MAlonzo.Code.Data.Vec.Base.C__'8759'__36 v15 v16
               -> coe
                    MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.d_begin__40
                    (coe
                       MAlonzo.Code.Relation.Binary.Reasoning.Setoid.du_step'45''8776'_58
                       (let v17
                              = MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d_isAlmostCommutativeRing_212
                                  (coe v5) in
                        let v18
                              = MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d_isCommutativeSemiring_62
                                  (coe v17) in
                        let v19
                              = MAlonzo.Code.Algebra.Structures.d_isSemiring_1358 (coe v18) in
                        let v20
                              = MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1252
                                  (coe v19) in
                        let v21
                              = MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_1158
                                  (coe v20) in
                        let v22
                              = MAlonzo.Code.Algebra.Structures.d_isMonoid_416 (coe v21) in
                        let v23
                              = MAlonzo.Code.Algebra.Structures.d_isSemigroup_368 (coe v22) in
                        coe
                          MAlonzo.Code.Algebra.Structures.du_setoid_110
                          (coe MAlonzo.Code.Algebra.Structures.d_isMagma_202 (coe v23)))
                       (d_'10214'_'10215'H_450
                          (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5) (coe v6)
                          (coe v7) (coe v13)
                          (coe
                             d__'42'x'43'HN__650 (coe v0) (coe v1) (coe v2) (coe v3) (coe v4)
                             (coe v5) (coe v6) (coe v7) (coe v13) (coe C_'8709'_436)
                             (coe
                                d_normalise'45'var_832 (coe v0) (coe v1) (coe v2) (coe v3) (coe v4)
                                (coe v5) (coe v6) (coe v7) (coe v13) (coe v12)))
                          (coe MAlonzo.Code.Data.Vec.Base.C__'8759'__36 v15 v16))
                       (d_'10214'_'10215'N_454
                          (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5) (coe v6)
                          (coe v7) (coe v13)
                          (coe
                             d_normalise'45'var_832 (coe v0) (coe v1) (coe v2) (coe v3) (coe v4)
                             (coe v5) (coe v6) (coe v7) (coe v13) (coe v12))
                          (coe v16))
                       (coe MAlonzo.Code.Data.Vec.Base.du_lookup_94 (coe v16) (coe v12))
                       (coe
                          MAlonzo.Code.Relation.Binary.Reasoning.Setoid.du_step'45''8776'_58
                          (let v17
                                 = MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d_isAlmostCommutativeRing_212
                                     (coe v5) in
                           let v18
                                 = MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d_isCommutativeSemiring_62
                                     (coe v17) in
                           let v19
                                 = MAlonzo.Code.Algebra.Structures.d_isSemiring_1358 (coe v18) in
                           let v20
                                 = MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1252
                                     (coe v19) in
                           let v21
                                 = MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_1158
                                     (coe v20) in
                           let v22
                                 = MAlonzo.Code.Algebra.Structures.d_isMonoid_416 (coe v21) in
                           let v23
                                 = MAlonzo.Code.Algebra.Structures.d_isSemigroup_368 (coe v22) in
                           coe
                             MAlonzo.Code.Algebra.Structures.du_setoid_110
                             (coe MAlonzo.Code.Algebra.Structures.d_isMagma_202 (coe v23)))
                          (d_'10214'_'10215'N_454
                             (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5) (coe v6)
                             (coe v7) (coe v13)
                             (coe
                                d_normalise'45'var_832 (coe v0) (coe v1) (coe v2) (coe v3) (coe v4)
                                (coe v5) (coe v6) (coe v7) (coe v13) (coe v12))
                             (coe v16))
                          (coe MAlonzo.Code.Data.Vec.Base.du_lookup_94 (coe v16) (coe v12))
                          (coe MAlonzo.Code.Data.Vec.Base.du_lookup_94 (coe v16) (coe v12))
                          (coe
                             MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du__'8718'_86
                             (coe
                                MAlonzo.Code.Relation.Binary.Structures.d_refl_34
                                (coe
                                   MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_60
                                   (let v17
                                          = MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d_isAlmostCommutativeRing_212
                                              (coe v5) in
                                    let v18
                                          = MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d_isCommutativeSemiring_62
                                              (coe v17) in
                                    let v19
                                          = MAlonzo.Code.Algebra.Structures.d_isSemiring_1358
                                              (coe v18) in
                                    let v20
                                          = MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1252
                                              (coe v19) in
                                    let v21
                                          = MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_1158
                                              (coe v20) in
                                    let v22
                                          = MAlonzo.Code.Algebra.Structures.d_isMonoid_416
                                              (coe v21) in
                                    let v23
                                          = MAlonzo.Code.Algebra.Structures.d_isSemigroup_368
                                              (coe v22) in
                                    coe
                                      MAlonzo.Code.Algebra.Structures.du_setoid_110
                                      (coe
                                         MAlonzo.Code.Algebra.Structures.d_isMagma_202 (coe v23)))))
                             (coe MAlonzo.Code.Data.Vec.Base.du_lookup_94 (coe v16) (coe v12)))
                          (d_correct'45'var_1288
                             (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5) (coe v6)
                             (coe v7) (coe v13) (coe v12) (coe v16)))
                       (d_'8709''42'x'43'HN'45'homo_950
                          (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5) (coe v6)
                          (coe v7) (coe v13)
                          (coe
                             d_normalise'45'var_832 (coe v0) (coe v1) (coe v2) (coe v3) (coe v4)
                             (coe v5) (coe v6) (coe v7) (coe v13) (coe v12))
                          (coe v15) (coe v16)))
             _ -> MAlonzo.RTE.mazUnreachableError
      _ -> MAlonzo.RTE.mazUnreachableError
-- Algebra.Solver.Ring.correct
d_correct_1306 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Algebra.Bundles.T_RawRing_2460 ->
  MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.T_AlmostCommutativeRing_176 ->
  MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.T__'45'Raw'45'AlmostCommutative'10230'__354 ->
  (AgdaAny -> AgdaAny -> Maybe AgdaAny) ->
  Integer ->
  T_Polynomial_342 -> MAlonzo.Code.Data.Vec.Base.T_Vec_24 -> AgdaAny
d_correct_1306 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10
  = case coe v9 of
      C_op_352 v11 v12 v13
        -> case coe v11 of
             C_'91''43''93'_336
               -> coe
                    MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.d_begin__40
                    (coe
                       MAlonzo.Code.Relation.Binary.Reasoning.Setoid.du_step'45''8776'_58
                       (let v14
                              = MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d_isAlmostCommutativeRing_212
                                  (coe v5) in
                        let v15
                              = MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d_isCommutativeSemiring_62
                                  (coe v14) in
                        let v16
                              = MAlonzo.Code.Algebra.Structures.d_isSemiring_1358 (coe v15) in
                        let v17
                              = MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1252
                                  (coe v16) in
                        let v18
                              = MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_1158
                                  (coe v17) in
                        let v19
                              = MAlonzo.Code.Algebra.Structures.d_isMonoid_416 (coe v18) in
                        let v20
                              = MAlonzo.Code.Algebra.Structures.d_isSemigroup_368 (coe v19) in
                        coe
                          MAlonzo.Code.Algebra.Structures.du_setoid_110
                          (coe MAlonzo.Code.Algebra.Structures.d_isMagma_202 (coe v20)))
                       (d_'10214'_'10215'N_454
                          (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5) (coe v6)
                          (coe v7) (coe v8)
                          (coe
                             d__'43'N__676 (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5)
                             (coe v6) (coe v7) (coe v8)
                             (coe
                                d_normalise_838 (coe v0) (coe v1) (coe v2) (coe v3) (coe v4)
                                (coe v5) (coe v6) (coe v7) (coe v8) (coe v12))
                             (coe
                                d_normalise_838 (coe v0) (coe v1) (coe v2) (coe v3) (coe v4)
                                (coe v5) (coe v6) (coe v7) (coe v8) (coe v13)))
                          (coe v10))
                       (coe
                          MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d__'43'__202
                          v5
                          (d_'10214'_'10215''8595'_860
                             (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5) (coe v6)
                             (coe v7) (coe v8) (coe v12) (coe v10))
                          (d_'10214'_'10215''8595'_860
                             (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5) (coe v6)
                             (coe v7) (coe v8) (coe v13) (coe v10)))
                       (coe
                          MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d__'43'__202
                          v5
                          (coe du_'10214'_'10215'_402 (coe v5) (coe v6) (coe v12) (coe v10))
                          (coe du_'10214'_'10215'_402 (coe v5) (coe v6) (coe v13) (coe v10)))
                       (coe
                          MAlonzo.Code.Relation.Binary.Reasoning.Setoid.du_step'45''8776'_58
                          (let v14
                                 = MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d_isAlmostCommutativeRing_212
                                     (coe v5) in
                           let v15
                                 = MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d_isCommutativeSemiring_62
                                     (coe v14) in
                           let v16
                                 = MAlonzo.Code.Algebra.Structures.d_isSemiring_1358 (coe v15) in
                           let v17
                                 = MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1252
                                     (coe v16) in
                           let v18
                                 = MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_1158
                                     (coe v17) in
                           let v19
                                 = MAlonzo.Code.Algebra.Structures.d_isMonoid_416 (coe v18) in
                           let v20
                                 = MAlonzo.Code.Algebra.Structures.d_isSemigroup_368 (coe v19) in
                           coe
                             MAlonzo.Code.Algebra.Structures.du_setoid_110
                             (coe MAlonzo.Code.Algebra.Structures.d_isMagma_202 (coe v20)))
                          (coe
                             MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d__'43'__202
                             v5
                             (d_'10214'_'10215''8595'_860
                                (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5) (coe v6)
                                (coe v7) (coe v8) (coe v12) (coe v10))
                             (d_'10214'_'10215''8595'_860
                                (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5) (coe v6)
                                (coe v7) (coe v8) (coe v13) (coe v10)))
                          (coe
                             MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d__'43'__202
                             v5
                             (coe du_'10214'_'10215'_402 (coe v5) (coe v6) (coe v12) (coe v10))
                             (coe du_'10214'_'10215'_402 (coe v5) (coe v6) (coe v13) (coe v10)))
                          (coe
                             MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d__'43'__202
                             v5
                             (coe du_'10214'_'10215'_402 (coe v5) (coe v6) (coe v12) (coe v10))
                             (coe du_'10214'_'10215'_402 (coe v5) (coe v6) (coe v13) (coe v10)))
                          (coe
                             MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du__'8718'_86
                             (coe
                                MAlonzo.Code.Relation.Binary.Structures.d_refl_34
                                (coe
                                   MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_60
                                   (let v14
                                          = MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d_isAlmostCommutativeRing_212
                                              (coe v5) in
                                    let v15
                                          = MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d_isCommutativeSemiring_62
                                              (coe v14) in
                                    let v16
                                          = MAlonzo.Code.Algebra.Structures.d_isSemiring_1358
                                              (coe v15) in
                                    let v17
                                          = MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1252
                                              (coe v16) in
                                    let v18
                                          = MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_1158
                                              (coe v17) in
                                    let v19
                                          = MAlonzo.Code.Algebra.Structures.d_isMonoid_416
                                              (coe v18) in
                                    let v20
                                          = MAlonzo.Code.Algebra.Structures.d_isSemigroup_368
                                              (coe v19) in
                                    coe
                                      MAlonzo.Code.Algebra.Structures.du_setoid_110
                                      (coe
                                         MAlonzo.Code.Algebra.Structures.d_isMagma_202 (coe v20)))))
                             (coe
                                MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d__'43'__202
                                v5
                                (coe du_'10214'_'10215'_402 (coe v5) (coe v6) (coe v12) (coe v10))
                                (coe
                                   du_'10214'_'10215'_402 (coe v5) (coe v6) (coe v13) (coe v10))))
                          (coe
                             MAlonzo.Code.Function.Base.du__'10216'_'10217'__250
                             (coe
                                d_correct_1306 (coe v0) (coe v1) (coe v2) (coe v3) (coe v4)
                                (coe v5) (coe v6) (coe v7) (coe v8) (coe v12) (coe v10))
                             (coe
                                MAlonzo.Code.Algebra.Structures.d_'8729''45'cong_96
                                (MAlonzo.Code.Algebra.Structures.d_isMagma_202
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
                                                     MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d_isCommutativeSemiring_62
                                                     (coe
                                                        MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d_isAlmostCommutativeRing_212
                                                        (coe v5)))))))))
                                (d_'10214'_'10215''8595'_860
                                   (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5) (coe v6)
                                   (coe v7) (coe v8) (coe v12) (coe v10))
                                (coe du_'10214'_'10215'_402 (coe v5) (coe v6) (coe v12) (coe v10))
                                (d_'10214'_'10215''8595'_860
                                   (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5) (coe v6)
                                   (coe v7) (coe v8) (coe v13) (coe v10))
                                (coe du_'10214'_'10215'_402 (coe v5) (coe v6) (coe v13) (coe v10)))
                             (coe
                                d_correct_1306 (coe v0) (coe v1) (coe v2) (coe v3) (coe v4)
                                (coe v5) (coe v6) (coe v7) (coe v8) (coe v13) (coe v10))))
                       (d_'43'N'45'homo_994
                          (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5) (coe v6)
                          (coe v7) (coe v8)
                          (coe
                             d_normalise_838 (coe v0) (coe v1) (coe v2) (coe v3) (coe v4)
                             (coe v5) (coe v6) (coe v7) (coe v8) (coe v12))
                          (coe
                             d_normalise_838 (coe v0) (coe v1) (coe v2) (coe v3) (coe v4)
                             (coe v5) (coe v6) (coe v7) (coe v8) (coe v13))
                          (coe v10)))
             C_'91''42''93'_338
               -> coe
                    MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.d_begin__40
                    (coe
                       MAlonzo.Code.Relation.Binary.Reasoning.Setoid.du_step'45''8776'_58
                       (let v14
                              = MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d_isAlmostCommutativeRing_212
                                  (coe v5) in
                        let v15
                              = MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d_isCommutativeSemiring_62
                                  (coe v14) in
                        let v16
                              = MAlonzo.Code.Algebra.Structures.d_isSemiring_1358 (coe v15) in
                        let v17
                              = MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1252
                                  (coe v16) in
                        let v18
                              = MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_1158
                                  (coe v17) in
                        let v19
                              = MAlonzo.Code.Algebra.Structures.d_isMonoid_416 (coe v18) in
                        let v20
                              = MAlonzo.Code.Algebra.Structures.d_isSemigroup_368 (coe v19) in
                        coe
                          MAlonzo.Code.Algebra.Structures.du_setoid_110
                          (coe MAlonzo.Code.Algebra.Structures.d_isMagma_202 (coe v20)))
                       (d_'10214'_'10215'N_454
                          (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5) (coe v6)
                          (coe v7) (coe v8)
                          (coe
                             d__'42'N__726 (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5)
                             (coe v6) (coe v7) (coe v8)
                             (coe
                                d_normalise_838 (coe v0) (coe v1) (coe v2) (coe v3) (coe v4)
                                (coe v5) (coe v6) (coe v7) (coe v8) (coe v12))
                             (coe
                                d_normalise_838 (coe v0) (coe v1) (coe v2) (coe v3) (coe v4)
                                (coe v5) (coe v6) (coe v7) (coe v8) (coe v13)))
                          (coe v10))
                       (coe
                          MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d__'42'__204
                          v5
                          (d_'10214'_'10215''8595'_860
                             (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5) (coe v6)
                             (coe v7) (coe v8) (coe v12) (coe v10))
                          (d_'10214'_'10215''8595'_860
                             (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5) (coe v6)
                             (coe v7) (coe v8) (coe v13) (coe v10)))
                       (coe
                          MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d__'42'__204
                          v5
                          (coe du_'10214'_'10215'_402 (coe v5) (coe v6) (coe v12) (coe v10))
                          (coe du_'10214'_'10215'_402 (coe v5) (coe v6) (coe v13) (coe v10)))
                       (coe
                          MAlonzo.Code.Relation.Binary.Reasoning.Setoid.du_step'45''8776'_58
                          (let v14
                                 = MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d_isAlmostCommutativeRing_212
                                     (coe v5) in
                           let v15
                                 = MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d_isCommutativeSemiring_62
                                     (coe v14) in
                           let v16
                                 = MAlonzo.Code.Algebra.Structures.d_isSemiring_1358 (coe v15) in
                           let v17
                                 = MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1252
                                     (coe v16) in
                           let v18
                                 = MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_1158
                                     (coe v17) in
                           let v19
                                 = MAlonzo.Code.Algebra.Structures.d_isMonoid_416 (coe v18) in
                           let v20
                                 = MAlonzo.Code.Algebra.Structures.d_isSemigroup_368 (coe v19) in
                           coe
                             MAlonzo.Code.Algebra.Structures.du_setoid_110
                             (coe MAlonzo.Code.Algebra.Structures.d_isMagma_202 (coe v20)))
                          (coe
                             MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d__'42'__204
                             v5
                             (d_'10214'_'10215''8595'_860
                                (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5) (coe v6)
                                (coe v7) (coe v8) (coe v12) (coe v10))
                             (d_'10214'_'10215''8595'_860
                                (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5) (coe v6)
                                (coe v7) (coe v8) (coe v13) (coe v10)))
                          (coe
                             MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d__'42'__204
                             v5
                             (coe du_'10214'_'10215'_402 (coe v5) (coe v6) (coe v12) (coe v10))
                             (coe du_'10214'_'10215'_402 (coe v5) (coe v6) (coe v13) (coe v10)))
                          (coe
                             MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d__'42'__204
                             v5
                             (coe du_'10214'_'10215'_402 (coe v5) (coe v6) (coe v12) (coe v10))
                             (coe du_'10214'_'10215'_402 (coe v5) (coe v6) (coe v13) (coe v10)))
                          (coe
                             MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du__'8718'_86
                             (coe
                                MAlonzo.Code.Relation.Binary.Structures.d_refl_34
                                (coe
                                   MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_60
                                   (let v14
                                          = MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d_isAlmostCommutativeRing_212
                                              (coe v5) in
                                    let v15
                                          = MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d_isCommutativeSemiring_62
                                              (coe v14) in
                                    let v16
                                          = MAlonzo.Code.Algebra.Structures.d_isSemiring_1358
                                              (coe v15) in
                                    let v17
                                          = MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1252
                                              (coe v16) in
                                    let v18
                                          = MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_1158
                                              (coe v17) in
                                    let v19
                                          = MAlonzo.Code.Algebra.Structures.d_isMonoid_416
                                              (coe v18) in
                                    let v20
                                          = MAlonzo.Code.Algebra.Structures.d_isSemigroup_368
                                              (coe v19) in
                                    coe
                                      MAlonzo.Code.Algebra.Structures.du_setoid_110
                                      (coe
                                         MAlonzo.Code.Algebra.Structures.d_isMagma_202 (coe v20)))))
                             (coe
                                MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d__'42'__204
                                v5
                                (coe du_'10214'_'10215'_402 (coe v5) (coe v6) (coe v12) (coe v10))
                                (coe
                                   du_'10214'_'10215'_402 (coe v5) (coe v6) (coe v13) (coe v10))))
                          (coe
                             MAlonzo.Code.Function.Base.du__'10216'_'10217'__250
                             (coe
                                d_correct_1306 (coe v0) (coe v1) (coe v2) (coe v3) (coe v4)
                                (coe v5) (coe v6) (coe v7) (coe v8) (coe v12) (coe v10))
                             (coe
                                MAlonzo.Code.Algebra.Structures.d_'8729''45'cong_96
                                (MAlonzo.Code.Algebra.Structures.d_isMagma_202
                                   (coe
                                      MAlonzo.Code.Algebra.Structures.d_isSemigroup_368
                                      (coe
                                         MAlonzo.Code.Algebra.Structures.d_'42''45'isMonoid_1160
                                         (coe
                                            MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1252
                                            (coe
                                               MAlonzo.Code.Algebra.Structures.d_isSemiring_1358
                                               (coe
                                                  MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d_isCommutativeSemiring_62
                                                  (coe
                                                     MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d_isAlmostCommutativeRing_212
                                                     (coe v5))))))))
                                (d_'10214'_'10215''8595'_860
                                   (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5) (coe v6)
                                   (coe v7) (coe v8) (coe v12) (coe v10))
                                (coe du_'10214'_'10215'_402 (coe v5) (coe v6) (coe v12) (coe v10))
                                (d_'10214'_'10215''8595'_860
                                   (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5) (coe v6)
                                   (coe v7) (coe v8) (coe v13) (coe v10))
                                (coe du_'10214'_'10215'_402 (coe v5) (coe v6) (coe v13) (coe v10)))
                             (coe
                                d_correct_1306 (coe v0) (coe v1) (coe v2) (coe v3) (coe v4)
                                (coe v5) (coe v6) (coe v7) (coe v8) (coe v13) (coe v10))))
                       (d_'42'N'45'homo_1100
                          (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5) (coe v6)
                          (coe v7) (coe v8)
                          (coe
                             d_normalise_838 (coe v0) (coe v1) (coe v2) (coe v3) (coe v4)
                             (coe v5) (coe v6) (coe v7) (coe v8) (coe v12))
                          (coe
                             d_normalise_838 (coe v0) (coe v1) (coe v2) (coe v3) (coe v4)
                             (coe v5) (coe v6) (coe v7) (coe v8) (coe v13))
                          (coe v10)))
             _ -> MAlonzo.RTE.mazUnreachableError
      C_con_356 v11
        -> coe
             d_correct'45'con_1272 (coe v0) (coe v1) (coe v2) (coe v3) (coe v4)
             (coe v5) (coe v6) (coe v7) (coe v8) (coe v11) (coe v10)
      C_var_360 v11
        -> coe
             d_correct'45'var_1288 (coe v0) (coe v1) (coe v2) (coe v3) (coe v4)
             (coe v5) (coe v6) (coe v7) (coe v8) (coe v11) (coe v10)
      C__'58''94'__366 v11 v12
        -> coe
             MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.d_begin__40
             (coe
                MAlonzo.Code.Relation.Binary.Reasoning.Setoid.du_step'45''8776'_58
                (let v13
                       = MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d_isAlmostCommutativeRing_212
                           (coe v5) in
                 let v14
                       = MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d_isCommutativeSemiring_62
                           (coe v13) in
                 let v15
                       = MAlonzo.Code.Algebra.Structures.d_isSemiring_1358 (coe v14) in
                 let v16
                       = MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1252
                           (coe v15) in
                 let v17
                       = MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_1158
                           (coe v16) in
                 let v18
                       = MAlonzo.Code.Algebra.Structures.d_isMonoid_416 (coe v17) in
                 let v19
                       = MAlonzo.Code.Algebra.Structures.d_isSemigroup_368 (coe v18) in
                 coe
                   MAlonzo.Code.Algebra.Structures.du_setoid_110
                   (coe MAlonzo.Code.Algebra.Structures.d_isMagma_202 (coe v19)))
                (d_'10214'_'10215'N_454
                   (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5) (coe v6)
                   (coe v7) (coe v8)
                   (coe
                      d__'94'N__798 (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5)
                      (coe v6) (coe v7) (coe v8)
                      (coe
                         d_normalise_838 (coe v0) (coe v1) (coe v2) (coe v3) (coe v4)
                         (coe v5) (coe v6) (coe v7) (coe v8) (coe v11))
                      (coe v12))
                   (coe v10))
                (coe
                   MAlonzo.Code.Algebra.Definitions.RawSemiring.du__'94'__70
                   (coe
                      MAlonzo.Code.Algebra.Bundles.du_rawSemiring_1890
                      (coe
                         MAlonzo.Code.Algebra.Bundles.du_semiringWithoutAnnihilatingZero_2048
                         (coe
                            MAlonzo.Code.Algebra.Bundles.du_semiring_2222
                            (coe
                               MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.du_commutativeSemiring_316
                               (coe v5)))))
                   (coe
                      d_'10214'_'10215''8595'_860 (coe v0) (coe v1) (coe v2) (coe v3)
                      (coe v4) (coe v5) (coe v6) (coe v7) (coe v8) (coe v11) (coe v10))
                   (coe v12))
                (coe
                   MAlonzo.Code.Algebra.Definitions.RawSemiring.du__'94'__70
                   (coe
                      MAlonzo.Code.Algebra.Bundles.du_rawSemiring_1890
                      (coe
                         MAlonzo.Code.Algebra.Bundles.du_semiringWithoutAnnihilatingZero_2048
                         (coe
                            MAlonzo.Code.Algebra.Bundles.du_semiring_2222
                            (coe
                               MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.du_commutativeSemiring_316
                               (coe v5)))))
                   (coe du_'10214'_'10215'_402 (coe v5) (coe v6) (coe v11) (coe v10))
                   (coe v12))
                (coe
                   MAlonzo.Code.Relation.Binary.Reasoning.Setoid.du_step'45''8776'_58
                   (let v13
                          = MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d_isAlmostCommutativeRing_212
                              (coe v5) in
                    let v14
                          = MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d_isCommutativeSemiring_62
                              (coe v13) in
                    let v15
                          = MAlonzo.Code.Algebra.Structures.d_isSemiring_1358 (coe v14) in
                    let v16
                          = MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1252
                              (coe v15) in
                    let v17
                          = MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_1158
                              (coe v16) in
                    let v18
                          = MAlonzo.Code.Algebra.Structures.d_isMonoid_416 (coe v17) in
                    let v19
                          = MAlonzo.Code.Algebra.Structures.d_isSemigroup_368 (coe v18) in
                    coe
                      MAlonzo.Code.Algebra.Structures.du_setoid_110
                      (coe MAlonzo.Code.Algebra.Structures.d_isMagma_202 (coe v19)))
                   (coe
                      MAlonzo.Code.Algebra.Definitions.RawSemiring.du__'94'__70
                      (coe
                         MAlonzo.Code.Algebra.Bundles.du_rawSemiring_1890
                         (coe
                            MAlonzo.Code.Algebra.Bundles.du_semiringWithoutAnnihilatingZero_2048
                            (coe
                               MAlonzo.Code.Algebra.Bundles.du_semiring_2222
                               (coe
                                  MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.du_commutativeSemiring_316
                                  (coe v5)))))
                      (coe
                         d_'10214'_'10215''8595'_860 (coe v0) (coe v1) (coe v2) (coe v3)
                         (coe v4) (coe v5) (coe v6) (coe v7) (coe v8) (coe v11) (coe v10))
                      (coe v12))
                   (coe
                      MAlonzo.Code.Algebra.Definitions.RawSemiring.du__'94'__70
                      (coe
                         MAlonzo.Code.Algebra.Bundles.du_rawSemiring_1890
                         (coe
                            MAlonzo.Code.Algebra.Bundles.du_semiringWithoutAnnihilatingZero_2048
                            (coe
                               MAlonzo.Code.Algebra.Bundles.du_semiring_2222
                               (coe
                                  MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.du_commutativeSemiring_316
                                  (coe v5)))))
                      (coe du_'10214'_'10215'_402 (coe v5) (coe v6) (coe v11) (coe v10))
                      (coe v12))
                   (coe
                      MAlonzo.Code.Algebra.Definitions.RawSemiring.du__'94'__70
                      (coe
                         MAlonzo.Code.Algebra.Bundles.du_rawSemiring_1890
                         (coe
                            MAlonzo.Code.Algebra.Bundles.du_semiringWithoutAnnihilatingZero_2048
                            (coe
                               MAlonzo.Code.Algebra.Bundles.du_semiring_2222
                               (coe
                                  MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.du_commutativeSemiring_316
                                  (coe v5)))))
                      (coe du_'10214'_'10215'_402 (coe v5) (coe v6) (coe v11) (coe v10))
                      (coe v12))
                   (coe
                      MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du__'8718'_86
                      (coe
                         MAlonzo.Code.Relation.Binary.Structures.d_refl_34
                         (coe
                            MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_60
                            (let v13
                                   = MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d_isAlmostCommutativeRing_212
                                       (coe v5) in
                             let v14
                                   = MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d_isCommutativeSemiring_62
                                       (coe v13) in
                             let v15
                                   = MAlonzo.Code.Algebra.Structures.d_isSemiring_1358 (coe v14) in
                             let v16
                                   = MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1252
                                       (coe v15) in
                             let v17
                                   = MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_1158
                                       (coe v16) in
                             let v18
                                   = MAlonzo.Code.Algebra.Structures.d_isMonoid_416 (coe v17) in
                             let v19
                                   = MAlonzo.Code.Algebra.Structures.d_isSemigroup_368 (coe v18) in
                             coe
                               MAlonzo.Code.Algebra.Structures.du_setoid_110
                               (coe MAlonzo.Code.Algebra.Structures.d_isMagma_202 (coe v19)))))
                      (coe
                         MAlonzo.Code.Algebra.Definitions.RawSemiring.du__'94'__70
                         (coe
                            MAlonzo.Code.Algebra.Bundles.du_rawSemiring_1890
                            (coe
                               MAlonzo.Code.Algebra.Bundles.du_semiringWithoutAnnihilatingZero_2048
                               (coe
                                  MAlonzo.Code.Algebra.Bundles.du_semiring_2222
                                  (coe
                                     MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.du_commutativeSemiring_316
                                     (coe v5)))))
                         (coe du_'10214'_'10215'_402 (coe v5) (coe v6) (coe v11) (coe v10))
                         (coe v12)))
                   (coe
                      MAlonzo.Code.Function.Base.du__'10216'_'10217'__250
                      (coe
                         d_correct_1306 (coe v0) (coe v1) (coe v2) (coe v3) (coe v4)
                         (coe v5) (coe v6) (coe v7) (coe v8) (coe v11) (coe v10))
                      (\ v13 v14 ->
                         coe
                           MAlonzo.Code.Algebra.Properties.Semiring.Exp.du_'94''45'cong_196
                           (coe
                              MAlonzo.Code.Algebra.Bundles.du_semiring_2222
                              (coe
                                 MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.du_commutativeSemiring_316
                                 (coe v5)))
                           (coe
                              d_'10214'_'10215''8595'_860 (coe v0) (coe v1) (coe v2) (coe v3)
                              (coe v4) (coe v5) (coe v6) (coe v7) (coe v8) (coe v11) (coe v10))
                           (coe du_'10214'_'10215'_402 (coe v5) (coe v6) (coe v11) (coe v10))
                           (coe v12) v13)
                      erased))
                (d_'94'N'45'homo_1226
                   (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5) (coe v6)
                   (coe v7) (coe v8)
                   (coe
                      d_normalise_838 (coe v0) (coe v1) (coe v2) (coe v3) (coe v4)
                      (coe v5) (coe v6) (coe v7) (coe v8) (coe v11))
                   (coe v12) (coe v10)))
      C_'58''45'__370 v11
        -> coe
             MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.d_begin__40
             (coe
                MAlonzo.Code.Relation.Binary.Reasoning.Setoid.du_step'45''8776'_58
                (let v12
                       = MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d_isAlmostCommutativeRing_212
                           (coe v5) in
                 let v13
                       = MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d_isCommutativeSemiring_62
                           (coe v12) in
                 let v14
                       = MAlonzo.Code.Algebra.Structures.d_isSemiring_1358 (coe v13) in
                 let v15
                       = MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1252
                           (coe v14) in
                 let v16
                       = MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_1158
                           (coe v15) in
                 let v17
                       = MAlonzo.Code.Algebra.Structures.d_isMonoid_416 (coe v16) in
                 let v18
                       = MAlonzo.Code.Algebra.Structures.d_isSemigroup_368 (coe v17) in
                 coe
                   MAlonzo.Code.Algebra.Structures.du_setoid_110
                   (coe MAlonzo.Code.Algebra.Structures.d_isMagma_202 (coe v18)))
                (d_'10214'_'10215'N_454
                   (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5) (coe v6)
                   (coe v7) (coe v8)
                   (coe
                      d_'45'N__812 (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5)
                      (coe v6) (coe v7) (coe v8)
                      (coe
                         d_normalise_838 (coe v0) (coe v1) (coe v2) (coe v3) (coe v4)
                         (coe v5) (coe v6) (coe v7) (coe v8) (coe v11)))
                   (coe v10))
                (coe
                   MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d_'45'__206
                   v5
                   (d_'10214'_'10215''8595'_860
                      (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5) (coe v6)
                      (coe v7) (coe v8) (coe v11) (coe v10)))
                (coe
                   MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d_'45'__206
                   v5
                   (coe du_'10214'_'10215'_402 (coe v5) (coe v6) (coe v11) (coe v10)))
                (coe
                   MAlonzo.Code.Relation.Binary.Reasoning.Setoid.du_step'45''8776'_58
                   (let v12
                          = MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d_isAlmostCommutativeRing_212
                              (coe v5) in
                    let v13
                          = MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d_isCommutativeSemiring_62
                              (coe v12) in
                    let v14
                          = MAlonzo.Code.Algebra.Structures.d_isSemiring_1358 (coe v13) in
                    let v15
                          = MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1252
                              (coe v14) in
                    let v16
                          = MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_1158
                              (coe v15) in
                    let v17
                          = MAlonzo.Code.Algebra.Structures.d_isMonoid_416 (coe v16) in
                    let v18
                          = MAlonzo.Code.Algebra.Structures.d_isSemigroup_368 (coe v17) in
                    coe
                      MAlonzo.Code.Algebra.Structures.du_setoid_110
                      (coe MAlonzo.Code.Algebra.Structures.d_isMagma_202 (coe v18)))
                   (coe
                      MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d_'45'__206
                      v5
                      (d_'10214'_'10215''8595'_860
                         (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5) (coe v6)
                         (coe v7) (coe v8) (coe v11) (coe v10)))
                   (coe
                      MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d_'45'__206
                      v5
                      (coe du_'10214'_'10215'_402 (coe v5) (coe v6) (coe v11) (coe v10)))
                   (coe
                      MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d_'45'__206
                      v5
                      (coe du_'10214'_'10215'_402 (coe v5) (coe v6) (coe v11) (coe v10)))
                   (coe
                      MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du__'8718'_86
                      (coe
                         MAlonzo.Code.Relation.Binary.Structures.d_refl_34
                         (coe
                            MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_60
                            (let v12
                                   = MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d_isAlmostCommutativeRing_212
                                       (coe v5) in
                             let v13
                                   = MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d_isCommutativeSemiring_62
                                       (coe v12) in
                             let v14
                                   = MAlonzo.Code.Algebra.Structures.d_isSemiring_1358 (coe v13) in
                             let v15
                                   = MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1252
                                       (coe v14) in
                             let v16
                                   = MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_1158
                                       (coe v15) in
                             let v17
                                   = MAlonzo.Code.Algebra.Structures.d_isMonoid_416 (coe v16) in
                             let v18
                                   = MAlonzo.Code.Algebra.Structures.d_isSemigroup_368 (coe v17) in
                             coe
                               MAlonzo.Code.Algebra.Structures.du_setoid_110
                               (coe MAlonzo.Code.Algebra.Structures.d_isMagma_202 (coe v18)))))
                      (coe
                         MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d_'45'__206
                         v5
                         (coe
                            du_'10214'_'10215'_402 (coe v5) (coe v6) (coe v11) (coe v10))))
                   (coe
                      MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d_'45''8255'cong_64
                      (MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d_isAlmostCommutativeRing_212
                         (coe v5))
                      (d_'10214'_'10215''8595'_860
                         (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5) (coe v6)
                         (coe v7) (coe v8) (coe v11) (coe v10))
                      (coe du_'10214'_'10215'_402 (coe v5) (coe v6) (coe v11) (coe v10))
                      (d_correct_1306
                         (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5) (coe v6)
                         (coe v7) (coe v8) (coe v11) (coe v10))))
                (d_'45'N'8255''45'homo_1252
                   (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5) (coe v6)
                   (coe v7) (coe v8)
                   (coe
                      d_normalise_838 (coe v0) (coe v1) (coe v2) (coe v3) (coe v4)
                      (coe v5) (coe v6) (coe v7) (coe v8) (coe v11))
                   (coe v10)))
      _ -> MAlonzo.RTE.mazUnreachableError
-- Algebra.Solver.Ring._._⊜_
d__'8860'__1340 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Algebra.Bundles.T_RawRing_2460 ->
  MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.T_AlmostCommutativeRing_176 ->
  MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.T__'45'Raw'45'AlmostCommutative'10230'__354 ->
  (AgdaAny -> AgdaAny -> Maybe AgdaAny) ->
  Integer ->
  T_Polynomial_342 ->
  T_Polynomial_342 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d__'8860'__1340 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 = du__'8860'__1340
du__'8860'__1340 ::
  Integer ->
  T_Polynomial_342 ->
  T_Polynomial_342 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du__'8860'__1340 v0
  = coe MAlonzo.Code.Relation.Binary.Reflection.du__'8860'__142
-- Algebra.Solver.Ring._.prove
d_prove_1342 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Algebra.Bundles.T_RawRing_2460 ->
  MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.T_AlmostCommutativeRing_176 ->
  MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.T__'45'Raw'45'AlmostCommutative'10230'__354 ->
  (AgdaAny -> AgdaAny -> Maybe AgdaAny) ->
  Integer ->
  MAlonzo.Code.Data.Vec.Base.T_Vec_24 ->
  T_Polynomial_342 -> T_Polynomial_342 -> AgdaAny -> AgdaAny
d_prove_1342 v0 v1 v2 v3 v4 v5 v6 v7
  = coe
      MAlonzo.Code.Relation.Binary.Reflection.du_prove_90
      (let v8
             = MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d_isAlmostCommutativeRing_212
                 (coe v5) in
       let v9
             = MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d_isCommutativeSemiring_62
                 (coe v8) in
       let v10
             = MAlonzo.Code.Algebra.Structures.d_isSemiring_1358 (coe v9) in
       let v11
             = MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1252
                 (coe v10) in
       let v12
             = MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_1158
                 (coe v11) in
       let v13
             = MAlonzo.Code.Algebra.Structures.d_isMonoid_416 (coe v12) in
       let v14
             = MAlonzo.Code.Algebra.Structures.d_isSemigroup_368 (coe v13) in
       coe
         MAlonzo.Code.Algebra.Structures.du_setoid_110
         (coe MAlonzo.Code.Algebra.Structures.d_isMagma_202 (coe v14)))
      (\ v8 v9 v10 ->
         coe du_'10214'_'10215'_402 (coe v5) (coe v6) v9 v10)
      (coe
         d_'10214'_'10215''8595'_860 (coe v0) (coe v1) (coe v2) (coe v3)
         (coe v4) (coe v5) (coe v6) (coe v7))
      (coe
         d_correct_1306 (coe v0) (coe v1) (coe v2) (coe v3) (coe v4)
         (coe v5) (coe v6) (coe v7))
-- Algebra.Solver.Ring._.solve
d_solve_1344 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Algebra.Bundles.T_RawRing_2460 ->
  MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.T_AlmostCommutativeRing_176 ->
  MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.T__'45'Raw'45'AlmostCommutative'10230'__354 ->
  (AgdaAny -> AgdaAny -> Maybe AgdaAny) ->
  Integer -> AgdaAny -> AgdaAny -> AgdaAny
d_solve_1344 v0 v1 v2 v3 v4 v5 v6 v7
  = coe
      MAlonzo.Code.Relation.Binary.Reflection.du_solve_114
      (let v8
             = MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d_isAlmostCommutativeRing_212
                 (coe v5) in
       let v9
             = MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d_isCommutativeSemiring_62
                 (coe v8) in
       let v10
             = MAlonzo.Code.Algebra.Structures.d_isSemiring_1358 (coe v9) in
       let v11
             = MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1252
                 (coe v10) in
       let v12
             = MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_1158
                 (coe v11) in
       let v13
             = MAlonzo.Code.Algebra.Structures.d_isMonoid_416 (coe v12) in
       let v14
             = MAlonzo.Code.Algebra.Structures.d_isSemigroup_368 (coe v13) in
       coe
         MAlonzo.Code.Algebra.Structures.du_setoid_110
         (coe MAlonzo.Code.Algebra.Structures.d_isMagma_202 (coe v14)))
      (coe (\ v8 -> coe C_var_360))
      (\ v8 v9 v10 ->
         coe du_'10214'_'10215'_402 (coe v5) (coe v6) v9 v10)
      (coe
         d_'10214'_'10215''8595'_860 (coe v0) (coe v1) (coe v2) (coe v3)
         (coe v4) (coe v5) (coe v6) (coe v7))
      (coe
         d_correct_1306 (coe v0) (coe v1) (coe v2) (coe v3) (coe v4)
         (coe v5) (coe v6) (coe v7))
