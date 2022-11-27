/*
 struct 구조체 이름{
    프로퍼티와 메서드
 }
 */
import UIKit

// 유저의 정보의 구조체 정의
// 변수와 상수 함수의 이름은 카멜표기법이지만 구조체와 클래스 이름은 대문자로 시작하는 파스칼표기법을 사용한다.
struct User {
    var nickName: String
    var age: Int
    
    // 메소드 정의
    func information() {
        print("\(nickName) \(age)")
    }
}

// 인스턴스 생성 (메모리 생성)
var user = User(nickName: "Jamong", age: 23)

// 유저 구조체의 프로퍼티 값을 접근하려면 구조체이름.프로퍼티
user.nickName

// 프로퍼티 값 변경
user.nickName = "Ablert"
user.nickName

//유저 구조체 메소드 실행
user.information()
