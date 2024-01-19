import Foundation

func solution(_ arr:[Int]) -> [Int] {
    var a: [Int] = []
    for i in arr {
        for k in 0..<i {
            a.append(i)
        }
    }
    return a
}