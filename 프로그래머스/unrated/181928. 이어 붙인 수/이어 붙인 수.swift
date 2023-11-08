import Foundation

func solution(_ num_list:[Int]) -> Int {
      var oddDigits = ""
    var evenDigits = ""
    
    for num in num_list {
        if num % 2 == 0 {
            evenDigits += String(num)
        } else {
            oddDigits += String(num)
        }
    }
    
    let oddSum = Int(oddDigits) ?? 0
    let evenSum = Int(evenDigits) ?? 0
    var a = oddSum + evenSum
    return a
}