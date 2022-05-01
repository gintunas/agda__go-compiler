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

module MAlonzo.Code.Data.Digit where

import MAlonzo.RTE (coe, erased, AgdaAny, addInt, subInt, mulInt,
                    quotInt, remInt, geqInt, ltInt, eqInt, add64, sub64, mul64, quot64,
                    rem64, lt64, eq64, word64FromNat, word64ToNat)
import qualified MAlonzo.RTE
import qualified Data.Text
import qualified MAlonzo.Code.Agda.Builtin.Char
import qualified MAlonzo.Code.Agda.Builtin.List
import qualified MAlonzo.Code.Agda.Builtin.Sigma
import qualified MAlonzo.Code.Agda.Builtin.Unit
import qualified MAlonzo.Code.Data.Fin.Base
import qualified MAlonzo.Code.Data.List.Base
import qualified MAlonzo.Code.Data.Nat.Base
import qualified MAlonzo.Code.Data.Nat.DivMod
import qualified MAlonzo.Code.Data.Nat.Properties
import qualified MAlonzo.Code.Data.Vec.Base
import qualified MAlonzo.Code.Induction.WellFounded
import qualified MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple
import qualified MAlonzo.Code.Relation.Nullary

-- Data.Digit.Digit
d_Digit_4 :: Integer -> ()
d_Digit_4 = erased
-- Data.Digit.Decimal
d_Decimal_8 :: ()
d_Decimal_8 = erased
-- Data.Digit.Bit
d_Bit_10 :: ()
d_Bit_10 = erased
-- Data.Digit.0b
d_0b_12 :: MAlonzo.Code.Data.Fin.Base.T_Fin_6
d_0b_12 = coe MAlonzo.Code.Data.Fin.Base.C_zero_10
-- Data.Digit.1b
d_1b_14 :: MAlonzo.Code.Data.Fin.Base.T_Fin_6
d_1b_14
  = coe
      MAlonzo.Code.Data.Fin.Base.C_suc_16
      (coe MAlonzo.Code.Data.Fin.Base.C_zero_10)
-- Data.Digit.toNatDigits
d_toNatDigits_20 :: Integer -> AgdaAny -> Integer -> [Integer]
d_toNatDigits_20 v0 ~v1 v2 = du_toNatDigits_20 v0 v2
du_toNatDigits_20 :: Integer -> Integer -> [Integer]
du_toNatDigits_20 v0 v1
  = case coe v0 of
      1 -> coe
             MAlonzo.Code.Data.List.Base.du_replicate_306 (coe v1)
             (coe (1 :: Integer))
      _ -> let v2 = subInt (coe v0) (coe (2 :: Integer)) in
           coe
             du_aux_38 (coe v2) (coe v1)
             (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)
-- Data.Digit._.aux
d_aux_38 ::
  Integer ->
  MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6 ->
  Integer ->
  Integer ->
  MAlonzo.Code.Induction.WellFounded.T_Acc_42 ->
  [Integer] -> [Integer]
d_aux_38 v0 ~v1 ~v2 v3 ~v4 v5 = du_aux_38 v0 v3 v5
du_aux_38 :: Integer -> Integer -> [Integer] -> [Integer]
du_aux_38 v0 v1 v2
  = case coe v1 of
      0 -> coe
             MAlonzo.Code.Agda.Builtin.List.C__'8759'__22 (coe (0 :: Integer))
             (coe v2)
      _ -> let v3
                 = MAlonzo.Code.Relation.Nullary.d_does_42
                     (coe
                        MAlonzo.Code.Data.Nat.Properties.d__'60''63'__1912
                        (coe (0 :: Integer))
                        (coe
                           MAlonzo.Code.Data.Nat.DivMod.du__'47'__56 (coe v1)
                           (coe addInt (coe (2 :: Integer)) (coe v0)))) in
           if coe v3
             then coe
                    du_aux_38 (coe v0)
                    (coe
                       MAlonzo.Code.Data.Nat.DivMod.du__'47'__56 (coe v1)
                       (coe addInt (coe (2 :: Integer)) (coe v0)))
                    (coe
                       MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                       (coe
                          MAlonzo.Code.Data.Nat.DivMod.du__'37'__68 (coe v1)
                          (coe addInt (coe (2 :: Integer)) (coe v0)))
                       (coe v2))
             else coe
                    MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                    (coe
                       MAlonzo.Code.Data.Nat.DivMod.du__'37'__68 (coe v1)
                       (coe addInt (coe (2 :: Integer)) (coe v0)))
                    (coe v2)
-- Data.Digit._._.q<n
d_q'60'n_74 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6 ->
  Integer ->
  (Integer ->
   MAlonzo.Code.Data.Nat.Base.T__'8804'__18 ->
   MAlonzo.Code.Induction.WellFounded.T_Acc_42) ->
  [Integer] -> MAlonzo.Code.Data.Nat.Base.T__'8804'__18
