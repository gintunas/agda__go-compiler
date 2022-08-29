package Agda_Builtin_Bool

import (
	"helper"
	"math/big"
	"oldComp/Agda/Agda_Primitive"
)

type GoImportable int
type _ Agda_Primitive.GoImportable

const _ = big.Above

type _ helper.GoImportable
type Bool = interface{}
type Bool_false struct{}
type Bool_true struct{}
