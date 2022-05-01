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

module MAlonzo.Code.Qtest where

import MAlonzo.RTE (coe, erased, AgdaAny, addInt, subInt, mulInt,
                    quotInt, remInt, geqInt, ltInt, eqInt, add64, sub64, mul64, quot64,
                    rem64, lt64, eq64, word64FromNat, word64ToNat)
import qualified MAlonzo.RTE
import qualified Data.Text
import qualified MAlonzo.Code.Agda.Builtin.IO
import qualified MAlonzo.Code.Agda.Builtin.String
import qualified MAlonzo.Code.Agda.Builtin.Unit
import qualified MAlonzo.Code.Data.Nat.Show

import qualified Data.Text as T
-- test.putStrLn
d_putStrLn_2 ::
  MAlonzo.Code.Agda.Builtin.String.T_String_6 ->
  MAlonzo.Code.Agda.Builtin.IO.T_IO_8
    () MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6
d_putStrLn_2 = putStrLn . T.unpack
-- test.add
d_add_4 :: Integer -> Integer -> Integer
d_add_4 v0 v1
  = case coe v1 of
      0 -> coe v0
      _ -> let v2 = subInt (coe v1) (coe (1 :: Integer)) in
           coe d_add_4 (coe addInt (coe (1 :: Integer)) (coe v0)) (coe v2)
-- test.add_show
d_add_show_12 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.IO.T_IO_8
    AgdaAny MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6
d_add_show_12 v0 v1
  = coe
      d_putStrLn_2
      (MAlonzo.Code.Data.Nat.Show.d_show_56
         (coe d_add_4 (coe v0) (coe v1)))
