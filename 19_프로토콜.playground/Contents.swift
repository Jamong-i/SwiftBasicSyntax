/*
 프로토콜
 : 특정 역활을 하기 위한 메서드, 프로퍼티, 기타 요구사항 등의 청사진 정의
 : 구조체, 클래스, 열거형은 프로토콜을 채택해서 특정 기능을 실행하기 위한 요구사항을 실제로 구현할 수 있다.
 */

import Foundation

/*
 protocol 이름 {
    
 }
 */

protocol SomeProtocol {
    
}

protocol SomeProtocol2 {
    
}

struct SomeStructrue: SomeProtocol, SomeProtocol2 {
    
}


/*
 class SomeClass: SomeSuperclass, FirstProtocol, AnotherProtocol {
 
 }
 */

protocol FirstProtocol {
    // 읽기 쓰기가 가능(get set)
    var name: Int { get set }
    // 읽기만 가능(get)
    var age: Int { get }
}


protocol AnotherProtocol {
    static var someTypeProperty: Int { get set }
}

protocol FullyNames {
    var fullName: String { get set }
    func printFullName()
}

struct Person: FullyNames {
    var fullName: String
    
    func printFullName() {
        print(fullName)
    }
}

protocol SomeProtocol3 {
    func someTypeMethod()
}

protocol SomeProtocol4 {
    init(someParameter: Int)
}

protocol SomeProtocol5 {
    init()
}

// init() 때문에 required 식별자가 필요하다.
class SomeClass: SomeProtocol5 {
    required init() {
        
    }
}
