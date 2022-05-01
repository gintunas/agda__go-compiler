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

module MAlonzo.Code.Algebra.Solver.Ring.Simple where

import MAlonzo.RTE (coe, erased, AgdaAny, addInt, subInt, mulInt,
                    quotInt, remInt, geqInt, ltInt, eqInt, add64, sub64, mul64, quot64,
                    rem64, lt64, eq64, word64FromNat, word64ToNat)
import qualified MAlonzo.RTE
import qualified Data.Text
import qualified MAlonzo.Code.Agda.Builtin.Sigma
import qualified MAlonzo.Code.Agda.Primitive
import qualified MAlonzo.Code.Algebra.Solver.Ring
import qualified MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing
import qualified MAlonzo.Code.Algebra.Structures
import qualified MAlonzo.Code.Data.Fin.Base
import qualified MAlonzo.Code.Data.Vec.Base
import qualified MAlonzo.Code.Relation.Binary.Consequences
import qualified MAlonzo.Code.Relation.Binary.Reflection
import qualified MAlonzo.Code.Relation.Nullary

-- Algebra.Solver.Ring.Simple._._*H_
d__'42'H__160 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.T_AlmostCommutativeRing_176 ->
  (AgdaAny -> AgdaAny -> MAlonzo.Code.Relation.Nullary.T_Dec_32) ->
  Integer ->
  MAlonzo.Code.Algebra.Solver.Ring.T_HNF_430 ->
  MAlonzo.Code.Algebra.Solver.Ring.T_HNF_430 ->
  MAlonzo.Code.Algebra.Solver.Ring.T_HNF_430
d__'42'H__160 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Algebra.Solver.Ring.d__'42'H__722 (coe v0) (coe v0)
      (coe v1) (coe v1)
      (coe
         MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.du_rawRing_340
         (coe v2))
      (coe v2)
      (coe
         MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.du_'45'raw'45'almostCommutative'10230'_762
         (coe v2))
      (coe
         MAlonzo.Code.Relation.Binary.Consequences.du_dec'8658'weaklyDec_734
         (coe v3))
-- Algebra.Solver.Ring.Simple._._*HN_
d__'42'HN__162 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.T_AlmostCommutativeRing_176 ->
  (AgdaAny -> AgdaAny -> MAlonzo.Code.Relation.Nullary.T_Dec_32) ->
  Integer ->
  MAlonzo.Code.Algebra.Solver.Ring.T_HNF_430 ->
  MAlonzo.Code.Algebra.Solver.Ring.T_Normal_432 ->
  MAlonzo.Code.Algebra.Solver.Ring.T_HNF_430
d__'42'HN__162 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Algebra.Solver.Ring.d__'42'HN__718 (coe v0) (coe v0)
      (coe v1) (coe v1)
      (coe
         MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.du_rawRing_340
         (coe v2))
      (coe v2)
      (coe
         MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.du_'45'raw'45'almostCommutative'10230'_762
         (coe v2))
      (coe
         MAlonzo.Code.Relation.Binary.Consequences.du_dec'8658'weaklyDec_734
         (coe v3))
-- Algebra.Solver.Ring.Simple._._*N_
d__'42'N__164 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.T_AlmostCommutativeRing_176 ->
  (AgdaAny -> AgdaAny -> MAlonzo.Code.Relation.Nullary.T_Dec_32) ->
  Integer ->
  MAlonzo.Code.Algebra.Solver.Ring.T_Normal_432 ->
  MAlonzo.Code.Algebra.Solver.Ring.T_Normal_432 ->
  MAlonzo.Code.Algebra.Solver.Ring.T_Normal_432
d__'42'N__164 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Algebra.Solver.Ring.d__'42'N__726 (coe v0) (coe v0)
      (coe v1) (coe v1)
      (coe
         MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.du_rawRing_340
         (coe v2))
      (coe v2)
      (coe
         MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.du_'45'raw'45'almostCommutative'10230'_762
         (coe v2))
      (coe
         MAlonzo.Code.Relation.Binary.Consequences.du_dec'8658'weaklyDec_734
         (coe v3))
-- Algebra.Solver.Ring.Simple._._*NH_
d__'42'NH__166 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.T_AlmostCommutativeRing_176 ->
  (AgdaAny -> AgdaAny -> MAlonzo.Code.Relation.Nullary.T_Dec_32) ->
  Integer ->
  MAlonzo.Code.Algebra.Solver.Ring.T_Normal_432 ->
  MAlonzo.Code.Algebra.Solver.Ring.T_HNF_430 ->
  MAlonzo.Code.Algebra.Solver.Ring.T_HNF_430
d__'42'NH__166 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Algebra.Solver.Ring.d__'42'NH__714 (coe v0) (coe v0)
      (coe v1) (coe v1)
      (coe
         MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.du_rawRing_340
         (coe v2))
      (coe v2)
      (coe
         MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.du_'45'raw'45'almostCommutative'10230'_762
         (coe v2))
      (coe
         MAlonzo.Code.Relation.Binary.Consequences.du_dec'8658'weaklyDec_734
         (coe v3))
-- Algebra.Solver.Ring.Simple._._*x+H_
d__'42'x'43'H__172 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.T_AlmostCommutativeRing_176 ->
  (AgdaAny -> AgdaAny -> MAlonzo.Code.Relation.Nullary.T_Dec_32) ->
  Integer ->
  MAlonzo.Code.Algebra.Solver.Ring.T_HNF_430 ->
  MAlonzo.Code.Algebra.Solver.Ring.T_HNF_430 ->
  MAlonzo.Code.Algebra.Solver.Ring.T_HNF_430
d__'42'x'43'H__172 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Algebra.Solver.Ring.d__'42'x'43'H__700 (coe v0)
      (coe v0) (coe v1) (coe v1)
      (coe
         MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.du_rawRing_340
         (coe v2))
      (coe v2)
      (coe
         MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.du_'45'raw'45'almostCommutative'10230'_762
         (coe v2))
      (coe
         MAlonzo.Code.Relation.Binary.Consequences.du_dec'8658'weaklyDec_734
         (coe v3))
-- Algebra.Solver.Ring.Simple._._*x+HN_
d__'42'x'43'HN__174 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.T_AlmostCommutativeRing_176 ->
  (AgdaAny -> AgdaAny -> MAlonzo.Code.Relation.Nullary.T_Dec_32) ->
  Integer ->
  MAlonzo.Code.Algebra.Solver.Ring.T_HNF_430 ->
  MAlonzo.Code.Algebra.Solver.Ring.T_Normal_432 ->
  MAlonzo.Code.Algebra.Solver.Ring.T_HNF_430
