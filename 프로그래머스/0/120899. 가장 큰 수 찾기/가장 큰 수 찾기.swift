import Foundation

func solution(_ array:[Int]) -> [Int] {
    var a = [array[0], 0]
    for i in 1..<array.count {
        if a[0] < array[i] {
            a[0] = array[i]
            a[1] = i
        }
    }
    return a
}