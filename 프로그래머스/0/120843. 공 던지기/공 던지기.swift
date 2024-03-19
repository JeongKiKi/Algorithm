import Foundation

func solution(_ numbers:[Int], _ k:Int) -> Int {
    var a = 1 
    var result = numbers
    for _ in 1...k{
        a += 2
    }
    a -= 2
    if a % numbers.count == 0 {
        var c = numbers.count - 1
        return result[c]
    }else {
        var b = (a % numbers.count) - 1
        return result[b]
    }
    return 0
}