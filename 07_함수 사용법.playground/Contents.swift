/*
 함수 : 함수는 작업의 가장 작은 단위이자 코드의 집합이다.
 
 func 함수명(파라미터 이름: 데이터 타입) -> 반환타입 {
    return 반환 값
 }
 */

import UIKit

// 함수 생성
func sum(a: Int, b: Int) -> Int {
    return a + b
}

// 함수 사용
sum(a: 5, b: 3)


// 함수 생성
func hello() -> String {
    return "hello"
}

// 함수 사용
hello()


// 함수 생성 (매개변수 기본값 지정)
func greeting(friend: String, me: String = "jamong") {
    print("Hello, \(friend)! I'm \(me)")
}

// 함수 사용
greeting(friend: "Albert")



/* 함수 생성 (전달인자 매개변수이름: 매개변수타입, 전달인자 매개변수이름: 매개변수 타입) ->
        반환 타입{
    return 반환 값
 }
 */

func sendMessage(from myName: String, to name: String) ->
        String {
    return "Hello \(name)! I'm \(myName)"
}

sendMessage(from: "Jamong", to: "Albert")


/* 함수 생성 (전달인자없음 매개변수이름: 매개변수타입, 전달인자없음 매개변수이름: 매개변수 타입) ->
        반환 타입{
    return 반환 값
 }
 */

func sendMessageNoLabel(_ myName: String, _ name: String) ->
        String {
    return "Hello \(name)! I'm \(myName)"
}

sendMessageNoLabel("Jamong", "Albert")


/* 함수 생성 (매개변수이름: 매개변수타입, 매개변수이름: 매개변수 타입...(가변매개 변수)) -> 반환 타입{
    return 반환 값
 }
 */

func sendMessageB(me: String, friends: String...) -> String {
    return "Hello \(friends)! I'm \(me)"
}

sendMessageB(me: "Jamong", friends: "Json", "Albert", "stella")
