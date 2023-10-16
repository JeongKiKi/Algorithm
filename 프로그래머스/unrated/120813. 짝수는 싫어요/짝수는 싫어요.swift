import Foundation

func solution(_ n:Int) -> [Int] {
    var a: [Int] = [] 
    for i in 1...n {
        if i % 2 != 0 {
            a.append(i)
        }
    }
    return a
}