d__'42'x'43'HN__174 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Algebra.Solver.Ring.d__'42'x'43'HN__650 (coe v0)
      (coe v0) (coe v1) (coe v1)
      (coe
         MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.du_rawRing_340
         (coe v2))
      (coe v2)
      (coe
         MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.du_'45'raw'45'almostCommutative'10230'_762
         (coe v2))
      (coe
         MAlonzo.Code.Relation.Binary.Consequences.du_dec'8658'weaklyDec_734
         (coe v3))
-- Algebra.Solver.Ring.Simple._._+H_
d__'43'H__176 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.T_AlmostCommutativeRing_176 ->
  (AgdaAny -> AgdaAny -> MAlonzo.Code.Relation.Nullary.T_Dec_32) ->
  Integer ->
  MAlonzo.Code.Algebra.Solver.Ring.T_HNF_430 ->
  MAlonzo.Code.Algebra.Solver.Ring.T_HNF_430 ->
  MAlonzo.Code.Algebra.Solver.Ring.T_HNF_430
d__'43'H__176 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Algebra.Solver.Ring.d__'43'H__672 (coe v0) (coe v0)
      (coe v1) (coe v1)
      (coe
         MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.du_rawRing_340
         (coe v2))
      (coe v2)
      (coe
         MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.du_'45'raw'45'almostCommutative'10230'_762
         (coe v2))
      (coe
         MAlonzo.Code.Relation.Binary.Consequences.du_dec'8658'weaklyDec_734
         (coe v3))
-- Algebra.Solver.Ring.Simple._._+N_
d__'43'N__178 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.T_AlmostCommutativeRing_176 ->
  (AgdaAny -> AgdaAny -> MAlonzo.Code.Relation.Nullary.T_Dec_32) ->
  Integer ->
  MAlonzo.Code.Algebra.Solver.Ring.T_Normal_432 ->
  MAlonzo.Code.Algebra.Solver.Ring.T_Normal_432 ->
  MAlonzo.Code.Algebra.Solver.Ring.T_Normal_432
d__'43'N__178 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Algebra.Solver.Ring.d__'43'N__676 (coe v0) (coe v0)
      (coe v1) (coe v1)
      (coe
         MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.du_rawRing_340
         (coe v2))
      (coe v2)
      (coe
         MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.du_'45'raw'45'almostCommutative'10230'_762
         (coe v2))
      (coe
         MAlonzo.Code.Relation.Binary.Consequences.du_dec'8658'weaklyDec_734
         (coe v3))
-- Algebra.Solver.Ring.Simple._._:*_
d__'58''42'__180 ::
  MAlonzo.Code.Algebra.Solver.Ring.T_Polynomial_342 ->
  MAlonzo.Code.Algebra.Solver.Ring.T_Polynomial_342 ->
  MAlonzo.Code.Algebra.Solver.Ring.T_Polynomial_342
d__'58''42'__180
  = coe
      MAlonzo.Code.Algebra.Solver.Ring.C_op_352
      (coe MAlonzo.Code.Algebra.Solver.Ring.C_'91''42''93'_338)
-- Algebra.Solver.Ring.Simple._._:+_
d__'58''43'__182 ::
  MAlonzo.Code.Algebra.Solver.Ring.T_Polynomial_342 ->
  MAlonzo.Code.Algebra.Solver.Ring.T_Polynomial_342 ->
  MAlonzo.Code.Algebra.Solver.Ring.T_Polynomial_342
d__'58''43'__182
  = coe
      MAlonzo.Code.Algebra.Solver.Ring.C_op_352
      (coe MAlonzo.Code.Algebra.Solver.Ring.C_'91''43''93'_336)
-- Algebra.Solver.Ring.Simple._._:-_
d__'58''45'__184 ::
  MAlonzo.Code.Algebra.Solver.Ring.T_Polynomial_342 ->
  MAlonzo.Code.Algebra.Solver.Ring.T_Polynomial_342 ->
  MAlonzo.Code.Algebra.Solver.Ring.T_Polynomial_342
d__'58''45'__184 v0 v1
  = coe
      MAlonzo.Code.Algebra.Solver.Ring.C_op_352
      (coe MAlonzo.Code.Algebra.Solver.Ring.C_'91''43''93'_336) (coe v0)
      (coe MAlonzo.Code.Algebra.Solver.Ring.C_'58''45'__370 (coe v1))
-- Algebra.Solver.Ring.Simple._._⊜_
d__'8860'__186 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.T_AlmostCommutativeRing_176 ->
  (AgdaAny -> AgdaAny -> MAlonzo.Code.Relation.Nullary.T_Dec_32) ->
  Integer ->
  MAlonzo.Code.Algebra.Solver.Ring.T_Polynomial_342 ->
  MAlonzo.Code.Algebra.Solver.Ring.T_Polynomial_342 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d__'8860'__186 ~v0 ~v1 ~v2 ~v3 = du__'8860'__186
du__'8860'__186 ::
  Integer ->
  MAlonzo.Code.Algebra.Solver.Ring.T_Polynomial_342 ->
  MAlonzo.Code.Algebra.Solver.Ring.T_Polynomial_342 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du__'8860'__186 v0
  = coe MAlonzo.Code.Relation.Binary.Reflection.du__'8860'__142
-- Algebra.Solver.Ring.Simple._._:×_
d__'58''215'__190 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.T_AlmostCommutativeRing_176 ->
  (AgdaAny -> AgdaAny -> MAlonzo.Code.Relation.Nullary.T_Dec_32) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Solver.Ring.T_Polynomial_342 ->
  MAlonzo.Code.Algebra.Solver.Ring.T_Polynomial_342
d__'58''215'__190 ~v0 ~v1 v2 ~v3 = du__'58''215'__190 v2
du__'58''215'__190 ::
  MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.T_AlmostCommutativeRing_176 ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Solver.Ring.T_Polynomial_342 ->
  MAlonzo.Code.Algebra.Solver.Ring.T_Polynomial_342
du__'58''215'__190 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Algebra.Solver.Ring.du__'58''215'__390
      (coe
         MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.du_rawRing_340
         (coe v0))
      v2 v3
-- Algebra.Solver.Ring.Simple._._^N_
d__'94'N__192 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.T_AlmostCommutativeRing_176 ->
  (AgdaAny -> AgdaAny -> MAlonzo.Code.Relation.Nullary.T_Dec_32) ->
  Integer ->
  MAlonzo.Code.Algebra.Solver.Ring.T_Normal_432 ->
  Integer -> MAlonzo.Code.Algebra.Solver.Ring.T_Normal_432
d__'94'N__192 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Algebra.Solver.Ring.d__'94'N__798 (coe v0) (coe v0)
      (coe v1) (coe v1)
      (coe
         MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.du_rawRing_340
         (coe v2))
      (coe v2)
      (coe
         MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.du_'45'raw'45'almostCommutative'10230'_762
         (coe v2))
      (coe
         MAlonzo.Code.Relation.Binary.Consequences.du_dec'8658'weaklyDec_734
         (coe v3))
