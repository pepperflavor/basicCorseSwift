import Foundation

// Operators - 연산자

let myAge = 22
let yourAge = 20

// 연산 결과가 true 이면 블록 실행
// 조건문 연산자
if myAge > yourAge {
    print("operator result : True! I'm older than you")
} else if myAge < yourAge {
    print("operator result : False! I'm younger than you")
} else {
    print("Same value both")
}

// + : 더하기 연산자
let myMotherAge = myAge + 30

// 곱하기 연산자
let doubleMyAge = myAge * 2


// 1. unary prefix : 단항 접두사, 하나의 값으로 단 하나의 작업에만 작동
let foo = true
let foo2 = !true

// 2. unary postfix
let name = Optional("Vandad")
type(of: name)
let unaryPostFix = name! // 단항 후위 연산자, 변수 뒤에서 작동
type(of: unaryPostFix)

// 3. bunary infix : 중위연산자. 두개의 값 사이에 위치한 연산자. ex) *, / 등등
let result = 1 + 2
let names = "Foo" + " " + "Bar"

let age = 30
//let message: String
//if age >= 18 {
//    message = "you are an adult!"
//} else{
//    message = "you are not yet an adult"
//}

// 삼항 연산자
// CONDITION ? VALUE IF CONDITION IS MET : VALUE IF CONDITION IS NOT MET
let message = age > 18 
? "you are an adult!"
: "your not an adult"


// 아직 스위프트는 포메터가 없음... 프리티어같은ㅠㅠ 그래서 직접 선택해서 ctrl + I로 들여쓰기....
