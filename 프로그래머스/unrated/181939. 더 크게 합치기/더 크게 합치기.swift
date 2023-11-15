import Foundation

func solution(_ a:Int, _ b:Int) -> Int {
     let result1 = Int("\(a)\(b)") ?? 0
    let result2 = Int("\(b)\(a)") ?? 0

    return max(result1, result2)
}