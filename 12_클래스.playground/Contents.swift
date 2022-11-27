    /*
     class 클래스 이름{
        프로퍼티와 메서드
     }
     */
import UIKit

class Dog {
    var name: String = ""
    var age: Int = 0
    
    // 클래스에서는 생성자를 정의해야한다.
    init() {
    }
        
    // 메서드 정의
    func introduce() {
        print("name \(name) age \(age)")
    }
}

// Dog클래스의 인스턴스 생성
var dog = Dog()
dog.name = "자몽"
dog.age = 5
dog.name
dog.age

// Dog클래스 메소드 실행
dog.introduce()
