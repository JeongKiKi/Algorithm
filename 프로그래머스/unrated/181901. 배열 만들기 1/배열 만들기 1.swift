import Foundation

func solution(_ n:Int, _ k:Int) -> [Int] {
    var a = n / k 
    var b: [Int] = []
    for i in 1...a {
        b.append(k*i)
    }
    return b
}