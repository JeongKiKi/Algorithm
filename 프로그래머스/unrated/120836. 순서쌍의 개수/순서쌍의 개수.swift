import Foundation

func solution(_ n:Int) -> Int {
    var counts = 0
    for i in 1...n{
        if n % i == 0 {
            counts +=  1
        }
    }
    return counts
}