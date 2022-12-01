/*
 에러 처리(try-catch)
 : 프로그램 내에서 에러가 발생한 상황에 대해 대응하고 이를 복구하는 과정
 
 에러 처리 1급 클래스 지원
 - 발생(throwing)
 - 감지(catching)
 - 전파(propagating)
 - 조작(manipulating)
 */

import Foundation

// 에러 열거형:(에러프로토콜 채택)
enum PhoneError: Error {
    case unknown
    case batteryLow(batteryLevel: Int)
}

// 에러 발생
//throw PhoneError.batteryLow(batteryLevel: 20)

/*
 오류를 처리하는 4가지 방법
 - 함수에서 발생한 오류를 해당함수를 호출한 코드에 전파하는 방법
 - do-catch 오류을 이용하여 오류를 처리하는 방법
 - 옵셔널 값으로 오류를 처리하는 방법
 - 오류가 발생하지 않을 것이라는 확신하는 방법
 */

// 함수에서 발생한 오류를 해당 함수를 호출한 코드에 전파하는 방법
// (오류가 발생할 수 있음을 나타내는 위해서는 함수, 매개변수, 생성자 매개변수 뒤에 throw 키워드를 쓰면된다.
func checkPhoneBatteryStatus(batteryLevel: Int) throws -> String {
    guard batteryLevel != -1 else { throw PhoneError.unknown }
    guard batteryLevel > 20 else { throw
        PhoneError.batteryLow(batteryLevel: 20)}
    return "배터리 상태가 정상입니다."
}

/*
 do {
    try 오류 발생 가능코드
 } catch 오류 패턴 {
    처리 코드
 }
 */

do {
    try checkPhoneBatteryStatus(batteryLevel: 20)
} catch PhoneError.unknown {
    print("알 수 없는 에러입니다.")
} catch PhoneError.batteryLow(let batteryLevel) {
    print("배터리 전원 부족 남은 배터리 : \(batteryLevel)%")
} catch {
    print("그 외 오류 발생: \(error)")
}

// 에러가 발생하면 nil
let status = try? checkPhoneBatteryStatus(batteryLevel: -1)
print(status)

// 옵셔널(배터리 정상 출력)
let status2 = try? checkPhoneBatteryStatus(batteryLevel: 30)
print(status2)

// 배터리 정상 출력 (강제 언랩핑)
let status3 = try! checkPhoneBatteryStatus(batteryLevel: 30)
print(status3)