-- Algebra.Solver.Ring.Simple._._≈H_
d__'8776'H__194 a0 a1 a2 a3 a4 a5 a6 = ()
-- Algebra.Solver.Ring.Simple._._≈N_
d__'8776'N__196 a0 a1 a2 a3 a4 a5 a6 = ()
-- Algebra.Solver.Ring.Simple._._≟H_
d__'8799'H__198 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.T_AlmostCommutativeRing_176 ->
  (AgdaAny -> AgdaAny -> MAlonzo.Code.Relation.Nullary.T_Dec_32) ->
  Integer ->
  MAlonzo.Code.Algebra.Solver.Ring.T_HNF_430 ->
  MAlonzo.Code.Algebra.Solver.Ring.T_HNF_430 ->
  Maybe MAlonzo.Code.Algebra.Solver.Ring.T__'8776'H__472
d__'8799'H__198 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Algebra.Solver.Ring.d__'8799'H__510 (coe v0) (coe v0)
      (coe v1) (coe v1)
      (coe
         MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.du_rawRing_340
         (coe v2))
      (coe v2)
      (coe
         MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.du_'45'raw'45'almostCommutative'10230'_762
         (coe v2))
      (coe
         MAlonzo.Code.Relation.Binary.Consequences.du_dec'8658'weaklyDec_734
         (coe v3))
-- Algebra.Solver.Ring.Simple._._≟N_
d__'8799'N__200 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.T_AlmostCommutativeRing_176 ->
  (AgdaAny -> AgdaAny -> MAlonzo.Code.Relation.Nullary.T_Dec_32) ->
  Integer ->
  MAlonzo.Code.Algebra.Solver.Ring.T_Normal_432 ->
  MAlonzo.Code.Algebra.Solver.Ring.T_Normal_432 ->
  Maybe MAlonzo.Code.Algebra.Solver.Ring.T__'8776'N__476
d__'8799'N__200 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Algebra.Solver.Ring.d__'8799'N__514 (coe v0) (coe v0)
      (coe v1) (coe v1)
      (coe
         MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.du_rawRing_340
         (coe v2))
      (coe v2)
      (coe
         MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.du_'45'raw'45'almostCommutative'10230'_762
         (coe v2))
      (coe
         MAlonzo.Code.Relation.Binary.Consequences.du_dec'8658'weaklyDec_734
         (coe v3))
-- Algebra.Solver.Ring.Simple._.*H-homo
d_'42'H'45'homo_202 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.T_AlmostCommutativeRing_176 ->
  (AgdaAny -> AgdaAny -> MAlonzo.Code.Relation.Nullary.T_Dec_32) ->
  Integer ->
  MAlonzo.Code.Algebra.Solver.Ring.T_HNF_430 ->
  MAlonzo.Code.Algebra.Solver.Ring.T_HNF_430 ->
  MAlonzo.Code.Data.Vec.Base.T_Vec_24 -> AgdaAny
d_'42'H'45'homo_202 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Algebra.Solver.Ring.d_'42'H'45'homo_1090 (coe v0)
      (coe v0) (coe v1) (coe v1)
      (coe
         MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.du_rawRing_340
         (coe v2))
      (coe v2)
      (coe
         MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.du_'45'raw'45'almostCommutative'10230'_762
         (coe v2))
      (coe
         MAlonzo.Code.Relation.Binary.Consequences.du_dec'8658'weaklyDec_734
         (coe v3))
-- Algebra.Solver.Ring.Simple._.*HN-homo
d_'42'HN'45'homo_204 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.T_AlmostCommutativeRing_176 ->
  (AgdaAny -> AgdaAny -> MAlonzo.Code.Relation.Nullary.T_Dec_32) ->
  Integer ->
  MAlonzo.Code.Algebra.Solver.Ring.T_HNF_430 ->
  MAlonzo.Code.Algebra.Solver.Ring.T_Normal_432 ->
  AgdaAny -> MAlonzo.Code.Data.Vec.Base.T_Vec_24 -> AgdaAny
d_'42'HN'45'homo_204 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Algebra.Solver.Ring.d_'42'HN'45'homo_1080 (coe v0)
      (coe v0) (coe v1) (coe v1)
      (coe
         MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.du_rawRing_340
         (coe v2))
      (coe v2)
      (coe
         MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.du_'45'raw'45'almostCommutative'10230'_762
         (coe v2))
      (coe
         MAlonzo.Code.Relation.Binary.Consequences.du_dec'8658'weaklyDec_734
         (coe v3))
-- Algebra.Solver.Ring.Simple._.*N-homo
d_'42'N'45'homo_206 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.T_AlmostCommutativeRing_176 ->
  (AgdaAny -> AgdaAny -> MAlonzo.Code.Relation.Nullary.T_Dec_32) ->
  Integer ->
  MAlonzo.Code.Algebra.Solver.Ring.T_Normal_432 ->
  MAlonzo.Code.Algebra.Solver.Ring.T_Normal_432 ->
  MAlonzo.Code.Data.Vec.Base.T_Vec_24 -> AgdaAny
d_'42'N'45'homo_206 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Algebra.Solver.Ring.d_'42'N'45'homo_1100 (coe v0)
      (coe v0) (coe v1) (coe v1)
      (coe
         MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.du_rawRing_340
         (coe v2))
      (coe v2)
      (coe
         MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.du_'45'raw'45'almostCommutative'10230'_762
         (coe v2))
      (coe
         MAlonzo.Code.Relation.Binary.Consequences.du_dec'8658'weaklyDec_734
         (coe v3))
-- Algebra.Solver.Ring.Simple._.*NH-homo
d_'42'NH'45'homo_208 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.T_AlmostCommutativeRing_176 ->
  (AgdaAny -> AgdaAny -> MAlonzo.Code.Relation.Nullary.T_Dec_32) ->
  Integer ->
  MAlonzo.Code.Algebra.Solver.Ring.T_Normal_432 ->
  MAlonzo.Code.Algebra.Solver.Ring.T_HNF_430 ->
  AgdaAny -> MAlonzo.Code.Data.Vec.Base.T_Vec_24 -> AgdaAny
d_'42'NH'45'homo_208 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Algebra.Solver.Ring.d_'42'NH'45'homo_1068 (coe v0)
      (coe v0) (coe v1) (coe v1)
      (coe
         MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.du_rawRing_340
         (coe v2))
      (coe v2)
      (coe
         MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.du_'45'raw'45'almostCommutative'10230'_762
         (coe v2))
      (coe
         MAlonzo.Code.Relation.Binary.Consequences.du_dec'8658'weaklyDec_734
         (coe v3))
