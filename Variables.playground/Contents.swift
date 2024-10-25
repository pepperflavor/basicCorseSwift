import Foundation

// 기본적인 사항들을 포함한 모듈
// 변수 선언 키워드
/*
var :  재할당 가능
let :
 */

let myName = "hajin"
let yourName = "someOne"

//myName = yourName

// 배열
var names = [
    myName,
    yourName
]

names.append("Bar")
names.append("BaBa")
//
//print(names)


let foo = "Foo"
var foo2 = foo

foo2 = "Foo 2"

//print("foo : \(foo)")
//print("foo2 : \(foo2)")

// structure - 구조는 값의 유형
let moreNames = [
    "Foo",
    "Bar"
]
// 추가 불가능
//moreNames.append("hello")

var copy = moreNames
copy.append("Baz")
moreNames
copy

// 메모리 주소값 출력 코드
func address(_ o : UnsafeRawPointer) -> String {
    let bit = Int(bitPattern: o)
    return String(format: "%p", bit)
}


// class - 클래스는 참조 유형이다
// NSMutableArray : 선언한 키워드가 var, let에 상관없이 값 추가 가능
let oldArray = NSMutableArray(
array: [
    "Foo",
    "Bar"
    ]
)


oldArray.add("Baz")
var newArray = oldArray
newArray.add("진짜 추가됌?")
//print("oldArray: \(oldArray)")
//print("newArray: \(newArray)")


let someNames =  NSMutableArray(
    array: [
        "Foo",
        "Bar"
        ]
    )

print("오버라이드 전 : ")
Unmanaged.passUnretained(someNames).toOpaque()


// NSMutableArray
// let 으로 선언한 배열의 값 변경하기
func changeTheArray(_ array: NSArray){
    let copy = array as! NSMutableArray
    copy.add("Baz")
}

changeTheArray(someNames)
//someNames // Foo, Bar, Baz 전부 들어가 있음 let으로 선언했지만 배열의 값이 변경 되었다

print("오버라이드 후 : ")
Unmanaged.passUnretained(someNames).toOpaque()
