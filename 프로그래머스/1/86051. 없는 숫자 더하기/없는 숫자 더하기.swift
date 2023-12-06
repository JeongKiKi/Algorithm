import Foundation

func solution(_ numbers:[Int]) -> Int {
    let allDigits: Set<Int> = Set(0...9)

    let uniqueDigits = Set(numbers)
    
    let missingDigitsSum = allDigits.subtracting(uniqueDigits).reduce(0, +)
    
    return missingDigitsSum
}