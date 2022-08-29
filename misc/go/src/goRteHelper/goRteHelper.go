package goRteHelper

import (
	"math/big"
)

type GoImportable bool

// ================================================================================
// 								*big.Int helper functions
// ================================================================================

func Add(x, y *big.Int) *big.Int {
	return new(big.Int).Add(x, y)
}

func Subtract(x, y *big.Int) *big.Int {
	return new(big.Int).Sub(x, y)
}

func Multiply(x, y *big.Int) *big.Int {
	return new(big.Int).Mul(x, y)
}

func compare(x, y *big.Int, compareFlag int) bool {
	return x.Cmp(y) == compareFlag
}

func Equals(x, y *big.Int) bool {
	return compare(x, y, 0)
}

func MoreOrEquals(x, y *big.Int) bool {
	return (compare(x, y, 0) || compare(x, y, 1))
}

func Less(x, y *big.Int) bool {
	return compare(x, y, -1)
}

// ================================================================================
// 								uint64 helper functions
// ================================================================================

func UintAdd(x, y uint64) uint64 {
	return x + y
}

func UintSubtract(x, y uint64) uint64 {
	return x - y
}

func UintMultiply(x, y uint64) uint64 {
	return x * y
}

func UintEquals(x, y uint64) bool {
	return x == y
}

func UintMoreOrEquals(x, y uint64) bool {
	return x >= y
}

func UintLess(x, y uint64) bool {
	return x < y
}
