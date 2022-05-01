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

module MAlonzo.Code.Data.Nat.DivMod where

import MAlonzo.RTE (coe, erased, AgdaAny, addInt, subInt, mulInt,
                    quotInt, remInt, geqInt, ltInt, eqInt, add64, sub64, mul64, quot64,
                    rem64, lt64, eq64, word64FromNat, word64ToNat)
import qualified MAlonzo.RTE
import qualified Data.Text
import qualified MAlonzo.Code.Agda.Builtin.Equality
import qualified MAlonzo.Code.Agda.Builtin.Unit
import qualified MAlonzo.Code.Data.Empty
import qualified MAlonzo.Code.Data.Fin.Base
import qualified MAlonzo.Code.Data.Nat.Base
import qualified MAlonzo.Code.Data.Nat.DivMod.Core
import qualified MAlonzo.Code.Data.Nat.Divisibility.Core
import qualified MAlonzo.Code.Data.Nat.Properties
import qualified MAlonzo.Code.Induction.WellFounded
import qualified MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple

-- Data.Nat.DivMod._/_
d__'47'__56 :: Integer -> Integer -> AgdaAny -> Integer
d__'47'__56 v0 v1 ~v2 = du__'47'__56 v0 v1
du__'47'__56 :: Integer -> Integer -> Integer
du__'47'__56 v0 v1 = coe quotInt (coe v0) (coe v1)
-- Data.Nat.DivMod._%_
d__'37'__68 :: Integer -> Integer -> AgdaAny -> Integer
d__'37'__68 v0 v1 ~v2 = du__'37'__68 v0 v1
du__'37'__68 :: Integer -> Integer -> Integer
du__'37'__68 v0 v1 = coe remInt (coe v0) (coe v1)
-- Data.Nat.DivMod.m≡m%n+[m/n]*n
d_m'8801'm'37'n'43''91'm'47'n'93''42'n_78 ::
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_m'8801'm'37'n'43''91'm'47'n'93''42'n_78 = erased
-- Data.Nat.DivMod.m%n≡m∸m/n*n
d_m'37'n'8801'm'8760'm'47'n'42'n_88 ::
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_m'37'n'8801'm'8760'm'47'n'42'n_88 = erased
-- Data.Nat.DivMod._.n
d_n_98 :: Integer -> Integer -> Integer
d_n_98 ~v0 v1 = du_n_98 v1
du_n_98 :: Integer -> Integer
du_n_98 v0 = coe addInt (coe (1 :: Integer)) (coe v0)
-- Data.Nat.DivMod._.m/n*n
d_m'47'n'42'n_100 :: Integer -> Integer -> Integer
d_m'47'n'42'n_100 v0 v1
  = coe
      mulInt (coe du__'47'__56 (coe v0) (coe du_n_98 (coe v1)))
      (coe du_n_98 (coe v1))
-- Data.Nat.DivMod.n%1≡0
d_n'37'1'8801'0_106 ::
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_n'37'1'8801'0_106 = erased
-- Data.Nat.DivMod.n%n≡0
d_n'37'n'8801'0_110 ::
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_n'37'n'8801'0_110 = erased
-- Data.Nat.DivMod.m%n%n≡m%n
d_m'37'n'37'n'8801'm'37'n_118 ::
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_m'37'n'37'n'8801'm'37'n_118 = erased
-- Data.Nat.DivMod.[m+n]%n≡m%n
d_'91'm'43'n'93''37'n'8801'm'37'n_128 ::
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'91'm'43'n'93''37'n'8801'm'37'n_128 = erased
-- Data.Nat.DivMod.[m+kn]%n≡m%n
d_'91'm'43'kn'93''37'n'8801'm'37'n_140 ::
  Integer ->
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'91'm'43'kn'93''37'n'8801'm'37'n_140 = erased
-- Data.Nat.DivMod._.n
d_n_158 :: Integer -> Integer -> Integer -> Integer
d_n_158 ~v0 ~v1 v2 = du_n_158 v2
du_n_158 :: Integer -> Integer
du_n_158 v0 = coe addInt (coe (1 :: Integer)) (coe v0)
-- Data.Nat.DivMod.m*n%n≡0
d_m'42'n'37'n'8801'0_166 ::
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_m'42'n'37'n'8801'0_166 = erased
-- Data.Nat.DivMod.m%n<n
d_m'37'n'60'n_172 ::
  Integer -> Integer -> MAlonzo.Code.Data.Nat.Base.T__'8804'__18
