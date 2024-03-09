import Foundation

func solution(_ my_string:String) -> Int {
   var numbers = [Int]()
    var operators = [Character]()
    let components = my_string.components(separatedBy: " ")
    for component in components {
        if let number = Int(component) {
            numbers.append(number)
        } else {
            operators.append(Character(component))
        }
    }
    var result = numbers[0]
    for i in 0..<operators.count {
        let op = operators[i]
        let num = numbers[i + 1]
        if op == "+" {
            result += num
        } else {
            result -= num
        }
    }
    return result
}