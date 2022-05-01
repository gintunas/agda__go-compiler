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

module MAlonzo.Code.Algebra.Properties.Semiring.Exp where

import MAlonzo.RTE (coe, erased, AgdaAny, addInt, subInt, mulInt,
                    quotInt, remInt, geqInt, ltInt, eqInt, add64, sub64, mul64, quot64,
                    rem64, lt64, eq64, word64FromNat, word64ToNat)
import qualified MAlonzo.RTE
import qualified Data.Text
import qualified MAlonzo.Code.Agda.Builtin.Equality
import qualified MAlonzo.Code.Agda.Primitive
import qualified MAlonzo.Code.Algebra.Bundles
import qualified MAlonzo.Code.Algebra.Definitions.RawSemiring
import qualified MAlonzo.Code.Algebra.Properties.Monoid.Mult

-- Algebra.Properties.Semiring.Exp._._^_
d__'94'__188 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Algebra.Bundles.T_Semiring_1932 ->
  AgdaAny -> Integer -> AgdaAny
d__'94'__188 ~v0 ~v1 v2 = du__'94'__188 v2
du__'94'__188 ::
  MAlonzo.Code.Algebra.Bundles.T_Semiring_1932 ->
  AgdaAny -> Integer -> AgdaAny
du__'94'__188 v0
  = coe
      MAlonzo.Code.Algebra.Definitions.RawSemiring.du__'94'__70
      (coe
         MAlonzo.Code.Algebra.Bundles.du_rawSemiring_1890
         (coe
            MAlonzo.Code.Algebra.Bundles.du_semiringWithoutAnnihilatingZero_2048
            (coe v0)))
-- Algebra.Properties.Semiring.Exp.^-congˡ
d_'94''45'cong'737'_194 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Algebra.Bundles.T_Semiring_1932 ->
  Integer -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'94''45'cong'737'_194 ~v0 ~v1 v2 = du_'94''45'cong'737'_194 v2
du_'94''45'cong'737'_194 ::
  MAlonzo.Code.Algebra.Bundles.T_Semiring_1932 ->
  Integer -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_'94''45'cong'737'_194 v0
  = coe
      MAlonzo.Code.Algebra.Properties.Monoid.Mult.du_'215''45'cong'691'_172
      (coe
         MAlonzo.Code.Algebra.Bundles.du_'42''45'monoid_1916
         (coe
            MAlonzo.Code.Algebra.Bundles.du_semiringWithoutAnnihilatingZero_2048
            (coe v0)))
-- Algebra.Properties.Semiring.Exp.^-cong
d_'94''45'cong_196 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Algebra.Bundles.T_Semiring_1932 ->
  AgdaAny ->
  AgdaAny ->
  Integer ->
  Integer ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 -> AgdaAny
d_'94''45'cong_196 ~v0 ~v1 v2 v3 v4 v5 ~v6 v7 ~v8
  = du_'94''45'cong_196 v2 v3 v4 v5 v7
du_'94''45'cong_196 ::
  MAlonzo.Code.Algebra.Bundles.T_Semiring_1932 ->
  AgdaAny -> AgdaAny -> Integer -> AgdaAny -> AgdaAny
du_'94''45'cong_196 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Algebra.Properties.Monoid.Mult.du_'215''45'cong_180
      (coe
         MAlonzo.Code.Algebra.Bundles.du_'42''45'monoid_1916
         (coe
            MAlonzo.Code.Algebra.Bundles.du_semiringWithoutAnnihilatingZero_2048
            (coe v0)))
      (coe v3) (coe v1) (coe v2) (coe v4)
-- Algebra.Properties.Semiring.Exp.^-homo-*
d_'94''45'homo'45''42'_208 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Algebra.Bundles.T_Semiring_1932 ->
  AgdaAny -> Integer -> Integer -> AgdaAny
d_'94''45'homo'45''42'_208 ~v0 ~v1 v2
  = du_'94''45'homo'45''42'_208 v2
du_'94''45'homo'45''42'_208 ::
  MAlonzo.Code.Algebra.Bundles.T_Semiring_1932 ->
  AgdaAny -> Integer -> Integer -> AgdaAny
du_'94''45'homo'45''42'_208 v0
  = coe
      MAlonzo.Code.Algebra.Properties.Monoid.Mult.du_'215''45'homo'45''43'_192
      (coe
         MAlonzo.Code.Algebra.Bundles.du_'42''45'monoid_1916
         (coe
            MAlonzo.Code.Algebra.Bundles.du_semiringWithoutAnnihilatingZero_2048
            (coe v0)))
-- Algebra.Properties.Semiring.Exp.^-assocʳ
d_'94''45'assoc'691'_216 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Algebra.Bundles.T_Semiring_1932 ->
  AgdaAny -> Integer -> Integer -> AgdaAny
d_'94''45'assoc'691'_216 ~v0 ~v1 v2 v3 v4 v5
  = du_'94''45'assoc'691'_216 v2 v3 v4 v5
du_'94''45'assoc'691'_216 ::
  MAlonzo.Code.Algebra.Bundles.T_Semiring_1932 ->
  AgdaAny -> Integer -> Integer -> AgdaAny
du_'94''45'assoc'691'_216 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Algebra.Properties.Monoid.Mult.du_'215''45'assoc'737'_228
      (coe
         MAlonzo.Code.Algebra.Bundles.du_'42''45'monoid_1916
         (coe
            MAlonzo.Code.Algebra.Bundles.du_semiringWithoutAnnihilatingZero_2048
            (coe v0)))
      (coe v1) (coe v3) (coe v2)
