import Foundation

func solution(_ array:[Int], _ n:Int) -> Int {
    var min = Int.max
    var max = Int.max
    for i in array {
        if i < n {
            var a = n - i
            min = abs(min-n) > a ? i : min
        }else if i > n{
            var k = i - n
            max = abs(max-n) > k ? i : max
        }else{
            return i
        }
    }
    var a = abs(n-min)
    var b = abs(n-max)
    return a <= b ? min : max
}