d_m'37'n'60'n_172 v0 v1
  = coe
      MAlonzo.Code.Data.Nat.Base.C_s'8804's_30
      (MAlonzo.Code.Data.Nat.DivMod.Core.d_a'91'mod'8341''93'n'60'n_70
         (coe (0 :: Integer)) (coe v0) (coe v1))
-- Data.Nat.DivMod.m%n≤m
d_m'37'n'8804'm_182 ::
  Integer -> Integer -> MAlonzo.Code.Data.Nat.Base.T__'8804'__18
d_m'37'n'8804'm_182 v0 v1
  = coe
      MAlonzo.Code.Data.Nat.DivMod.Core.d_a'91'mod'8341''93'n'8804'a_96
      (coe (0 :: Integer)) (coe v0) (coe v1)
-- Data.Nat.DivMod.m≤n⇒m%n≡m
d_m'8804'n'8658'm'37'n'8801'm_192 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__18 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_m'8804'n'8658'm'37'n'8801'm_192 = erased
-- Data.Nat.DivMod.%-pred-≡0
d_'37''45'pred'45''8801'0_218 ::
  Integer ->
  Integer ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'37''45'pred'45''8801'0_218 = erased
-- Data.Nat.DivMod.m<[1+n%d]⇒m≤[n%d]
d_m'60''91'1'43'n'37'd'93''8658'm'8804''91'n'37'd'93'_234 ::
  Integer ->
  Integer ->
  Integer ->
  AgdaAny ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__18 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__18
d_m'60''91'1'43'n'37'd'93''8658'm'8804''91'n'37'd'93'_234 ~v0 v1 v2
                                                          ~v3
  = du_m'60''91'1'43'n'37'd'93''8658'm'8804''91'n'37'd'93'_234 v1 v2
du_m'60''91'1'43'n'37'd'93''8658'm'8804''91'n'37'd'93'_234 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__18 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__18
du_m'60''91'1'43'n'37'd'93''8658'm'8804''91'n'37'd'93'_234 v0 v1
  = case coe v1 of
      0 -> coe (\ v2 -> MAlonzo.RTE.mazUnreachableError)
      _ -> let v2 = subInt (coe v1) (coe (1 :: Integer)) in
           coe
             MAlonzo.Code.Data.Nat.DivMod.Core.du_k'60'1'43'a'91'mod'8341''93'n'8658'k'8804'a'91'mod'8341''93'n_216
             (coe (0 :: Integer)) (coe v0) (coe v2)
-- Data.Nat.DivMod.[1+m%d]≤1+n⇒[m%d]≤n
d_'91'1'43'm'37'd'93''8804'1'43'n'8658''91'm'37'd'93''8804'n_250 ::
  Integer ->
  Integer ->
  Integer ->
  AgdaAny ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__18 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__18 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__18
d_'91'1'43'm'37'd'93''8804'1'43'n'8658''91'm'37'd'93''8804'n_250 v0
                                                                 ~v1 v2 ~v3 ~v4
  = du_'91'1'43'm'37'd'93''8804'1'43'n'8658''91'm'37'd'93''8804'n_250
      v0 v2
du_'91'1'43'm'37'd'93''8804'1'43'n'8658''91'm'37'd'93''8804'n_250 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__18 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__18
du_'91'1'43'm'37'd'93''8804'1'43'n'8658''91'm'37'd'93''8804'n_250 v0
                                                                  v1
  = case coe v1 of
      0 -> coe (\ v2 -> MAlonzo.RTE.mazUnreachableError)
      _ -> let v2 = subInt (coe v1) (coe (1 :: Integer)) in
           coe
             MAlonzo.Code.Data.Nat.DivMod.Core.du_1'43'a'91'mod'8341''93'n'8804'1'43'k'8658'a'91'mod'8341''93'n'8804'k_260
             (coe (0 :: Integer)) (coe v0) (coe v2)
-- Data.Nat.DivMod.%-distribˡ-+
d_'37''45'distrib'737''45''43'_268 ::
  Integer ->
  Integer ->
  Integer ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'37''45'distrib'737''45''43'_268 = erased
