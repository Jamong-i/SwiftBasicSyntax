
// 옵셔널 : 값이 있을 수도 있고 없을 수도 있다.

import UIKit

// 값이 없는 경우에는 nil (타입 뒤에 ?을 붙혀야 옵셔널타입)
var name: String? = nil

// 옵셔널변수에도 값을 넣을 수 있다.
var optionalName: String? = "Jamong"

// 옵셔널이 아니면 값을 넣어야 한다.
// var requiredName: String = optionalName

// 값을 출력하면 값이 Optional로 쌓여있다. 벗겨주려면 옵셔널 바인딩을 해야한다.
print(optionalName)



/*
 옵셔널 해제 방법
 
 명시적 해제 : 강제 해제 / 비강제 해제(옵셔널 바인딩)
 
 묵시적 해제 : 컴파일러에 의한 자동 해제 / 옵셔널의 묵시적 해제
 */

var number: Int? = 3
// 출력 값 Optional(3)
print(number)
// 출력 값 3 (강제해제 연산자 !) : 강제 해제는 리스크가 있기 때문에 되도록 사용하지 않는다.
print(number!)

// 비강제 해제 (if문)
if let result = number {
    print(result)
}

// 비강제 해제 (guard문)
func test() {
    let number: Int? = 5
    guard let result = number else { return }
    print(result)
}

// 묵시적 해제(명령문을 이용하면 값을 사용할 때 컴파일러가 자동적으로 옵셔널을 해제해준다.)
let value: Int? = 6
if value == 6 {
    print("value가 6입니다.")
} else {
    print("value가 6이 아닙니다.")
}

// 옵셔널의 묵시적 해제(타입 변환에 !로 하여 사용할때 강제해제하여 추출할 수 있다.)
let string = "12"
var stringToInt: Int! = Int(string)

