# Algorithm
Algorithm


## String 타입의 인덱스 찾기
var a = "abcde" <br/>
var b = a[a.index(a.startIndex, offsetBy: 1)] <br/>
print(b) // 값 : b <br/>
print(type(of: b)) // 값 : Character <br/>


## String 타입 지정하여 잘라내기

let str = "Hello, World!" <br/>
let startIndex = str.index(str.startIndex, offsetBy: 7) // 문자열의 7번째 인덱스 <br/>
let endIndex = str.index(str.endIndex, offsetBy: -1) // 문자열의 마지막 인덱스 <br/>
let range = startIndex..<endIndex<br/>
let substring = str.substring(with: range) // "World" <br/>