-- Data.Nat.DivMod.%-distribˡ-*
d_'37''45'distrib'737''45''42'_298 ::
  Integer ->
  Integer ->
  Integer ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'37''45'distrib'737''45''42'_298 = erased
-- Data.Nat.DivMod._.m′
d_m'8242'_312 ::
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6 ->
  MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6 -> Integer
d_m'8242'_312 v0 ~v1 v2 ~v3 = du_m'8242'_312 v0 v2
du_m'8242'_312 ::
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6 -> Integer
du_m'8242'_312 v0 v1 v2
  = coe
      du__'37'__68 (coe v0) (coe addInt (coe (1 :: Integer)) (coe v1))
-- Data.Nat.DivMod._.n′
d_n'8242'_314 ::
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6 ->
  MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6 -> Integer
d_n'8242'_314 ~v0 v1 v2 ~v3 = du_n'8242'_314 v1 v2
du_n'8242'_314 ::
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6 -> Integer
du_n'8242'_314 v0 v1 v2
  = coe
      du__'37'__68 (coe v0) (coe addInt (coe (1 :: Integer)) (coe v1))
-- Data.Nat.DivMod._.k
d_k_316 ::
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6 ->
  MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6 -> Integer
d_k_316 v0 ~v1 v2 ~v3 = du_k_316 v0 v2
du_k_316 ::
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6 -> Integer
du_k_316 v0 v1 v2
  = coe
      du__'47'__56 (coe v0) (coe addInt (coe (1 :: Integer)) (coe v1))
-- Data.Nat.DivMod._.j
d_j_318 ::
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6 ->
  MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6 -> Integer
d_j_318 ~v0 v1 v2 ~v3 = du_j_318 v1 v2
du_j_318 ::
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6 -> Integer
du_j_318 v0 v1 v2
  = coe
      du__'47'__56 (coe v0) (coe addInt (coe (1 :: Integer)) (coe v1))
-- Data.Nat.DivMod._.lemma
d_lemma_320 ::
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_lemma_320 = erased
-- Data.Nat.DivMod.%-remove-+ˡ
d_'37''45'remove'45''43''737'_340 ::
  Integer ->
  Integer ->
  Integer ->
  AgdaAny ->
  MAlonzo.Code.Data.Nat.Divisibility.Core.T__'8739'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'37''45'remove'45''43''737'_340 = erased
-- Data.Nat.DivMod.%-remove-+ʳ
d_'37''45'remove'45''43''691'_362 ::
  Integer ->
  Integer ->
  Integer ->
  AgdaAny ->
  MAlonzo.Code.Data.Nat.Divisibility.Core.T__'8739'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'37''45'remove'45''43''691'_362 = erased
-- Data.Nat.DivMod./-congˡ
d_'47''45'cong'737'_382 ::
  Integer ->
  Integer ->
  Integer ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'47''45'cong'737'_382 = erased
-- Data.Nat.DivMod./-congʳ
d_'47''45'cong'691'_394 ::
  Integer ->
  Integer ->
  Integer ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'47''45'cong'691'_394 = erased
-- Data.Nat.DivMod.0/n≡0
d_0'47'n'8801'0_400 ::
  Integer ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_0'47'n'8801'0_400 = erased
-- Data.Nat.DivMod.n/1≡n
d_n'47'1'8801'n_406 ::
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_n'47'1'8801'n_406 = erased
-- Data.Nat.DivMod.n/n≡1
d_n'47'n'8801'1_414 ::
  Integer ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_n'47'n'8801'1_414 = erased
-- Data.Nat.DivMod.m*n/n≡m
d_m'42'n'47'n'8801'm_424 ::
  Integer ->
  Integer ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_m'42'n'47'n'8801'm_424 = erased
-- Data.Nat.DivMod.m/n*n≡m
d_m'47'n'42'n'8801'm_436 ::
  Integer ->
  Integer ->
  AgdaAny ->
  MAlonzo.Code.Data.Nat.Divisibility.Core.T__'8739'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_m'47'n'42'n'8801'm_436 = erased
-- Data.Nat.DivMod.m*[n/m]≡n
d_m'42''91'n'47'm'93''8801'n_452 ::
  Integer ->
  Integer ->
  AgdaAny ->
  MAlonzo.Code.Data.Nat.Divisibility.Core.T__'8739'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_m'42''91'n'47'm'93''8801'n_452 = erased
