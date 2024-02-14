import Foundation

func solution(_ n:Int) -> Int {
    var result = 0
    for i in 1...n {
        var a:Int = 0
        for k in 1...i {
            if i % k == 0 {
                a += 1 
            }
        }
        if a >= 3 {
            result += 1
        }
    }
    return result
}