package compilationTests

import (
	"golang2/src/Agda/Agda_Primitive"
	"golang2/src/Agda/Builtin/Agda_Builtin_Nat"
	"helper"
	"math/big"
)

type GoImportable int
type _ Agda_Primitive.GoImportable
type _ Agda_Builtin_Nat.GoImportable

const _ = big.Above

type _ helper.GoImportable

func Fadd(A interface{}) func(interface{}) *big.Int {

	return func(B interface{}) *big.Int {
		if helper.Equals((big.NewInt(0)), (B)) {
			return helper.Id(A).(*big.Int)
		} else {
			C := helper.Minus((B), (big.NewInt(1)))
			return helper.Id(Fadd(helper.Add((big.NewInt(1)), (A)))(C)).(*big.Int)
		}
	}
}