-- Algebra.Solver.Ring.Simple._.*x+H-homo
d_'42'x'43'H'45'homo_210 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.T_AlmostCommutativeRing_176 ->
  (AgdaAny -> AgdaAny -> MAlonzo.Code.Relation.Nullary.T_Dec_32) ->
  Integer ->
  MAlonzo.Code.Algebra.Solver.Ring.T_HNF_430 ->
  MAlonzo.Code.Algebra.Solver.Ring.T_HNF_430 ->
  AgdaAny -> MAlonzo.Code.Data.Vec.Base.T_Vec_24 -> AgdaAny
d_'42'x'43'H'45'homo_210 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Algebra.Solver.Ring.d_'42'x'43'H'45'homo_1038 (coe v0)
      (coe v0) (coe v1) (coe v1)
      (coe
         MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.du_rawRing_340
         (coe v2))
      (coe v2)
      (coe
         MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.du_'45'raw'45'almostCommutative'10230'_762
         (coe v2))
      (coe
         MAlonzo.Code.Relation.Binary.Consequences.du_dec'8658'weaklyDec_734
         (coe v3))
-- Algebra.Solver.Ring.Simple._.*x+HN≈*x+
d_'42'x'43'HN'8776''42'x'43'_212 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.T_AlmostCommutativeRing_176 ->
  (AgdaAny -> AgdaAny -> MAlonzo.Code.Relation.Nullary.T_Dec_32) ->
  Integer ->
  MAlonzo.Code.Algebra.Solver.Ring.T_HNF_430 ->
  MAlonzo.Code.Algebra.Solver.Ring.T_Normal_432 ->
  MAlonzo.Code.Data.Vec.Base.T_Vec_24 -> AgdaAny
d_'42'x'43'HN'8776''42'x'43'_212 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Algebra.Solver.Ring.d_'42'x'43'HN'8776''42'x'43'_908
      (coe v0) (coe v0) (coe v1) (coe v1)
      (coe
         MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.du_rawRing_340
         (coe v2))
      (coe v2)
      (coe
         MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.du_'45'raw'45'almostCommutative'10230'_762
         (coe v2))
      (coe
         MAlonzo.Code.Relation.Binary.Consequences.du_dec'8658'weaklyDec_734
         (coe v3))
-- Algebra.Solver.Ring.Simple._.+H-homo
d_'43'H'45'homo_214 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.T_AlmostCommutativeRing_176 ->
  (AgdaAny -> AgdaAny -> MAlonzo.Code.Relation.Nullary.T_Dec_32) ->
  Integer ->
  MAlonzo.Code.Algebra.Solver.Ring.T_HNF_430 ->
  MAlonzo.Code.Algebra.Solver.Ring.T_HNF_430 ->
  MAlonzo.Code.Data.Vec.Base.T_Vec_24 -> AgdaAny
d_'43'H'45'homo_214 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Algebra.Solver.Ring.d_'43'H'45'homo_984 (coe v0)
      (coe v0) (coe v1) (coe v1)
      (coe
         MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.du_rawRing_340
         (coe v2))
      (coe v2)
      (coe
         MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.du_'45'raw'45'almostCommutative'10230'_762
         (coe v2))
      (coe
         MAlonzo.Code.Relation.Binary.Consequences.du_dec'8658'weaklyDec_734
         (coe v3))
-- Algebra.Solver.Ring.Simple._.+N-homo
d_'43'N'45'homo_216 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.T_AlmostCommutativeRing_176 ->
  (AgdaAny -> AgdaAny -> MAlonzo.Code.Relation.Nullary.T_Dec_32) ->
  Integer ->
  MAlonzo.Code.Algebra.Solver.Ring.T_Normal_432 ->
  MAlonzo.Code.Algebra.Solver.Ring.T_Normal_432 ->
  MAlonzo.Code.Data.Vec.Base.T_Vec_24 -> AgdaAny
d_'43'N'45'homo_216 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Algebra.Solver.Ring.d_'43'N'45'homo_994 (coe v0)
      (coe v0) (coe v1) (coe v1)
      (coe
         MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.du_rawRing_340
         (coe v2))
      (coe v2)
      (coe
         MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.du_'45'raw'45'almostCommutative'10230'_762
         (coe v2))
      (coe
         MAlonzo.Code.Relation.Binary.Consequences.du_dec'8658'weaklyDec_734
         (coe v3))
-- Algebra.Solver.Ring.Simple._.-H_
d_'45'H__218 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.T_AlmostCommutativeRing_176 ->
  (AgdaAny -> AgdaAny -> MAlonzo.Code.Relation.Nullary.T_Dec_32) ->
  Integer ->
  MAlonzo.Code.Algebra.Solver.Ring.T_HNF_430 ->
  MAlonzo.Code.Algebra.Solver.Ring.T_HNF_430
d_'45'H__218 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Algebra.Solver.Ring.d_'45'H__808 (coe v0) (coe v0)
      (coe v1) (coe v1)
      (coe
         MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.du_rawRing_340
         (coe v2))
      (coe v2)
      (coe
         MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.du_'45'raw'45'almostCommutative'10230'_762
         (coe v2))
      (coe
         MAlonzo.Code.Relation.Binary.Consequences.du_dec'8658'weaklyDec_734
         (coe v3))
-- Algebra.Solver.Ring.Simple._.-H‿-homo
d_'45'H'8255''45'homo_220 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.T_AlmostCommutativeRing_176 ->
  (AgdaAny -> AgdaAny -> MAlonzo.Code.Relation.Nullary.T_Dec_32) ->
  Integer ->
  MAlonzo.Code.Algebra.Solver.Ring.T_HNF_430 ->
  MAlonzo.Code.Data.Vec.Base.T_Vec_24 -> AgdaAny
d_'45'H'8255''45'homo_220 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Algebra.Solver.Ring.d_'45'H'8255''45'homo_1244
      (coe v0) (coe v0) (coe v1) (coe v1)
      (coe
         MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.du_rawRing_340
         (coe v2))
      (coe v2)
      (coe
         MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.du_'45'raw'45'almostCommutative'10230'_762
         (coe v2))
      (coe
         MAlonzo.Code.Relation.Binary.Consequences.du_dec'8658'weaklyDec_734
         (coe v3))
-- Algebra.Solver.Ring.Simple._.-N_
d_'45'N__222 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.T_AlmostCommutativeRing_176 ->
  (AgdaAny -> AgdaAny -> MAlonzo.Code.Relation.Nullary.T_Dec_32) ->
  Integer ->
  MAlonzo.Code.Algebra.Solver.Ring.T_Normal_432 ->
  MAlonzo.Code.Algebra.Solver.Ring.T_Normal_432
d_'45'N__222 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Algebra.Solver.Ring.d_'45'N__812 (coe v0) (coe v0)
      (coe v1) (coe v1)
      (coe
         MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.du_rawRing_340
         (coe v2))
      (coe v2)
      (coe
         MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.du_'45'raw'45'almostCommutative'10230'_762
         (coe v2))
      (coe
         MAlonzo.Code.Relation.Binary.Consequences.du_dec'8658'weaklyDec_734
         (coe v3))
