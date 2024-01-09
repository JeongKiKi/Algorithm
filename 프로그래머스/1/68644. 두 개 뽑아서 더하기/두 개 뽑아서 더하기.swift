import Foundation

func solution(_ numbers:[Int]) -> [Int] {
    var a: [Int] = []
    for i in 0..<numbers.count-1 {
        for k in i+1..<numbers.count{
          let c = numbers[i] + numbers[k]
        a.append(c)  
        }
    }
    a.sort()
    let kkk = Set(a)
    var kr = Array(kkk)
    kr.sort()
    return kr
}