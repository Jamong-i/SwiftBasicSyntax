/*
 프로퍼티(Properties)
 : 클래스, 구저체 또는 열거형 등에 관련된 값을 뜻한다.
 
 저장 프로퍼티
 : 인스턴스의 변수 또는 상수를 의미한다.
 
 연산 프로퍼티
 : 특정 연산을 실행하는 결과 값을 의미한다.
 
 타입 프로퍼티
 : 특정 인스턴스에서 사용되는게 아닌 특정 타입에서 사용되는 프로퍼티를 의미한다.
 */

import UIKit

struct Dog {
    // 저장 프로퍼티
    var name: String
    let gender: String
}

//구조체를 인스턴스화
var dog = Dog(name: "Jamong", gender: "Female")
print(dog)

// 구조체는 상수로 인스턴스화 시키면 프로퍼티를 변경할 수 없다.
let dog2 = Dog(name: "gunter", gender: "male")
//dog2.name = "Jamong"


class Cat {
    // 저장 프로퍼티
    var name: String
    let gender: String
    
    init(name: String, gender: String) {
        self.name = name
        self.gender = gender
    }
}

// 클래스에서는 상수로 인스턴스화 시켜도 프로퍼티를 변경할 수 있다.
let cat = Cat(name: "json", gender: "male")
cat.name = "gunter"


struct Stock {
    var averagePrice: Int
    var quantity: Int
    var purchasePrice: Int {
        // 연산 프로퍼티
        get {
            return averagePrice * quantity
        }
        
        set(newPrice) {
            averagePrice = newPrice / quantity
        }
    }
}


var stock = Stock(averagePrice: 2300, quantity: 3)
print(stock)
stock.purchasePrice
stock.purchasePrice = 3000
stock.averagePrice


/*
 프로퍼티 옵저버(Property Observer)
 3가지 상황에서 사용이 가능하다
 저장프로퍼티와 오버라이딩이 된 저장계산 프로퍼티에서만 사용가능하다.
 
 프로퍼티 옵저버는 두가지가 있다.
 값이 저장되기 직전에 호출되는 willSet 옵저버 (새로 저장될 프로퍼티 값을 상수 매개변수로 전달한다)
 값이 저장된 직후에 호출되는 didSet 옵저버 (프로퍼티 기본값이 상수 매개변수로 전달한다.)
 */

//
class Account {
    // 저장 프로퍼티
    var credit: Int = 0 {
        // 소괄호 이름 지정
        willSet{
            print("잔액이 \(credit)원에서 \(newValue)원으로 변경될 예정입니다.")
        }
        
        didSet{
            print("잔액이 \(oldValue)원에서 \(credit)원으로 변경되었습니다.")
        }
    }
}

var account = Account()
account.credit = 1000


/*
 타입 프로퍼티 : 인스턴스 생성없이 객체네 프로퍼티에 접근을 가능하게 한다.
 저장 프로퍼티와 연산프로퍼티에서 사용이 가능하다. (static 키워드 사용하여 정의한다.)
 */

struct SomeStructure{
    static var storedTypeProperty = "Some value."
    
    static var computedTypeProperty: Int {
        return 1
    }
}

// 인스턴스 생성없이 구조체에 접근 및 수정
SomeStructure.computedTypeProperty
SomeStructure.storedTypeProperty
SomeStructure.storedTypeProperty = "hello"
SomeStructure.storedTypeProperty
