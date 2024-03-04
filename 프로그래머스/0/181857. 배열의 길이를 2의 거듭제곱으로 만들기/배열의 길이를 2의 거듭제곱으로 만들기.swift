import Foundation

func solution(_ arr:[Int]) -> [Int] {
    var k = arr
    var a = 1 
    while a < k.count {
        a *= 2  
    }
    if a == k.count{
        return k
    }else{
    for i in 0..<a-k.count {
        k.append(0)
    }}
    return k
}