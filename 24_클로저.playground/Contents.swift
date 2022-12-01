/*
 클로저 : 코드에서 전달 및 사용할 수 있는 독립기능 블록이며, 일급 객체의 역활을 할 수 있음 (익명이긴 하지만 함수)

 - 전달 인자로 보낼 수 있고, 변수/상수 등으로 저장하거나 전달할 수 있으며, 함수의 반환 값이 될 수 있다.
 
 클로저 표현식
 // 클로저 헤드
 { (매개변수) -> 리턴 타입 in
 // 클로저 구문
    실행 구문
 }
 */

import Foundation


let hello = { () -> () in
    print("hello")
}

hello()

let hello2 = { (name: String) -> String in
    return "Hello, \(name)"
}

// 전달인자 레이블을 사용하면 오류가 발생함
//hello2(name: "Jamong")

// 전달인자 없이 사용해야함
hello2("Jamong")

func doSomething(closure: () -> ()) {
    closure()
}

doSomething(closure: { () -> () in
    print("hello")
})

// 더 쉽게 클로저 정의(파라미터 반환값 in 모두 생략가능
doSomething() {
    print("hello2")
}

func doSomething2() -> () -> () {
    return { () -> () in
        print("hello4")
    }
}

doSomething2()()

func doSomething2(success: () -> (), fail: () -> ()) {
    
}

// 다중 후행 클로저
doSomething2 {
    <#code#>
} fail: {
    <#code#>
}

// 클로저 단순 간소화
func doSomething3(closure: (Int, Int, Int) -> Int) {
    closure(1, 2, 3)
}


doSomething3(closure: { (a, b, c) in
    return a + b + c
})

// 매개변수 이름을 생략하여 약식인수로 대체하면 매개변수와 in을 생략가능
doSomething3(closure: {
    return $0 + $1 + $2
})

// 리턴도 생략가능
doSomething3(closure: {
    $0 + $1 + $2
})

doSomething3() {
    $0 + $1 + $2
}

doSomething3 {
    $0 + $1 + $2
}