d_q'60'n_74 v0 v1 ~v2 ~v3 ~v4 ~v5 = du_q'60'n_74 v0 v1
du_q'60'n_74 ::
  Integer -> Integer -> MAlonzo.Code.Data.Nat.Base.T__'8804'__18
du_q'60'n_74 v0 v1
  = coe
      MAlonzo.Code.Data.Nat.DivMod.du_m'47'n'60'm_492
      (coe addInt (coe (1 :: Integer)) (coe v1))
      (coe addInt (coe (2 :: Integer)) (coe v0))
-- Data.Digit.Expansion
d_Expansion_76 :: Integer -> ()
d_Expansion_76 = erased
-- Data.Digit.fromDigits
d_fromDigits_82 ::
  Integer -> [MAlonzo.Code.Data.Fin.Base.T_Fin_6] -> Integer
d_fromDigits_82 v0 v1
  = case coe v1 of
      [] -> coe (0 :: Integer)
      (:) v2 v3
        -> coe
             addInt (coe MAlonzo.Code.Data.Fin.Base.du_toℕ_20 (coe v2))
             (coe mulInt (coe d_fromDigits_82 (coe v0) (coe v3)) (coe v0))
      _ -> MAlonzo.RTE.mazUnreachableError
-- Data.Digit.toDigits
d_toDigits_98 ::
  Integer ->
  AgdaAny -> Integer -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_toDigits_98 v0 ~v1 v2 = du_toDigits_98 v0 v2
du_toDigits_98 ::
  Integer -> Integer -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_toDigits_98 v0 v1
  = let v2 = subInt (coe v0) (coe (2 :: Integer)) in
    coe
      MAlonzo.Code.Induction.WellFounded.du_wfRec_164 erased
      (coe du_helper_152 (coe v2)) v1
-- Data.Digit._.base
d_base_108 ::
  Integer ->
  MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6 -> Integer -> Integer
d_base_108 v0 ~v1 ~v2 = du_base_108 v0
du_base_108 :: Integer -> Integer
du_base_108 v0 = coe addInt (coe (2 :: Integer)) (coe v0)
-- Data.Digit._.Pred
d_Pred_110 ::
  Integer ->
  MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6 ->
  Integer -> Integer -> ()
d_Pred_110 = erased
-- Data.Digit._.cons
d_cons_120 ::
  Integer ->
  MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6 ->
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Fin.Base.T_Fin_6 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_cons_120 ~v0 ~v1 ~v2 ~v3 v4 v5 = du_cons_120 v4 v5
du_cons_120 ::
  MAlonzo.Code.Data.Fin.Base.T_Fin_6 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_cons_120 v0 v1
  = case coe v1 of
      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v2 v3
        -> coe
             MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
             (coe
                MAlonzo.Code.Agda.Builtin.List.C__'8759'__22 (coe v0) (coe v2))
             erased
      _ -> MAlonzo.RTE.mazUnreachableError
-- Data.Digit._.lem
d_lem_136 ::
  Integer ->
  MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6 ->
  Integer ->
  Integer ->
  Integer ->
  Integer -> MAlonzo.Code.Data.Nat.Base.T__'8804''8242'__154
d_lem_136 ~v0 ~v1 ~v2 v3 v4 v5 = du_lem_136 v3 v4 v5
du_lem_136 ::
  Integer ->
  Integer ->
  Integer -> MAlonzo.Code.Data.Nat.Base.T__'8804''8242'__154
du_lem_136 v0 v1 v2
  = coe
      MAlonzo.Code.Data.Nat.Properties.du_'8804''8658''8804''8242'_4640
      (coe
         addInt
         (coe
            mulInt (coe addInt (coe (1 :: Integer)) (coe v0))
            (coe addInt (coe (2 :: Integer)) (coe v1)))
         (coe v2))
      (coe
         MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.du_begin__160
         (coe MAlonzo.Code.Data.Nat.Properties.d_'8804''45'isPreorder_1684)
         (\ v3 v4 v5 ->
            coe
              MAlonzo.Code.Data.Nat.Properties.du_'60''8658''8804'_1736 v4 v5)
         (coe addInt (coe (2 :: Integer)) (coe v0))
         (coe
            addInt
            (coe
               mulInt (coe addInt (coe (1 :: Integer)) (coe v0))
               (coe addInt (coe (2 :: Integer)) (coe v1)))
            (coe v2))
         (coe
            MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.du_step'45''8804'_228
            (coe MAlonzo.Code.Data.Nat.Properties.d_'8804''45'isPreorder_1684)
            (\ v3 v4 v5 v6 v7 ->
               coe
                 MAlonzo.Code.Data.Nat.Properties.du_'60''45'trans'691'_1868 v6 v7)
            (coe addInt (coe (2 :: Integer)) (coe v0))
            (coe
               addInt
               (coe
                  addInt
                  (coe
                     addInt
                     (coe
                        addInt (coe (2 :: Integer))
                        (coe mulInt (coe addInt (coe (1 :: Integer)) (coe v0)) (coe v1)))
                     (coe v0))
                  (coe v0))
               (coe v2))
            (coe
               addInt
               (coe
                  mulInt (coe addInt (coe (1 :: Integer)) (coe v0))
                  (coe addInt (coe (2 :: Integer)) (coe v1)))
               (coe v2))
            (coe
               MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.du__'8718'_346
               (coe MAlonzo.Code.Data.Nat.Properties.d_'8804''45'isPreorder_1684)
               (coe
                  addInt
                  (coe
                     mulInt (coe addInt (coe (1 :: Integer)) (coe v0))
                     (coe addInt (coe (2 :: Integer)) (coe v1)))
                  (coe v2)))
            (coe
               MAlonzo.Code.Data.Nat.Properties.du_m'8804'm'43'n_2316
               (coe addInt (coe (2 :: Integer)) (coe v0)))))
