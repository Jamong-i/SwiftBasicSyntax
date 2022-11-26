/*
 컬렉션 타입 : 데이터들의 집합 묶음
 
 Array
 : 데이터 타입의 값들을 순서대로 지정하는 리스트
 
 Dictionary
 : 순서없이 키(Key)와 값(Value) 한 쌍으로 데이터를 저장하는 컬렉션 타입
 
 Set
 : 같은 데이터 타입의 값을 순서없이 저장하는 리스트(중복 값 없이 저장됨)
 */

import UIKit

// Int 배열 생성(선언 방법 1)
var numbers: Array<Int> = Array<Int>()

// 배열 추가하기
numbers.append(1)
numbers.append(2)
numbers.append(3)

// 배열 인덱스 값 확인
numbers[0]
numbers[1]

// 배열 특정 인덱스에 값 추가하기 (2번째에 4를 넣기)
numbers.insert(4, at: 2)

// 배열 특정 인덱스의 값 삭제하기 (0번째 인덱스값 삭제)
numbers.remove(at: 0)

// String 배열 생성(선언 방법 2 축약)
var names: [String] = []


// 딕셔너리 생성 (방법 1) <Key, Value>
var dic: Dictionary<String, Int> = Dictionary<String, Int>()
// 딕셔너리 생성 (방법 2 축약)
var dic2: [String: Int] = ["김상민": 1]

// 딕셔너리 값 추가
dic["허서우"] = 3
dic["김상민"] = 5

// 딕셔너리 값 바꾸기
dic["허서우"] = 4

// 딕셔너리 키값 제거
dic.removeValue(forKey: "허서우")


// Set 생성
var set: Set = Set<Int>()

// Set 값 입력(중복 값은 무시)
set.insert(10)
set.insert(20)
set.insert(30)
set.insert(30)
set.insert(30)

// Set 값 제거하기
set.remove(20)
