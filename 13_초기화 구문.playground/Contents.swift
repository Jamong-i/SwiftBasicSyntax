/*
 초기화(Initlalization)
 : 클래스 구조체 또는 열거형의 인스턴스를 사용하기 위한 준비 과정
 : 인스턴스 프로퍼티마다 초기값을 설정해 주고 새 인스턴스를 사용하기 전에 필요한 설정을 해주기 위해 사용한다.
 */
import UIKit

class User {
    var nickname: String
    var age: Int
    
    // 초기화 설정
    init(nickname: String, age: Int) {
        self.nickname = nickname
        self.age = age
    }
    // 초기화2 설정
    init(age: Int) {
        self.nickname = "Albert"
        self.age = age
    }
    
    //deInitlalization (클래스에서만 생성 가능)
    deinit {
        print("deint user")
    }
}


var user = User(nickname: "Jamong", age: 24)
user.nickname
user.age

var user2 = User(age: 27)
user2.nickname
user2.age

var user3: User? = User(age: 23)
user3 = nil