-- Data.Nat.DivMod.m/n*n≤m
d_m'47'n'42'n'8804'm_464 ::
  Integer ->
  Integer -> AgdaAny -> MAlonzo.Code.Data.Nat.Base.T__'8804'__18
d_m'47'n'42'n'8804'm_464 v0 v1 ~v2
  = du_m'47'n'42'n'8804'm_464 v0 v1
du_m'47'n'42'n'8804'm_464 ::
  Integer -> Integer -> MAlonzo.Code.Data.Nat.Base.T__'8804'__18
du_m'47'n'42'n'8804'm_464 v0 v1
  = coe
      MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.du_begin__160
      (coe MAlonzo.Code.Data.Nat.Properties.d_'8804''45'isPreorder_1684)
      (\ v2 v3 v4 ->
         coe
           MAlonzo.Code.Data.Nat.Properties.du_'60''8658''8804'_1736 v3 v4)
      (coe mulInt (coe du__'47'__56 (coe v0) (coe v1)) (coe v1)) (coe v0)
      (coe
         MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.du_step'45''8804'_228
         (coe MAlonzo.Code.Data.Nat.Properties.d_'8804''45'isPreorder_1684)
         (\ v2 v3 v4 v5 v6 ->
            coe
              MAlonzo.Code.Data.Nat.Properties.du_'60''45'trans'691'_1868 v5 v6)
         (coe mulInt (coe du__'47'__56 (coe v0) (coe v1)) (coe v1))
         (coe
            addInt (coe du__'37'__68 (coe v0) (coe v1))
            (coe mulInt (coe du__'47'__56 (coe v0) (coe v1)) (coe v1)))
         (coe v0)
         (coe
            MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.du__'8718'_346
            (coe MAlonzo.Code.Data.Nat.Properties.d_'8804''45'isPreorder_1684)
            (coe v0))
         (coe
            MAlonzo.Code.Data.Nat.Properties.du_m'8804'm'43'n_2316
            (coe mulInt (coe du__'47'__56 (coe v0) (coe v1)) (coe v1))))
-- Data.Nat.DivMod.m/n≤m
d_m'47'n'8804'm_478 ::
  Integer ->
  Integer -> AgdaAny -> MAlonzo.Code.Data.Nat.Base.T__'8804'__18
d_m'47'n'8804'm_478 v0 v1 ~v2 = du_m'47'n'8804'm_478 v0 v1
du_m'47'n'8804'm_478 ::
  Integer -> Integer -> MAlonzo.Code.Data.Nat.Base.T__'8804'__18
du_m'47'n'8804'm_478 v0 v1
  = coe
      MAlonzo.Code.Data.Nat.Properties.du_'42''45'cancel'691''45''8804'_2792
      (coe du__'47'__56 (coe v0) (coe v1))
-- Data.Nat.DivMod.m/n<m
d_m'47'n'60'm_492 ::
  Integer ->
  Integer ->
  AgdaAny ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__18 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__18 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__18
d_m'47'n'60'm_492 v0 v1 ~v2 ~v3 ~v4 = du_m'47'n'60'm_492 v0 v1
du_m'47'n'60'm_492 ::
  Integer -> Integer -> MAlonzo.Code.Data.Nat.Base.T__'8804'__18
du_m'47'n'60'm_492 v0 v1
  = coe
      MAlonzo.Code.Data.Nat.Properties.du_'42''45'cancel'691''45''60'_2920
      (coe v1) (coe du__'47'__56 (coe v0) (coe v1)) (coe v0)
-- Data.Nat.DivMod./-mono-≤
d_'47''45'mono'45''8804'_516 ::
  Integer ->
  Integer ->
  Integer ->
  Integer ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__18 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__18 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__18
d_'47''45'mono'45''8804'_516 v0 v1 v2 v3 ~v4 ~v5 v6 v7
  = du_'47''45'mono'45''8804'_516 v0 v1 v2 v3 v6 v7
du_'47''45'mono'45''8804'_516 ::
  Integer ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__18 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__18 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__18
