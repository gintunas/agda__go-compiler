package Agda_Builtin_Nat

import (
	"helper"
	"math/big"
	"oldComp/Agda/Agda_Primitive"
	"oldComp/Agda/Builtin/Agda_Builtin_Bool"
)

type GoImportable int
type _ Agda_Builtin_Bool.GoImportable
type _ Agda_Primitive.GoImportable

const _ = big.Above

type _ helper.GoImportable
type Nat = interface{}
type Nat_zero struct{}
type Nat_suc struct{ A *big.Int }
