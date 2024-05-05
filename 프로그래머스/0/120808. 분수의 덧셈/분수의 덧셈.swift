import Foundation

func gcd(_ a: Int, _ b: Int) -> Int {
    return b == 0 ? a : gcd(b, a % b)
}

func solution(_ numer1: Int, _ denom1: Int, _ numer2: Int, _ denom2: Int) -> [Int] {
    let newNumer = numer1 * denom2 + numer2 * denom1
    let newDenom = denom1 * denom2
    let gcdValue = gcd(newNumer, newDenom)
    return [newNumer / gcdValue, newDenom / gcdValue]
}