-- Algebra.Solver.Ring.Simple._.-N‿-homo
d_'45'N'8255''45'homo_224 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.T_AlmostCommutativeRing_176 ->
  (AgdaAny -> AgdaAny -> MAlonzo.Code.Relation.Nullary.T_Dec_32) ->
  Integer ->
  MAlonzo.Code.Algebra.Solver.Ring.T_Normal_432 ->
  MAlonzo.Code.Data.Vec.Base.T_Vec_24 -> AgdaAny
d_'45'N'8255''45'homo_224 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Algebra.Solver.Ring.d_'45'N'8255''45'homo_1252
      (coe v0) (coe v0) (coe v1) (coe v1)
      (coe
         MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.du_rawRing_340
         (coe v2))
      (coe v2)
      (coe
         MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.du_'45'raw'45'almostCommutative'10230'_762
         (coe v2))
      (coe
         MAlonzo.Code.Relation.Binary.Consequences.du_dec'8658'weaklyDec_734
         (coe v3))
-- Algebra.Solver.Ring.Simple._.0H
d_0H_226 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.T_AlmostCommutativeRing_176 ->
  (AgdaAny -> AgdaAny -> MAlonzo.Code.Relation.Nullary.T_Dec_32) ->
  Integer -> MAlonzo.Code.Algebra.Solver.Ring.T_HNF_430
d_0H_226 ~v0 ~v1 ~v2 ~v3 ~v4 = du_0H_226
du_0H_226 :: MAlonzo.Code.Algebra.Solver.Ring.T_HNF_430
du_0H_226 = coe MAlonzo.Code.Algebra.Solver.Ring.C_'8709'_436
-- Algebra.Solver.Ring.Simple._.0N
d_0N_228 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.T_AlmostCommutativeRing_176 ->
  (AgdaAny -> AgdaAny -> MAlonzo.Code.Relation.Nullary.T_Dec_32) ->
  Integer -> MAlonzo.Code.Algebra.Solver.Ring.T_Normal_432
d_0N_228 ~v0 ~v1 v2 ~v3 = du_0N_228 v2
du_0N_228 ::
  MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.T_AlmostCommutativeRing_176 ->
  Integer -> MAlonzo.Code.Algebra.Solver.Ring.T_Normal_432
du_0N_228 v0
  = coe
      MAlonzo.Code.Algebra.Solver.Ring.du_0N_632
      (coe
         MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.du_rawRing_340
         (coe v0))
-- Algebra.Solver.Ring.Simple._.0N-homo
d_0N'45'homo_230 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.T_AlmostCommutativeRing_176 ->
  (AgdaAny -> AgdaAny -> MAlonzo.Code.Relation.Nullary.T_Dec_32) ->
  Integer -> MAlonzo.Code.Data.Vec.Base.T_Vec_24 -> AgdaAny
d_0N'45'homo_230 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Algebra.Solver.Ring.d_0N'45'homo_870 (coe v0) (coe v0)
      (coe v1) (coe v1)
      (coe
         MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.du_rawRing_340
         (coe v2))
      (coe v2)
      (coe
         MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.du_'45'raw'45'almostCommutative'10230'_762
         (coe v2))
      (coe
         MAlonzo.Code.Relation.Binary.Consequences.du_dec'8658'weaklyDec_734
         (coe v3))
-- Algebra.Solver.Ring.Simple._.0≈⟦0⟧
d_0'8776''10214'0'10215'_232 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.T_AlmostCommutativeRing_176 ->
  (AgdaAny -> AgdaAny -> MAlonzo.Code.Relation.Nullary.T_Dec_32) ->
  Integer ->
  MAlonzo.Code.Algebra.Solver.Ring.T_Normal_432 ->
  MAlonzo.Code.Algebra.Solver.Ring.T__'8776'N__476 ->
  MAlonzo.Code.Data.Vec.Base.T_Vec_24 -> AgdaAny
d_0'8776''10214'0'10215'_232 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Algebra.Solver.Ring.d_0'8776''10214'0'10215'_882
      (coe v0) (coe v0) (coe v1) (coe v1)
      (coe
         MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.du_rawRing_340
         (coe v2))
      (coe v2)
      (coe
         MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.du_'45'raw'45'almostCommutative'10230'_762
         (coe v2))
      (coe
         MAlonzo.Code.Relation.Binary.Consequences.du_dec'8658'weaklyDec_734
         (coe v3))
-- Algebra.Solver.Ring.Simple._.1H
d_1H_234 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.T_AlmostCommutativeRing_176 ->
  (AgdaAny -> AgdaAny -> MAlonzo.Code.Relation.Nullary.T_Dec_32) ->
  Integer -> MAlonzo.Code.Algebra.Solver.Ring.T_HNF_430
d_1H_234 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Algebra.Solver.Ring.d_1H_638 (coe v0) (coe v0)
      (coe v1) (coe v1)
      (coe
         MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.du_rawRing_340
         (coe v2))
      (coe v2)
      (coe
         MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.du_'45'raw'45'almostCommutative'10230'_762
         (coe v2))
      (coe
         MAlonzo.Code.Relation.Binary.Consequences.du_dec'8658'weaklyDec_734
         (coe v3))
-- Algebra.Solver.Ring.Simple._.1N
d_1N_236 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.T_AlmostCommutativeRing_176 ->
  (AgdaAny -> AgdaAny -> MAlonzo.Code.Relation.Nullary.T_Dec_32) ->
  Integer -> MAlonzo.Code.Algebra.Solver.Ring.T_Normal_432
d_1N_236 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Algebra.Solver.Ring.d_1N_642 (coe v0) (coe v0)
      (coe v1) (coe v1)
      (coe
         MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.du_rawRing_340
         (coe v2))
      (coe v2)
      (coe
         MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.du_'45'raw'45'almostCommutative'10230'_762
         (coe v2))
      (coe
         MAlonzo.Code.Relation.Binary.Consequences.du_dec'8658'weaklyDec_734
         (coe v3))
-- Algebra.Solver.Ring.Simple._.1N-homo
d_1N'45'homo_238 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.T_AlmostCommutativeRing_176 ->
  (AgdaAny -> AgdaAny -> MAlonzo.Code.Relation.Nullary.T_Dec_32) ->
  Integer -> MAlonzo.Code.Data.Vec.Base.T_Vec_24 -> AgdaAny
d_1N'45'homo_238 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Algebra.Solver.Ring.d_1N'45'homo_894 (coe v0) (coe v0)
      (coe v1) (coe v1)
      (coe
         MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.du_rawRing_340
         (coe v2))
      (coe v2)
      (coe
         MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.du_'45'raw'45'almostCommutative'10230'_762
         (coe v2))
      (coe
         MAlonzo.Code.Relation.Binary.Consequences.du_dec'8658'weaklyDec_734
         (coe v3))
