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

## enumerated() 
### enumerated()는 배열 딕셔너리 등 각 요소와 해당 요소의 인덱스를 반환하는데 사용되는 메서드이다.
let array = ["apple", "banana", "orange"] <br/>

for (index, value) in array.enumerated() { <br/>
    print("Index: \(index), Value: \(value)") <br/>
} <br/>
/*  <br/>
Index: 0, Value: apple <br/>
Index: 1, Value: banana <br/>
Index: 2, Value: orange <br/>
/* <br/>

## stride() 
stride(from: 시작값, to: 끝값, by: 간격) <br/>
stride(from: 시작값, through: 끝값, by: 간격) <br/>

/*from: 순회를 시작하는 값입니다. <br/>
to 또는 through: 순회를 종료하는 값입니다. to는 종료 값이 포함되지 않고, <br/>
through는 종료 값이 포함됩니다. <br/>
by: 간격을 나타내는 값으로, 순회하는 값들 간의 차이를 의미합니다. <br/>
예를 들어, stride(from: 1, to: 10, by: 2)는 1부터 9까지 2의 간격으로 순회합니다. <br/> 
결과는 [1, 3, 5, 7, 9]가 됩니다. 반면, stride(from: 1, through: 10, by: 2)는  <br/>
1부터 10까지 2의 간격으로 순회하며, 결과는 [1, 3, 5, 7, 9]가 됩니다. <br/>

위의 설명을 바탕으로, 코드에서 stride(from: a, through: b, by: c)는  <br/>
a부터 b까지 c의 간격으로 순회하는 것을 의미합니다. <br/>
*/ <br/>