du_'47''45'mono'45''8804'_516 v0 v1 v2 v3 v4 v5
  = case coe v5 of
      MAlonzo.Code.Data.Nat.Base.C_s'8804's_30 v8
        -> let v9 = subInt (coe v2) (coe (1 :: Integer)) in
           let v10 = subInt (coe v3) (coe (1 :: Integer)) in
           coe
             MAlonzo.Code.Data.Nat.DivMod.Core.d_div'8341''45'mono'45''8804'_886
             (coe (0 :: Integer)) (coe (0 :: Integer)) (coe v0) (coe v1)
             (coe v9) (coe v10) (coe v4) (coe v8)
      _ -> MAlonzo.RTE.mazUnreachableError
-- Data.Nat.DivMod./-monoˡ-≤
d_'47''45'mono'737''45''8804'_530 ::
  Integer ->
  Integer ->
  Integer ->
  AgdaAny ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__18 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__18
d_'47''45'mono'737''45''8804'_530 v0 v1 v2 ~v3 v4
  = du_'47''45'mono'737''45''8804'_530 v0 v1 v2 v4
du_'47''45'mono'737''45''8804'_530 ::
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__18 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__18
du_'47''45'mono'737''45''8804'_530 v0 v1 v2 v3
  = coe
      du_'47''45'mono'45''8804'_516 (coe v0) (coe v1) (coe v2) (coe v2)
      (coe v3)
      (coe
         MAlonzo.Code.Data.Nat.Properties.d_'8804''45'refl_1634 (coe v2))
-- Data.Nat.DivMod./-monoʳ-≤
d_'47''45'mono'691''45''8804'_546 ::
  Integer ->
  Integer ->
  Integer ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__18 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__18
d_'47''45'mono'691''45''8804'_546 v0 v1 v2 ~v3 ~v4 v5
  = du_'47''45'mono'691''45''8804'_546 v0 v1 v2 v5
du_'47''45'mono'691''45''8804'_546 ::
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__18 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__18
du_'47''45'mono'691''45''8804'_546 v0 v1 v2 v3
  = coe
      du_'47''45'mono'45''8804'_516 (coe v0) (coe v0) (coe v1) (coe v2)
      (coe
         MAlonzo.Code.Data.Nat.Properties.d_'8804''45'refl_1634 (coe v0))
      (coe v3)
-- Data.Nat.DivMod./-cancelʳ-≡
d_'47''45'cancel'691''45''8801'_562 ::
  Integer ->
  Integer ->
  Integer ->
  AgdaAny ->
  MAlonzo.Code.Data.Nat.Divisibility.Core.T__'8739'__12 ->
  MAlonzo.Code.Data.Nat.Divisibility.Core.T__'8739'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'47''45'cancel'691''45''8801'_562 = erased
-- Data.Nat.DivMod.m<n⇒m/n≡0
d_m'60'n'8658'm'47'n'8801'0_586 ::
  Integer ->
  Integer ->
  AgdaAny ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__18 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_m'60'n'8658'm'47'n'8801'0_586 = erased
-- Data.Nat.DivMod.m≥n⇒m/n>0
d_m'8805'n'8658'm'47'n'62'0_602 ::
  Integer ->
  Integer ->
  AgdaAny ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__18 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__18
d_m'8805'n'8658'm'47'n'62'0_602 v0 v1 ~v2 v3
  = du_m'8805'n'8658'm'47'n'62'0_602 v0 v1 v3
du_m'8805'n'8658'm'47'n'62'0_602 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__18 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__18
du_m'8805'n'8658'm'47'n'62'0_602 v0 v1 v2
  = coe
      MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.du_begin__160
      (coe MAlonzo.Code.Data.Nat.Properties.d_'8804''45'isPreorder_1684)
      (\ v3 v4 v5 ->
         coe
           MAlonzo.Code.Data.Nat.Properties.du_'60''8658''8804'_1736 v4 v5)
      (coe (1 :: Integer)) (coe du__'47'__56 (coe v0) (coe v1))
      (coe
         MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.du_step'45''8804'_228
         (coe MAlonzo.Code.Data.Nat.Properties.d_'8804''45'isPreorder_1684)
         (\ v3 v4 v5 v6 v7 ->
            coe
              MAlonzo.Code.Data.Nat.Properties.du_'60''45'trans'691'_1868 v6 v7)
         (coe du__'47'__56 (coe v0) (coe v0))
         (coe du__'47'__56 (coe v0) (coe v1))
         (coe du__'47'__56 (coe v0) (coe v1))
         (coe
            MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.du__'8718'_346
            (coe MAlonzo.Code.Data.Nat.Properties.d_'8804''45'isPreorder_1684)
            (coe du__'47'__56 (coe v0) (coe v1)))
         (coe
            du_'47''45'mono'691''45''8804'_546 (coe v0) (coe v0) (coe v1)
            (coe v2)))