-- Data.Digit._.helper
d_helper_152 ::
  Integer ->
  MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6 ->
  Integer ->
  Integer ->
  (Integer ->
   MAlonzo.Code.Data.Nat.Base.T__'8804''8242'__154 ->
   MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_helper_152 v0 ~v1 ~v2 v3 v4 = du_helper_152 v0 v3 v4
du_helper_152 ::
  Integer ->
  Integer ->
  (Integer ->
   MAlonzo.Code.Data.Nat.Base.T__'8804''8242'__154 ->
   MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_helper_152 v0 v1 v2
  = let v3
          = coe
              MAlonzo.Code.Data.Nat.DivMod.du__divMod__854 (coe v1)
              (coe du_base_108 (coe v0)) in
    case coe v3 of
      MAlonzo.Code.Data.Nat.DivMod.C_result_826 v4 v5
        -> case coe v4 of
             0 -> coe
                    MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                    (coe MAlonzo.Code.Data.List.Base.du_'91'_'93'_298 (coe v5)) erased
             _ -> coe
                    du_cons_120 (coe v5)
                    (coe
                       v2 v4
                       (coe
                          du_lem_136 (coe MAlonzo.Code.Data.Nat.Base.d_pred_94 (coe v4))
                          (coe v0) (coe MAlonzo.Code.Data.Fin.Base.du_toℕ_20 (coe v5))))
      _ -> MAlonzo.RTE.mazUnreachableError
-- Data.Digit.digitChars
d_digitChars_172 :: MAlonzo.Code.Data.Vec.Base.T_Vec_24
d_digitChars_172
  = coe
      MAlonzo.Code.Data.Vec.Base.C__'8759'__36 '0'
      (coe
         MAlonzo.Code.Data.Vec.Base.C__'8759'__36 '1'
         (coe
            MAlonzo.Code.Data.Vec.Base.C__'8759'__36 '2'
            (coe
               MAlonzo.Code.Data.Vec.Base.C__'8759'__36 '3'
               (coe
                  MAlonzo.Code.Data.Vec.Base.C__'8759'__36 '4'
                  (coe
                     MAlonzo.Code.Data.Vec.Base.C__'8759'__36 '5'
                     (coe
                        MAlonzo.Code.Data.Vec.Base.C__'8759'__36 '6'
                        (coe
                           MAlonzo.Code.Data.Vec.Base.C__'8759'__36 '7'
                           (coe
                              MAlonzo.Code.Data.Vec.Base.C__'8759'__36 '8'
                              (coe
                                 MAlonzo.Code.Data.Vec.Base.C__'8759'__36 '9'
                                 (coe
                                    MAlonzo.Code.Data.Vec.Base.C__'8759'__36 'a'
                                    (coe
                                       MAlonzo.Code.Data.Vec.Base.C__'8759'__36 'b'
                                       (coe
                                          MAlonzo.Code.Data.Vec.Base.C__'8759'__36 'c'
                                          (coe
                                             MAlonzo.Code.Data.Vec.Base.C__'8759'__36 'd'
                                             (coe
                                                MAlonzo.Code.Data.Vec.Base.C__'8759'__36 'e'
                                                (coe
                                                   MAlonzo.Code.Data.Vec.Base.C__'8759'__36 'f'
                                                   (coe
                                                      MAlonzo.Code.Data.Vec.Base.C_'91''93'_28))))))))))))))))
-- Data.Digit.showDigit
d_showDigit_178 ::
  Integer ->
  AgdaAny ->
  MAlonzo.Code.Data.Fin.Base.T_Fin_6 ->
  MAlonzo.Code.Agda.Builtin.Char.T_Char_6
d_showDigit_178 ~v0 ~v1 v2 = du_showDigit_178 v2
du_showDigit_178 ::
  MAlonzo.Code.Data.Fin.Base.T_Fin_6 ->
  MAlonzo.Code.Agda.Builtin.Char.T_Char_6
du_showDigit_178 v0
  = coe
      MAlonzo.Code.Data.Vec.Base.du_lookup_94 (coe d_digitChars_172)
      (coe v0)
