import Foundation

func solution(_ numbers:[Int]) -> Int {
    var a = numbers.sorted(by: >)
    var b = numbers.sorted()
    if a[0] * a[1] > b[0] * b[1] {
        return a[0] * a[1]
    }else {
        return b[0] * b[1]
    }
    return 0
}