-- Algebra.Solver.Ring.Simple._.HNF
d_HNF_242 a0 a1 a2 a3 a4 = ()
-- Algebra.Solver.Ring.Simple._.Normal
d_Normal_244 a0 a1 a2 a3 a4 = ()
-- Algebra.Solver.Ring.Simple._.Op
d_Op_246 a0 a1 a2 a3 = ()
-- Algebra.Solver.Ring.Simple._.Polynomial
d_Polynomial_248 a0 a1 a2 a3 a4 = ()
-- Algebra.Solver.Ring.Simple._.^N-homo
d_'94'N'45'homo_254 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.T_AlmostCommutativeRing_176 ->
  (AgdaAny -> AgdaAny -> MAlonzo.Code.Relation.Nullary.T_Dec_32) ->
  Integer ->
  MAlonzo.Code.Algebra.Solver.Ring.T_Normal_432 ->
  Integer -> MAlonzo.Code.Data.Vec.Base.T_Vec_24 -> AgdaAny
d_'94'N'45'homo_254 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Algebra.Solver.Ring.d_'94'N'45'homo_1226 (coe v0)
      (coe v0) (coe v1) (coe v1)
      (coe
         MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.du_rawRing_340
         (coe v2))
      (coe v2)
      (coe
         MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.du_'45'raw'45'almostCommutative'10230'_762
         (coe v2))
      (coe
         MAlonzo.Code.Relation.Binary.Consequences.du_dec'8658'weaklyDec_734
         (coe v3))
-- Algebra.Solver.Ring.Simple._.correct
d_correct_262 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.T_AlmostCommutativeRing_176 ->
  (AgdaAny -> AgdaAny -> MAlonzo.Code.Relation.Nullary.T_Dec_32) ->
  Integer ->
  MAlonzo.Code.Algebra.Solver.Ring.T_Polynomial_342 ->
  MAlonzo.Code.Data.Vec.Base.T_Vec_24 -> AgdaAny
d_correct_262 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Algebra.Solver.Ring.d_correct_1306 (coe v0) (coe v0)
      (coe v1) (coe v1)
      (coe
         MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.du_rawRing_340
         (coe v2))
      (coe v2)
      (coe
         MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.du_'45'raw'45'almostCommutative'10230'_762
         (coe v2))
      (coe
         MAlonzo.Code.Relation.Binary.Consequences.du_dec'8658'weaklyDec_734
         (coe v3))
-- Algebra.Solver.Ring.Simple._.correct-con
d_correct'45'con_264 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.T_AlmostCommutativeRing_176 ->
  (AgdaAny -> AgdaAny -> MAlonzo.Code.Relation.Nullary.T_Dec_32) ->
  Integer ->
  AgdaAny -> MAlonzo.Code.Data.Vec.Base.T_Vec_24 -> AgdaAny
d_correct'45'con_264 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Algebra.Solver.Ring.d_correct'45'con_1272 (coe v0)
      (coe v0) (coe v1) (coe v1)
      (coe
         MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.du_rawRing_340
         (coe v2))
      (coe v2)
      (coe
         MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.du_'45'raw'45'almostCommutative'10230'_762
         (coe v2))
      (coe
         MAlonzo.Code.Relation.Binary.Consequences.du_dec'8658'weaklyDec_734
         (coe v3))
-- Algebra.Solver.Ring.Simple._.correct-var
d_correct'45'var_266 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.T_AlmostCommutativeRing_176 ->
  (AgdaAny -> AgdaAny -> MAlonzo.Code.Relation.Nullary.T_Dec_32) ->
  Integer ->
  MAlonzo.Code.Data.Fin.Base.T_Fin_6 ->
  MAlonzo.Code.Data.Vec.Base.T_Vec_24 -> AgdaAny
d_correct'45'var_266 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Algebra.Solver.Ring.d_correct'45'var_1288 (coe v0)
      (coe v0) (coe v1) (coe v1)
      (coe
         MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.du_rawRing_340
         (coe v2))
      (coe v2)
      (coe
         MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.du_'45'raw'45'almostCommutative'10230'_762
         (coe v2))
      (coe
         MAlonzo.Code.Relation.Binary.Consequences.du_dec'8658'weaklyDec_734
         (coe v3))
-- Algebra.Solver.Ring.Simple._.normalise
d_normalise_268 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.T_AlmostCommutativeRing_176 ->
  (AgdaAny -> AgdaAny -> MAlonzo.Code.Relation.Nullary.T_Dec_32) ->
  Integer ->
  MAlonzo.Code.Algebra.Solver.Ring.T_Polynomial_342 ->
  MAlonzo.Code.Algebra.Solver.Ring.T_Normal_432
d_normalise_268 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Algebra.Solver.Ring.d_normalise_838 (coe v0) (coe v0)
      (coe v1) (coe v1)
      (coe
         MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.du_rawRing_340
         (coe v2))
      (coe v2)
      (coe
         MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.du_'45'raw'45'almostCommutative'10230'_762
         (coe v2))
      (coe
         MAlonzo.Code.Relation.Binary.Consequences.du_dec'8658'weaklyDec_734
         (coe v3))
-- Algebra.Solver.Ring.Simple._.normalise-con
d_normalise'45'con_270 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.T_AlmostCommutativeRing_176 ->
  (AgdaAny -> AgdaAny -> MAlonzo.Code.Relation.Nullary.T_Dec_32) ->
  Integer -> AgdaAny -> MAlonzo.Code.Algebra.Solver.Ring.T_Normal_432
d_normalise'45'con_270 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Algebra.Solver.Ring.d_normalise'45'con_822 (coe v0)
      (coe v0) (coe v1) (coe v1)
      (coe
         MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.du_rawRing_340
         (coe v2))
      (coe v2)
      (coe
         MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.du_'45'raw'45'almostCommutative'10230'_762
         (coe v2))
      (coe
         MAlonzo.Code.Relation.Binary.Consequences.du_dec'8658'weaklyDec_734
         (coe v3))
-- Algebra.Solver.Ring.Simple._.normalise-var
d_normalise'45'var_272 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.T_AlmostCommutativeRing_176 ->
  (AgdaAny -> AgdaAny -> MAlonzo.Code.Relation.Nullary.T_Dec_32) ->
  Integer ->
  MAlonzo.Code.Data.Fin.Base.T_Fin_6 ->
  MAlonzo.Code.Algebra.Solver.Ring.T_Normal_432