-- Data.Nat.DivMod.+-distrib-/
d_'43''45'distrib'45''47'_622 ::
  Integer ->
  Integer ->
  Integer ->
  AgdaAny ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__18 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'43''45'distrib'45''47'_622 = erased
-- Data.Nat.DivMod.+-distrib-/-∣ˡ
d_'43''45'distrib'45''47''45''8739''737'_640 ::
  Integer ->
  Integer ->
  Integer ->
  AgdaAny ->
  MAlonzo.Code.Data.Nat.Divisibility.Core.T__'8739'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'43''45'distrib'45''47''45''8739''737'_640 = erased
-- Data.Nat.DivMod.+-distrib-/-∣ʳ
d_'43''45'distrib'45''47''45''8739''691'_662 ::
  Integer ->
  Integer ->
  Integer ->
  AgdaAny ->
  MAlonzo.Code.Data.Nat.Divisibility.Core.T__'8739'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'43''45'distrib'45''47''45''8739''691'_662 = erased
-- Data.Nat.DivMod.m/n≡1+[m∸n]/n
d_m'47'n'8801'1'43''91'm'8760'n'93''47'n_682 ::
  Integer ->
  Integer ->
  AgdaAny ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__18 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_m'47'n'8801'1'43''91'm'8760'n'93''47'n_682 = erased
-- Data.Nat.DivMod.m*n/m*o≡n/o
d_m'42'n'47'm'42'o'8801'n'47'o_706 ::
  Integer ->
  Integer ->
  Integer ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_m'42'n'47'm'42'o'8801'n'47'o_706 = erased
-- Data.Nat.DivMod._.helper
d_helper_724 ::
  Integer ->
  Integer ->
  Integer ->
  AgdaAny ->
  AgdaAny ->
  Integer ->
  MAlonzo.Code.Induction.WellFounded.T_Acc_42 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_helper_724 = erased
-- Data.Nat.DivMod._._.n∸o<n
d_n'8760'o'60'n_750 ::
  Integer ->
  Integer ->
  (MAlonzo.Code.Data.Nat.Base.T__'8804'__18 ->
   MAlonzo.Code.Data.Empty.T_'8869'_4) ->
  Integer ->
  Integer ->
  AgdaAny ->
  AgdaAny ->
  (Integer ->
   MAlonzo.Code.Data.Nat.Base.T__'8804'__18 ->
   MAlonzo.Code.Induction.WellFounded.T_Acc_42) ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__18
d_n'8760'o'60'n_750 v0 v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7
  = du_n'8760'o'60'n_750 v0 v1
du_n'8760'o'60'n_750 ::
  Integer -> Integer -> MAlonzo.Code.Data.Nat.Base.T__'8804'__18
du_n'8760'o'60'n_750 v0 v1
  = coe
      MAlonzo.Code.Data.Nat.Properties.d_'8760''45'mono'691''45''60'_3750
      (coe v1) (coe v0) (coe (0 :: Integer))
      (coe
         MAlonzo.Code.Data.Nat.Properties.du_n'8802'0'8658'n'62'0_1960
         (coe v0))
      (coe
         MAlonzo.Code.Data.Nat.Properties.du_'8814''8658''8805'_1784
         (coe v1) (coe v0))
-- Data.Nat.DivMod.*-/-assoc
d_'42''45''47''45'assoc_760 ::
  Integer ->
  Integer ->
  Integer ->
  AgdaAny ->
  MAlonzo.Code.Data.Nat.Divisibility.Core.T__'8739'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'42''45''47''45'assoc_760 = erased
-- Data.Nat.DivMod./-*-interchange
d_'47''45''42''45'interchange_790 ::
  Integer ->
  Integer ->
  Integer ->
  Integer ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Data.Nat.Divisibility.Core.T__'8739'__12 ->
  MAlonzo.Code.Data.Nat.Divisibility.Core.T__'8739'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'47''45''42''45'interchange_790 = erased
