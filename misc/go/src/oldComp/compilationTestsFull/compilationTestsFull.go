package compilationTestsFull

import (
	"Gopiler/Agda/Agda_Primitive"
	"Gopiler/Agda/Builtin/Agda_Builtin_Bool"
	"Gopiler/Agda/Builtin/Agda_Builtin_Nat"
	"goRteHelper"
	"helper"
	"math/big"
)

type GoImportable bool
type _ Agda_Builtin_Bool.GoImportable
type _ Agda_Primitive.GoImportable
type _ Agda_Builtin_Nat.GoImportable

const _ = big.Above

type _ goRteHelper.GoImportable

func For(A Agda_Builtin_Bool.Bool) func(Agda_Builtin_Bool.Bool) Agda_Builtin_Bool.Bool {

	return func(B Agda_Builtin_Bool.Bool) Agda_Builtin_Bool.Bool {
		C := Agda_Builtin_Bool.Bool_false{}
		D := C
		switch type_B := B.(type) {

		case Agda_Builtin_Bool.Bool_true:
			return helper.Id(B).(Agda_Builtin_Bool.Bool)

		case Agda_Builtin_Bool.Bool_false:
			return helper.Id(D).(Agda_Builtin_Bool.Bool)
		default:
			_ = type_B
			panic("Unreachable")
		}
		D := C
		switch type_A := A.(type) {

		case Agda_Builtin_Bool.Bool_true:
			return helper.Id(A).(Agda_Builtin_Bool.Bool)

		case Agda_Builtin_Bool.Bool_false:
			return helper.Id(D).(Agda_Builtin_Bool.Bool)
		default:
			_ = type_A
			panic("Unreachable")
		}
	}
}
