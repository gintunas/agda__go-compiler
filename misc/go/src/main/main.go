package main

import (
	"Gopiler/compilationTests"
	"fmt"
	// "math/big"
	// "time"
	// "Gopiler/compilationTests"
	// "Gopiler/compilationTestsUint"
)

// func main() {

// 	for i := 1; i < 21; i++ {
// 		fmt.Println("\n--------------------------------------------------------------------------------")
// 		fmt.Printf("\nFactorial for %d\n", i)

// 		factorialNumber := uint64(i)
// 		bigFactorialNumber := int64(factorialNumber)

// 		start := time.Now()
// 		fmt.Println(compilationTestsUint.F_factorial(factorialNumber))
// 		elapsed := time.Since(start)
// 		fmt.Printf("Uint factorial took %s\n", elapsed)

// 		fmt.Println()

// 		bigStart := time.Now()
// 		fmt.Println(compilationTests.F_factorial(big.NewInt(bigFactorialNumber)))
// 		bigElapsed := time.Since(bigStart)
// 		fmt.Printf("bigInt factorial took %s\n", bigElapsed)
// 	}
// 	fmt.Println("\n--------------------------------------------------------------------------------")
// }

func main() {
	fmt.Println("AND", compilationTests.F_and(true)(true))
	fmt.Println("OR", compilationTests.F_or(true)(false))
	fmt.Println("XOR", compilationTests.F_xor(true)(true))
	fmt.Println("NOT", compilationTests.F_not(false))

	fmt.Println("Add", compilationTests.F_add(10)(6))
	fmt.Println("Multiply", compilationTests.F_mul(10)(6))
	fmt.Println("Subtract", compilationTests.F_sub(10)(6))

	fmt.Println("Fibonacci element", compilationTests.F_fib(10))
	fmt.Println("Factorial", compilationTests.F_factorial(10))
}
