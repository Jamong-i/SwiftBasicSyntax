/*
 열거형 : 연관성이 있는 값을 모아 놓은 것을 말한다.
 ex) 봄, 여름, 가을, 겨울
 */

import Foundation

// 열거형 키워드 enum
enum CompassPoint: String {
    case north = "북"
    case south = "남"
    case east = "동"
    case west = "서"
}

var direction = CompassPoint.east

// 컴파일러가 direction이 Compasspoint타입인것을 추론하기때문에 .west로 변경가능
direction = .west

switch direction {
case.north:
    print("north")
    
case.south:
    print("south")
    
case.east:
    print("east")
    
case.west:
    print("west")
}

// 원시값 가져오기 (direction이 west이기에 "서"가 출력한다.)
switch direction {
case.north:
    print(direction.rawValue)
    
case.south:
    print(direction.rawValue)
    
case.east:
    print(direction.rawValue)
    
case.west:
    print(direction.rawValue)
}

// 열거형 반환
let direction2 = CompassPoint(rawValue: "남")

// 연관값 반환
enum PhoneError {
    case unknown
    case batteryLow(String)
}

let error = PhoneError.batteryLow("배터리가 곧 방전됩니다.")

// 연관값 추출
switch error {
case.batteryLow(let message):
    print(message)
    
case.unknown:
    print("알 수 없는 에러입니다.")
}
