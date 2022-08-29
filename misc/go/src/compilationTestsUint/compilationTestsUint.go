package compilationTestsUint

import (
	"Gopiler/Agda/Agda_Primitive"
	"Gopiler/Agda/Builtin/Agda_Builtin_Nat"
	"uintHelper"
)

type GoImportable bool
type _ Agda_Primitive.GoImportable
type _ Agda_Builtin_Nat.GoImportable
type _ uintHelper.GoImportable

func F_add(A uint64) func(uint64) uint64 {

	return func(B uint64) uint64 {
		if uintHelper.UintEquals((0), (B)) {
			return A
		} else {
			C := uintHelper.UintSubtract((B), (1))
			return F_add(uintHelper.UintAdd((1), (A)))(C)
		}
	}
}

func F_factorial(A uint64) uint64 {
	if uintHelper.UintEquals((0), (A)) {
		return 1
	} else {
		B := uintHelper.UintSubtract((A), (1))
		return uintHelper.UintMultiply((A), (F_factorial(B)))
	}
}
