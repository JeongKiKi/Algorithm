import Foundation

func solution(_ a:Int, _ b:Int) -> Int {
    func gcd(_ x: Int, _ y: Int) -> Int {
        if y == 0 {
            return x
        } else {
            return gcd(y, x % y)
        }
    }
    let greatestCommonDivisor = gcd(a, b)
    let numerator = a / greatestCommonDivisor
    let denominator = b / greatestCommonDivisor
    var temp = denominator
    while temp % 2 == 0 {
        temp /= 2
    }
    while temp % 5 == 0 {
        temp /= 5
    }
    if temp == 1 {
        return 1
    } else {
        return 2
    }
}
