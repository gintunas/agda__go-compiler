// package helper

// import (
// 	"math/big"
// 	// "reflect"
// )

// type GoImportable bool

// // func isEqualTypes [T Number] (x, y T) bool {
// // 	if reflect.TypeOf(x) != reflect.TypeOf(y) {
// // 		panic("Both arguments should be of the same type")
// // 	}
// // 	return true
// // }

// func compare(x, y *big.Int, compareFlag int) bool {
// 	return x.Cmp(y) == compareFlag
// }

// func Equals[T Number](x, y T) bool {
// 	// isEqualTypes(x, y)

// 	switch x.(type) {
// 	case big.Int:
// 		return compare(x.(*big.Int), y.(*big.Int), 0)
// 	case uint64:
// 		return x == y
// 	}
// 	panic("Unable to infer passed arguments type")
// }

// // func Equals(x, y uint64) bool {
// // 	return x == y
// // }

// func MoreOrEquals(x, y *big.Int) bool {
// 	return (compare(x, y, 0) || compare(x, y, 1))
// }

// func Less(x, y *big.Int) bool {
// 	return compare(x, y, -1)
// }

// // func Add(x, y *big.Int) *big.Int {
// // 	var z = big.NewInt(0)
// // 	return z.Add(x, y)
// // }

// func doIntegerFunc[T Number](x, y any, bigIntFunc func(*big.Int, *big.Int) *big.Int, uIntFunc func(uint64, uint64) T) T {
// 	// isEqualTypes(x, y)

// 	switch x.(type) {
// 	case *big.Int:
// 		// var z = big.NewInt(0)
// 		// return z.Add(x.(*big.Ivnt), y.(*big.Int))
// 		return bigIntFunc(x.(*big.Int), y.(*big.Int))
// 	case uint64:
// 		return uIntFunc(x.(uint64), y.(uint64))
// 	}
// 	panic("Unable to infer passed arguments type")
// }

// func Add[T Number](x, y T) T {
// 	return doIntegerFunc(x, y, new(big.Int).Add, func(u1, u2 uint64) T { return (u1 + u2) })

// 	// isEqualTypes(x, y)

// 	// switch x.(type) {
// 	// case big.Int:
// 	// 	var z = big.NewInt(0)
// 	// 	return z.Add(x.(*big.Int), y.(*big.Int))
// 	// case uint64:
// 	// 	return x.(uint64) + y.(uint64)
// 	// }
// 	// panic("Unable to infer passed arguments type")
// }

// type Number interface{
// 	uint64 | *big.Int
// }

// func Subtract[T Number](x, y T) T {
// 	return doIntegerFunc(x, y, new(big.Int).Sub, func(u1, u2 uint64) uint64 { return u1 - u2 })

// 	// isEqualTypes(x, y)

// 	// switch x.(type) {
// 	// case big.Int:
// 	// 	var z = big.NewInt(0)
// 	// 	return z.Sub(x.(*big.Int), y.(*big.Int))
// 	// case uint64:
// 	// 	return x.(uint64) + y.(uint64)
// 	// }
// 	// panic("Unable to infer passed arguments type")
// }

// func Multiply[T Number](x, y T) T {
// 	return doIntegerFunc(x, y, new(big.Int).Mul, func(u1, u2 uint64) uint64 { return u1 * u2 })

// 	// var z = big.NewInt(0)
// 	// return z.Mul(x, y)
// }
