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

module MAlonzo.Code.QcompilationTestsSimple where

import MAlonzo.RTE (coe, erased, AgdaAny, addInt, subInt, mulInt,
                    quotInt, remInt, geqInt, ltInt, eqInt, add64, 
                    sub64, mul64, quot64, rem64, lt64, eq64, 
                    word64FromNat, word64ToNat)
import qualified MAlonzo.RTE
import qualified Data.Text
import qualified MAlonzo.Code.Agda.Builtin.Bool

-- compilationTestsSimple.and
d_and_2 :: Bool -> Bool -> Bool
d_and_2 v0 v1
  = let v2 = coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8 in
    case coe v0 of
      MAlonzo.Code.Agda.Builtin.Bool.C_true_10
        -> case coe v1 of
             MAlonzo.Code.Agda.Builtin.Bool.C_true_10 -> coe v1
             _ -> coe v2
      _ -> coe v2



