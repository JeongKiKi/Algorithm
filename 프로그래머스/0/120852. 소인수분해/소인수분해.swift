import Foundation

func solution(_ n:Int) -> [Int] {
    var result:[Int] = []
    var num = n
    var divisor = 2
    while num > 1 {
        while num % divisor == 0 {
            result.append(divisor)
            num /= divisor
        }
        divisor += 1
    }
    return Array(Set(result)).sorted()
}