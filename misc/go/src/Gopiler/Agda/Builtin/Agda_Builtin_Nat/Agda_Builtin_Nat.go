package Agda_Builtin_Nat

import (
 "Gopiler/Agda/Builtin/Agda_Builtin_Bool"
 "Gopiler/Agda/Agda_Primitive"
 "math/big"
 "goRteHelper"
 )
type GoImportable bool
type _ Agda_Builtin_Bool.GoImportable
type _ Agda_Primitive.GoImportable
const _ = big.Above
type _ goRteHelper.GoImportable
type Nat = any
type Nat_zero struct {}
type Nat_suc struct {A uint64 ;}