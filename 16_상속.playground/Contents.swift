/*
 상속 : 클래스가 다른 클래스로 부터 메소드, 프로퍼티 또는 다른 속성을 상속받는 것을 말한다.
 한클래스가 다른 클래스를 상속할 때 상속받는 클래스를 자식클래스(SubClass), 상속하는 클래스를 부모클래스(SuperClass)
 */

import Foundation

class Vehicle {
    // final을 붙이면 프로퍼티값을 변경 할 수 없다. (재정의 할 수 없다.)
    // final var currentSpeed = 0.0
    var currentSpeed = 0.0
    var description: String {
        return "traveling at \(currentSpeed) miles per hour"
    }
    func makeNoise() {
        print("Speaker on")
    }
}

/*
 class 클래스 이름: 부모클래스 이름 {
    // 하위 클래스 정의
 }
 */

class Bicycle: Vehicle {
    var hasBasket = false
}

var bicycle = Bicycle()
bicycle.currentSpeed
bicycle.currentSpeed = 15.0
bicycle.currentSpeed


/*
 오버라이딩 : 서브클래스는 슈퍼클래스에서 정의된 메소드, 프로퍼티, 서브 스크립트 등을 그대로 사용하지 않고 자신만의 기능으로 변경하여 사용할 수 있다.
 */

// Vehicle의 makeNoise 메소드를 오버라이딩 (기능 재정의)
class Train: Vehicle {
    override func makeNoise() {
        // 슈퍼클래스에 정의된 makeNoise를 먼저 실행 (super를 붙여야함)
        super.makeNoise()
        print("Choo Choo")
    }
}

let train = Train()
train.makeNoise()


class Car: Vehicle {
    var gear = 1
    
    // Vehicle의 description 메소드를 오버라이딩 하고 기존 메소드 정의에 추가 작성
    override var description: String {
        return super.description + "in gear \(gear)"
    }
}

let car = Car()
car.currentSpeed = 30.0
car.gear = 2
print(car.description)

// 오버라이딩 변수 gear를 didSet (프로퍼티 재정의)
class AutomatiCar: Car {
    override var currentSpeed: Double {
        didSet {
           gear = Int(currentSpeed / 10) + 1
        }
    }
}

let automatic = AutomatiCar()
automatic.currentSpeed = 35.0
print("AutomatiCar: \(automatic.description)")
