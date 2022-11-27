
// 반복문 : 반복적으로 코드가 실행되게 만드는 명령문

import UIKit

/*
 for 루프상수 in 순회대상 {
    실행할 구문..
 }
 */

// for 문 생성
for i in 1...4{
    print(i)
}


// 배열 생성
let array = [1, 2, 3, 4, 5]

// for문 배열을 순회대상으로 생성
for i in array{
    print(i)
}


/*
 while 조건식 {
    실행할 구문
 }
 */

var number = 5

while number < 10 {
    number += 1
}


/*
 repeat - while문은 반드시 한번 실행함
 
 repeat {
    실행할 구문
 } while 조건식
 */

var a = 6

repeat {
    x += 2
} while x < 5

print(x)