d_normalise'45'var_272 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Algebra.Solver.Ring.d_normalise'45'var_832 (coe v0)
      (coe v0) (coe v1) (coe v1)
      (coe
         MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.du_rawRing_340
         (coe v2))
      (coe v2)
      (coe
         MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.du_'45'raw'45'almostCommutative'10230'_762
         (coe v2))
      (coe
         MAlonzo.Code.Relation.Binary.Consequences.du_dec'8658'weaklyDec_734
         (coe v3))
-- Algebra.Solver.Ring.Simple._.prove
d_prove_280 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.T_AlmostCommutativeRing_176 ->
  (AgdaAny -> AgdaAny -> MAlonzo.Code.Relation.Nullary.T_Dec_32) ->
  Integer ->
  MAlonzo.Code.Data.Vec.Base.T_Vec_24 ->
  MAlonzo.Code.Algebra.Solver.Ring.T_Polynomial_342 ->
  MAlonzo.Code.Algebra.Solver.Ring.T_Polynomial_342 ->
  AgdaAny -> AgdaAny
d_prove_280 v0 v1 v2 v3
  = let v4
          = coe
              MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.du_rawRing_340
              (coe v2) in
    let v5
          = coe
              MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.du_'45'raw'45'almostCommutative'10230'_762
              (coe v2) in
    let v6
          = coe
              MAlonzo.Code.Relation.Binary.Consequences.du_dec'8658'weaklyDec_734
              (coe v3) in
    coe
      MAlonzo.Code.Relation.Binary.Reflection.du_prove_90
      (let v7
             = MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d_isAlmostCommutativeRing_212
                 (coe v2) in
       let v8
             = MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d_isCommutativeSemiring_62
                 (coe v7) in
       let v9
             = MAlonzo.Code.Algebra.Structures.d_isSemiring_1358 (coe v8) in
       let v10
             = MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1252
                 (coe v9) in
       let v11
             = MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_1158
                 (coe v10) in
       let v12
             = MAlonzo.Code.Algebra.Structures.d_isMonoid_416 (coe v11) in
       let v13
             = MAlonzo.Code.Algebra.Structures.d_isSemigroup_368 (coe v12) in
       coe
         MAlonzo.Code.Algebra.Structures.du_setoid_110
         (coe MAlonzo.Code.Algebra.Structures.d_isMagma_202 (coe v13)))
      (\ v7 v8 v9 ->
         coe
           MAlonzo.Code.Algebra.Solver.Ring.du_'10214'_'10215'_402 (coe v2)
           (coe v5) v8 v9)
      (coe
         MAlonzo.Code.Algebra.Solver.Ring.d_'10214'_'10215''8595'_860
         (coe v0) (coe v0) (coe v1) (coe v1) (coe v4) (coe v2) (coe v5)
         (coe v6))
      (coe
         MAlonzo.Code.Algebra.Solver.Ring.d_correct_1306 (coe v0) (coe v0)
         (coe v1) (coe v1) (coe v4) (coe v2) (coe v5) (coe v6))
-- Algebra.Solver.Ring.Simple._.sem
d_sem_282 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.T_AlmostCommutativeRing_176 ->
  (AgdaAny -> AgdaAny -> MAlonzo.Code.Relation.Nullary.T_Dec_32) ->
  MAlonzo.Code.Algebra.Solver.Ring.T_Op_334 ->
  AgdaAny -> AgdaAny -> AgdaAny
d_sem_282 ~v0 ~v1 v2 ~v3 = du_sem_282 v2
du_sem_282 ::
  MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.T_AlmostCommutativeRing_176 ->
  MAlonzo.Code.Algebra.Solver.Ring.T_Op_334 ->
  AgdaAny -> AgdaAny -> AgdaAny
du_sem_282 v0
  = coe MAlonzo.Code.Algebra.Solver.Ring.du_sem_398 (coe v0)
-- Algebra.Solver.Ring.Simple._.solve
d_solve_284 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.T_AlmostCommutativeRing_176 ->
  (AgdaAny -> AgdaAny -> MAlonzo.Code.Relation.Nullary.T_Dec_32) ->
  Integer -> AgdaAny -> AgdaAny -> AgdaAny
d_solve_284 v0 v1 v2 v3
  = let v4
          = coe
              MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.du_rawRing_340
              (coe v2) in
    let v5
          = coe
              MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.du_'45'raw'45'almostCommutative'10230'_762
              (coe v2) in
    let v6
          = coe
              MAlonzo.Code.Relation.Binary.Consequences.du_dec'8658'weaklyDec_734
              (coe v3) in
    coe
      MAlonzo.Code.Relation.Binary.Reflection.du_solve_114
      (let v7
             = MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d_isAlmostCommutativeRing_212
                 (coe v2) in
       let v8
             = MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d_isCommutativeSemiring_62
                 (coe v7) in
       let v9
             = MAlonzo.Code.Algebra.Structures.d_isSemiring_1358 (coe v8) in
       let v10
             = MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1252
                 (coe v9) in
       let v11
             = MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_1158
                 (coe v10) in
       let v12
             = MAlonzo.Code.Algebra.Structures.d_isMonoid_416 (coe v11) in
       let v13
             = MAlonzo.Code.Algebra.Structures.d_isSemigroup_368 (coe v12) in
       coe
         MAlonzo.Code.Algebra.Structures.du_setoid_110
         (coe MAlonzo.Code.Algebra.Structures.d_isMagma_202 (coe v13)))
      (coe (\ v7 -> coe MAlonzo.Code.Algebra.Solver.Ring.C_var_360))
      (\ v7 v8 v9 ->
         coe
           MAlonzo.Code.Algebra.Solver.Ring.du_'10214'_'10215'_402 (coe v2)
           (coe v5) v8 v9)
      (coe
         MAlonzo.Code.Algebra.Solver.Ring.d_'10214'_'10215''8595'_860
         (coe v0) (coe v0) (coe v1) (coe v1) (coe v4) (coe v2) (coe v5)
         (coe v6))
      (coe
         MAlonzo.Code.Algebra.Solver.Ring.d_correct_1306 (coe v0) (coe v0)
         (coe v1) (coe v1) (coe v4) (coe v2) (coe v5) (coe v6))
-- Algebra.Solver.Ring.Simple._.∅*x+HN-homo
d_'8709''42'x'43'HN'45'homo_292 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.T_AlmostCommutativeRing_176 ->
  (AgdaAny -> AgdaAny -> MAlonzo.Code.Relation.Nullary.T_Dec_32) ->
  Integer ->
  MAlonzo.Code.Algebra.Solver.Ring.T_Normal_432 ->
  AgdaAny -> MAlonzo.Code.Data.Vec.Base.T_Vec_24 -> AgdaAny
