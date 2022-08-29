package compilationTests

import (
	"Gopiler/Agda/Agda_Primitive"
	"Gopiler/Agda/Builtin/Agda_Builtin_Bool"
	"Gopiler/Agda/Builtin/Agda_Builtin_Nat"
	"goRteHelper"
	"math/big"
)

type GoImportable bool
type _ Agda_Builtin_Bool.GoImportable
type _ Agda_Primitive.GoImportable
type _ Agda_Builtin_Nat.GoImportable

const _ = big.Above

type _ goRteHelper.GoImportable

func F_and(A Agda_Builtin_Bool.Bool) func(Agda_Builtin_Bool.Bool) Agda_Builtin_Bool.Bool {
	return func(B Agda_Builtin_Bool.Bool) Agda_Builtin_Bool.Bool {
		C := Agda_Builtin_Bool.Bool_false
		D := C
		switch A {
		case Agda_Builtin_Bool.Bool_true:
			E := C
			switch B {
			case Agda_Builtin_Bool.Bool_true:
				return B
			case Agda_Builtin_Bool.Bool_false:
				return E
			default:
				panic("Unreachable")
			}
		case Agda_Builtin_Bool.Bool_false:
			return D
		default:
			panic("Unreachable")
		}
	}
}

func F_xor(A Agda_Builtin_Bool.Bool) func(Agda_Builtin_Bool.Bool) Agda_Builtin_Bool.Bool {
	return func(B Agda_Builtin_Bool.Bool) Agda_Builtin_Bool.Bool {
		C := Agda_Builtin_Bool.Bool_false
		switch A {
		case Agda_Builtin_Bool.Bool_false:
			D := C
			switch B {
			case Agda_Builtin_Bool.Bool_true:
				return B
			case Agda_Builtin_Bool.Bool_false:
				return D
			default:
				panic("Unreachable")
			}
		case Agda_Builtin_Bool.Bool_true:
			D := C
			switch B {
			case Agda_Builtin_Bool.Bool_false:
				return A
			case Agda_Builtin_Bool.Bool_true:
				return D
			default:
				panic("Unreachable")
			}
		default:
			panic("Unreachable")
		}
	}
}

func F_not(A Agda_Builtin_Bool.Bool) Agda_Builtin_Bool.Bool {
	switch A {
	case Agda_Builtin_Bool.Bool_false:
		return Agda_Builtin_Bool.Bool_true
	case Agda_Builtin_Bool.Bool_true:
		return Agda_Builtin_Bool.Bool_false
	default:
		panic("Unreachable")
	}
}

func F_or(A Agda_Builtin_Bool.Bool) func(Agda_Builtin_Bool.Bool) Agda_Builtin_Bool.Bool {
	return func(B Agda_Builtin_Bool.Bool) Agda_Builtin_Bool.Bool {
		C := func() any {
			C := Agda_Builtin_Bool.Bool_false
			D := C
			switch B {
			case Agda_Builtin_Bool.Bool_true:
				return B
			case Agda_Builtin_Bool.Bool_false:
				return D
			default:
				panic("Unreachable")
			}
		}()
		D := C
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

func F_add(A uint64) func(uint64) uint64 {
	return func(B uint64) uint64 {
		if goRteHelper.UintEquals((0), (B)) {
			return A
		} else {
			C := func() uint64 {
				return goRteHelper.UintSubtract((B), (1))
			}()
			return F_add(goRteHelper.UintAdd((1), (A)))(C)
		}
	}
}

func F_sub(A uint64) func(uint64) uint64 {
	return func(B uint64) uint64 {
		if goRteHelper.UintEquals((0), (A)) {
			return 0
		} else {
			C := func() uint64 {
				return goRteHelper.UintSubtract((A), (1))
			}()
			if goRteHelper.UintEquals((0), (B)) {
				return A
			} else {
				D := func() uint64 {
					return goRteHelper.UintSubtract((B), (1))
				}()
				return F_sub(C)(D)
			}
		}
	}
}

func F_mul(A uint64) func(uint64) uint64 {
	return func(B uint64) uint64 {
		C := func() uint64 {
			if goRteHelper.UintEquals((0), (B)) {
				return 0
			} else {
				C := func() uint64 {
					return goRteHelper.UintSubtract((B), (1))
				}()
				return F_add(A)(F_mul(A)(C))
			}
		}()
		if goRteHelper.UintEquals((0), (A)) {
			return 0
		} else {
			return C
		}
	}
}

func F_fib(A uint64) uint64 {
	if goRteHelper.UintEquals((0), (A)) {
		return 0
	} else {
		if goRteHelper.UintEquals((1), (A)) {
			return 1
		} else {
			B := func() uint64 {
				return goRteHelper.UintSubtract((A), (2))
			}()
			return goRteHelper.UintAdd((F_fib(goRteHelper.UintSubtract((A), (1)))), (F_fib(B)))
		}
	}
}

func F_factorial(A uint64) uint64 {
	if goRteHelper.UintEquals((0), (A)) {
		return 1
	} else {
		B := func() uint64 {
			return goRteHelper.UintSubtract((A), (1))
		}()
		return goRteHelper.UintMultiply((A), (F_factorial(B)))
	}
}
