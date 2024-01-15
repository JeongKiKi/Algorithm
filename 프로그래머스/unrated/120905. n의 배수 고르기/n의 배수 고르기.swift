import Foundation

func solution(_ n:Int, _ numlist:[Int]) -> [Int] {
    var a: [Int] = []
    for i in numlist {
        if i % n == 0 {
            a.append(i)
        }
    }
    return a
}