d_'8709''42'x'43'HN'45'homo_292 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Algebra.Solver.Ring.d_'8709''42'x'43'HN'45'homo_950
      (coe v0) (coe v0) (coe v1) (coe v1)
      (coe
         MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.du_rawRing_340
         (coe v2))
      (coe v2)
      (coe
         MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.du_'45'raw'45'almostCommutative'10230'_762
         (coe v2))
      (coe
         MAlonzo.Code.Relation.Binary.Consequences.du_dec'8658'weaklyDec_734
         (coe v3))
-- Algebra.Solver.Ring.Simple._.⟦_⟧
d_'10214'_'10215'_294 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.T_AlmostCommutativeRing_176 ->
  (AgdaAny -> AgdaAny -> MAlonzo.Code.Relation.Nullary.T_Dec_32) ->
  Integer ->
  MAlonzo.Code.Algebra.Solver.Ring.T_Polynomial_342 ->
  MAlonzo.Code.Data.Vec.Base.T_Vec_24 -> AgdaAny
d_'10214'_'10215'_294 ~v0 ~v1 v2 ~v3 = du_'10214'_'10215'_294 v2
du_'10214'_'10215'_294 ::
  MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.T_AlmostCommutativeRing_176 ->
  Integer ->
  MAlonzo.Code.Algebra.Solver.Ring.T_Polynomial_342 ->
  MAlonzo.Code.Data.Vec.Base.T_Vec_24 -> AgdaAny
du_'10214'_'10215'_294 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Algebra.Solver.Ring.du_'10214'_'10215'_402 (coe v0)
      (coe
         MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.du_'45'raw'45'almostCommutative'10230'_762
         (coe v0))
      v2 v3
-- Algebra.Solver.Ring.Simple._.⟦_⟧H
d_'10214'_'10215'H_296 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.T_AlmostCommutativeRing_176 ->
  (AgdaAny -> AgdaAny -> MAlonzo.Code.Relation.Nullary.T_Dec_32) ->
  Integer ->
  MAlonzo.Code.Algebra.Solver.Ring.T_HNF_430 ->
  MAlonzo.Code.Data.Vec.Base.T_Vec_24 -> AgdaAny
d_'10214'_'10215'H_296 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Algebra.Solver.Ring.d_'10214'_'10215'H_450 (coe v0)
      (coe v0) (coe v1) (coe v1)
      (coe
         MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.du_rawRing_340
         (coe v2))
      (coe v2)
      (coe
         MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.du_'45'raw'45'almostCommutative'10230'_762
         (coe v2))
      (coe
         MAlonzo.Code.Relation.Binary.Consequences.du_dec'8658'weaklyDec_734
         (coe v3))
-- Algebra.Solver.Ring.Simple._.⟦_⟧H-cong
d_'10214'_'10215'H'45'cong_298 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.T_AlmostCommutativeRing_176 ->
  (AgdaAny -> AgdaAny -> MAlonzo.Code.Relation.Nullary.T_Dec_32) ->
  Integer ->
  MAlonzo.Code.Algebra.Solver.Ring.T_HNF_430 ->
  MAlonzo.Code.Algebra.Solver.Ring.T_HNF_430 ->
  MAlonzo.Code.Algebra.Solver.Ring.T__'8776'H__472 ->
  MAlonzo.Code.Data.Vec.Base.T_Vec_24 -> AgdaAny
d_'10214'_'10215'H'45'cong_298 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Algebra.Solver.Ring.d_'10214'_'10215'H'45'cong_600
      (coe v0) (coe v0) (coe v1) (coe v1)
      (coe
         MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.du_rawRing_340
         (coe v2))
      (coe v2)
      (coe
         MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.du_'45'raw'45'almostCommutative'10230'_762
         (coe v2))
      (coe
         MAlonzo.Code.Relation.Binary.Consequences.du_dec'8658'weaklyDec_734
         (coe v3))
-- Algebra.Solver.Ring.Simple._.⟦_⟧N
d_'10214'_'10215'N_300 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.T_AlmostCommutativeRing_176 ->
  (AgdaAny -> AgdaAny -> MAlonzo.Code.Relation.Nullary.T_Dec_32) ->
  Integer ->
  MAlonzo.Code.Algebra.Solver.Ring.T_Normal_432 ->
  MAlonzo.Code.Data.Vec.Base.T_Vec_24 -> AgdaAny
d_'10214'_'10215'N_300 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Algebra.Solver.Ring.d_'10214'_'10215'N_454 (coe v0)
      (coe v0) (coe v1) (coe v1)
      (coe
         MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.du_rawRing_340
         (coe v2))
      (coe v2)
      (coe
         MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.du_'45'raw'45'almostCommutative'10230'_762
         (coe v2))
      (coe
         MAlonzo.Code.Relation.Binary.Consequences.du_dec'8658'weaklyDec_734
         (coe v3))
-- Algebra.Solver.Ring.Simple._.⟦_⟧N-cong
d_'10214'_'10215'N'45'cong_302 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.T_AlmostCommutativeRing_176 ->
  (AgdaAny -> AgdaAny -> MAlonzo.Code.Relation.Nullary.T_Dec_32) ->
  Integer ->
  MAlonzo.Code.Algebra.Solver.Ring.T_Normal_432 ->
  MAlonzo.Code.Algebra.Solver.Ring.T_Normal_432 ->
  MAlonzo.Code.Algebra.Solver.Ring.T__'8776'N__476 ->
  MAlonzo.Code.Data.Vec.Base.T_Vec_24 -> AgdaAny
d_'10214'_'10215'N'45'cong_302 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Algebra.Solver.Ring.d_'10214'_'10215'N'45'cong_610
      (coe v0) (coe v0) (coe v1) (coe v1)
      (coe
         MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.du_rawRing_340
         (coe v2))
      (coe v2)
      (coe
         MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.du_'45'raw'45'almostCommutative'10230'_762
         (coe v2))
      (coe
         MAlonzo.Code.Relation.Binary.Consequences.du_dec'8658'weaklyDec_734
         (coe v3))
-- Algebra.Solver.Ring.Simple._.⟦_⟧↓
d_'10214'_'10215''8595'_304 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.T_AlmostCommutativeRing_176 ->
  (AgdaAny -> AgdaAny -> MAlonzo.Code.Relation.Nullary.T_Dec_32) ->
  Integer ->
  MAlonzo.Code.Algebra.Solver.Ring.T_Polynomial_342 ->
  MAlonzo.Code.Data.Vec.Base.T_Vec_24 -> AgdaAny
d_'10214'_'10215''8595'_304 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Algebra.Solver.Ring.d_'10214'_'10215''8595'_860
      (coe v0) (coe v0) (coe v1) (coe v1)
      (coe
         MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.du_rawRing_340
         (coe v2))
      (coe v2)
      (coe
         MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.du_'45'raw'45'almostCommutative'10230'_762
         (coe v2))
      (coe
         MAlonzo.Code.Relation.Binary.Consequences.du_dec'8658'weaklyDec_734
         (coe v3))
