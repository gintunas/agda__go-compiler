package booleanor

import (
	"Gopiler/Agda/Agda_Primitive"
	"Gopiler/Agda/Builtin/Agda_Builtin_Bool"
	"uintHelper"
)

type GoImportable bool
type _ Agda_Builtin_Bool.GoImportable
type _ Agda_Primitive.GoImportable
type _ uintHelper.GoImportable

func F_or(A any) func(any) any {

	return func(B any) any {
		C := func() any {
			E := func() any { return Agda_Builtin_Bool.Bool_false }()
			D := func() any { return E }()

			var switch_B any
			switch B {
			case Agda_Builtin_Bool.Bool_true:
				switch_B = B

			case Agda_Builtin_Bool.Bool_false:
				switch_B = D
			default:
				panic("Unreachable")
			}
			return switch_B
		}()

		D := func() any { return C }()

		switch A {

		case Agda_Builtin_Bool.Bool_true:
			return A

		case Agda_Builtin_Bool.Bool_false:
			return D
		default:
			panic("Unreachable")
		}
	}
}
