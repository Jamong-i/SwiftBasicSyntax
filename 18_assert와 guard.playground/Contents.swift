/*
 assert
 - 특정 조건을 체크하고, 조건이 성립되지 않으면 메세지를 출력 하게 할 수 있는 함수
 - assert 함수는 디버깅 모드에서만 동작하고 주로 디버깅 중 조건의 검증을 위하여 사용한다.
 - 주로 디버깅 중 조건의 검증을 위해 사용한다.
 
 guard
 - 뭔가를 검사하여 그 다음에 오는 코드를 실행할지 말지 결정 하는 것
 - guard 문에 주어진 조건문이 거짓일 때 구문이 실행됨
 - 잘못된 값이 함수로 들어오는 것을 막기 위해 사용한다.
 */

import Foundation

var value = 0
// 값이 0이기 때문에 에러 없음
assert(value == 0)

value = 2
// 값이 0이 아니기 때문에 에러 메세지 출력
assert(value == 0, "값이 0이 아닙니다.")

/*
 guard 조건 else {
    조건이 false 이면 else 구문이 실행되고
    return or throw or break 를 통해 이 후 코드를 실행하지 않도록 한다.
 }
 */

func guardTest(value1: Int) {
    // value가 0이면 출력 아니면 종료
    guard value1 == 0 else { return }
    print("안녕하세요.")
}

// guard문에 막혀서 아무것도 출력이 안됌
guardTest(value1: 2)

// 안녕하세요 출력
guardTest(value1: 0)


// 옵셔널 바인딩 가능
func guardTest2(value2: Int?) {
    // value값이 있을 떄 출력
    guard let value2 = value2 else { return }
    print(value2)
}

// 옵셔널 바인딩으로 value값 출력
guardTest2(value2: 2)

// 값이 없어서 guard 문에 막혀 종료
guardTest2(value2: nil)
