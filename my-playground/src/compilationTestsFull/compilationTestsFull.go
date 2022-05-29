package compilationTestsFull
import (
"golang2/src/Agda/Builtin/Agda_Builtin_Bool"
 "golang2/src/Agda/Agda_Primitive"
 "golang2/src/Agda/Builtin/Agda_Builtin_Nat"
 "math/big"
 "helper"
)
type GoImportable int
type _ Agda_Builtin_Bool.GoImportable
type _ Agda_Primitive.GoImportable
type _ Agda_Builtin_Nat.GoImportable
const _ = big.Above
type _ helper.GoImportable
func Fand( A Agda_Builtin_Bool.Bool ) func( Agda_Builtin_Bool.Bool ) Agda_Builtin_Bool.Bool {

return func( B Agda_Builtin_Bool.Bool ) Agda_Builtin_Bool.Bool {
 C := Agda_Builtin_Bool.Bool_false { } 
 D := C 
 switch type_A  := A.(type) {

case Agda_Builtin_Bool.Bool_true : E := C 
 switch type_B  := B.(type) {

case Agda_Builtin_Bool.Bool_true : return helper.Id(B).(Agda_Builtin_Bool.Bool)
                                                                                                                                                                                                                          
case Agda_Builtin_Bool.Bool_false : return helper.Id(E).(Agda_Builtin_Bool.Bool)
default:
_ = type_B;
 panic("Unreachable");
}
                                                                                                                                                
case Agda_Builtin_Bool.Bool_false : return helper.Id(D).(Agda_Builtin_Bool.Bool)
default:
_ = type_A;
 panic("Unreachable");
} }
}

func Fxor( A Agda_Builtin_Bool.Bool ) func( Agda_Builtin_Bool.Bool ) Agda_Builtin_Bool.Bool {

return func( B Agda_Builtin_Bool.Bool ) Agda_Builtin_Bool.Bool {
 C := Agda_Builtin_Bool.Bool_false { } 
 switch type_A  := A.(type) {

case Agda_Builtin_Bool.Bool_false : D := C 
 switch type_B  := B.(type) {

case Agda_Builtin_Bool.Bool_true : return helper.Id(B).(Agda_Builtin_Bool.Bool)
                                                                                                                                                                                                                  
case Agda_Builtin_Bool.Bool_false : return helper.Id(D).(Agda_Builtin_Bool.Bool)
default:
_ = type_B;
 panic("Unreachable");
}
                                                                                                                                       
case Agda_Builtin_Bool.Bool_true : D := C 
 switch type_B  := B.(type) {

case Agda_Builtin_Bool.Bool_false : return helper.Id(A).(Agda_Builtin_Bool.Bool)
                                                                                                                                                                                                                 
case Agda_Builtin_Bool.Bool_true : return helper.Id(D).(Agda_Builtin_Bool.Bool)
default:
_ = type_B;
 panic("Unreachable");
}
default:
_ = type_A;
 panic("Unreachable");
} }
}

func Fnot( A Agda_Builtin_Bool.Bool ) Agda_Builtin_Bool.Bool {
 switch type_A  := A.(type) {

case Agda_Builtin_Bool.Bool_false : return helper.Id(Agda_Builtin_Bool.Bool_true { }).(Agda_Builtin_Bool.Bool)
                                                                                             
case Agda_Builtin_Bool.Bool_true : return helper.Id(Agda_Builtin_Bool.Bool_false { }).(Agda_Builtin_Bool.Bool)
default:
_ = type_A;
 panic("Unreachable");
} }

func For( A Agda_Builtin_Bool.Bool ) func( Agda_Builtin_Bool.Bool ) Agda_Builtin_Bool.Bool {

return func( B Agda_Builtin_Bool.Bool ) Agda_Builtin_Bool.Bool {
 C := Agda_Builtin_Bool.Bool_false { } 
 D := C 
 switch type_B  := B.(type) {

case Agda_Builtin_Bool.Bool_true : return helper.Id(B).(Agda_Builtin_Bool.Bool)
                                                                                                                                                
case Agda_Builtin_Bool.Bool_false : return helper.Id(D).(Agda_Builtin_Bool.Bool)
default:
_ = type_B;
 panic("Unreachable");
} 
 D := C 
 switch type_A  := A.(type) {

case Agda_Builtin_Bool.Bool_true : return helper.Id(A).(Agda_Builtin_Bool.Bool)
                                                                                                                                                                                                                                                                                                                        
case Agda_Builtin_Bool.Bool_false : return helper.Id(D).(Agda_Builtin_Bool.Bool)
default:
_ = type_A;
 panic("Unreachable");
} }
}

func Fadd( A interface{} ) func( interface{} ) *big.Int {

return func( B interface{} ) *big.Int {
 if ( helper.Equals((big.NewInt(0)),(B)) ) {
 return helper.Id(A).(*big.Int) 
} else {
 C := helper.Minus((B),(big.NewInt(1))) 
 return helper.Id(Fadd(helper.Add((big.NewInt(1)),(A))) (C)).(*big.Int) 
}
 }
}

func Fsub( A interface{} ) func( interface{} ) *big.Int {

return func( B interface{} ) *big.Int {
 if ( helper.Equals((big.NewInt(0)),(A)) ) {
 return helper.Id(big.NewInt(0)).(*big.Int) 
} else {
 C := helper.Minus((A),(big.NewInt(1))) 
 if ( helper.Equals((big.NewInt(0)),(B)) ) {
 return helper.Id(A).(*big.Int) 
} else {
 D := helper.Minus((B),(big.NewInt(1))) 
 return helper.Id(Fsub(C) (D)).(*big.Int) 
}
 
}
 }
}

func Fmul( A interface{} ) func( interface{} ) *big.Int {

return func( B interface{} ) *big.Int {
 C := if ( helper.Equals((big.NewInt(0)),(B)) ) {
 big.NewInt(0) 
} else {
 C := helper.Minus((B),(big.NewInt(1))) 
 Fadd(A) (Fmul(A) (C)) 
}
 
 if ( helper.Equals((big.NewInt(0)),(A)) ) {
 return helper.Id(big.NewInt(0)).(*big.Int) 
} else {
 return helper.Id(C).(*big.Int) 
}
 }
}

func Ffib( A interface{} ) *big.Int {
 if ( helper.Equals((big.NewInt(0)),(A)) ) {
 return helper.Id(big.NewInt(0)).(*big.Int) 
} else {
 if ( helper.Equals((big.NewInt(1)),(A)) ) {
 return helper.Id(big.NewInt(1)).(*big.Int) 
} else {
 B := helper.Minus((A),(big.NewInt(2))) 
 return helper.Id(helper.Add((Ffib(helper.Minus((A),(big.NewInt(1))))),(Ffib(B)))).(*big.Int) 
}
 
}
 }

func Ffactorial( A interface{} ) *big.Int {
 if ( helper.Equals((big.NewInt(0)),(A)) ) {
 return helper.Id(big.NewInt(1)).(*big.Int) 
} else {
 B := helper.Minus((A),(big.NewInt(1))) 
 return helper.Id(helper.Multiply((A),(Ffactorial(B)))).(*big.Int) 
}
 }