-- Data.Nat.DivMod.DivMod
d_DivMod_808 a0 a1 = ()
data T_DivMod_808
  = C_result_826 Integer MAlonzo.Code.Data.Fin.Base.T_Fin_6
-- Data.Nat.DivMod.DivMod.quotient
d_quotient_820 :: T_DivMod_808 -> Integer
d_quotient_820 v0
  = case coe v0 of
      C_result_826 v1 v2 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Data.Nat.DivMod.DivMod.remainder
d_remainder_822 ::
  T_DivMod_808 -> MAlonzo.Code.Data.Fin.Base.T_Fin_6
d_remainder_822 v0
  = case coe v0 of
      C_result_826 v1 v2 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Data.Nat.DivMod.DivMod.property
d_property_824 ::
  T_DivMod_808 -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_property_824 = erased
-- Data.Nat.DivMod._div_
d__div__834 :: Integer -> Integer -> AgdaAny -> Integer
d__div__834 v0 v1 v2 = coe du__'47'__56 v0 v1
-- Data.Nat.DivMod._mod_
d__mod__842 ::
  Integer -> Integer -> AgdaAny -> MAlonzo.Code.Data.Fin.Base.T_Fin_6
d__mod__842 v0 v1 ~v2 = du__mod__842 v0 v1
du__mod__842 ::
  Integer -> Integer -> MAlonzo.Code.Data.Fin.Base.T_Fin_6
du__mod__842 v0 v1
  = coe
      MAlonzo.Code.Data.Fin.Base.du_fromℕ'60'_66
      (coe remInt (coe v0) (coe v1))
-- Data.Nat.DivMod._divMod_
d__divMod__854 :: Integer -> Integer -> AgdaAny -> T_DivMod_808
d__divMod__854 v0 v1 ~v2 = du__divMod__854 v0 v1
du__divMod__854 :: Integer -> Integer -> T_DivMod_808
du__divMod__854 v0 v1
  = coe
      C_result_826 (coe du__'47'__56 (coe v0) (coe v1))
      (coe du__mod__842 (coe v0) (coe v1))
-- Data.Nat.DivMod._.[m/n]*n
d_'91'm'47'n'93''42'n_866 ::
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6 -> Integer
d_'91'm'47'n'93''42'n_866 v0 v1 ~v2
  = du_'91'm'47'n'93''42'n_866 v0 v1
du_'91'm'47'n'93''42'n_866 :: Integer -> Integer -> Integer
du_'91'm'47'n'93''42'n_866 v0 v1
  = coe
      mulInt
      (coe
         du__'47'__56 (coe v0) (coe addInt (coe (1 :: Integer)) (coe v1)))
      (coe addInt (coe (1 :: Integer)) (coe v1))
-- Data.Nat.DivMod.a≡a%n+[a/n]*n
d_a'8801'a'37'n'43''91'a'47'n'93''42'n_870 ::
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_a'8801'a'37'n'43''91'a'47'n'93''42'n_870 = erased
-- Data.Nat.DivMod.a%1≡0
d_a'37'1'8801'0_872 ::
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_a'37'1'8801'0_872 = erased
-- Data.Nat.DivMod.a%n%n≡a%n
d_a'37'n'37'n'8801'a'37'n_874 ::
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_a'37'n'37'n'8801'a'37'n_874 = erased
-- Data.Nat.DivMod.[a+n]%n≡a%n
d_'91'a'43'n'93''37'n'8801'a'37'n_876 ::
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'91'a'43'n'93''37'n'8801'a'37'n_876 = erased
-- Data.Nat.DivMod.[a+kn]%n≡a%n
d_'91'a'43'kn'93''37'n'8801'a'37'n_878 ::
  Integer ->
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'91'a'43'kn'93''37'n'8801'a'37'n_878 = erased
-- Data.Nat.DivMod.kn%n≡0
d_kn'37'n'8801'0_880 ::
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_kn'37'n'8801'0_880 = erased
-- Data.Nat.DivMod.a%n<n
d_a'37'n'60'n_882 ::
  Integer -> Integer -> MAlonzo.Code.Data.Nat.Base.T__'8804'__18
d_a'37'n'60'n_882 = coe d_m'37'n'60'n_172
