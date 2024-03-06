import Foundation

func solution(_ s:String) -> Int {
     let elements = s.split(separator: " ")
    var stack = [Int]()
    
    for element in elements {
        if element == "Z" {
            stack.removeLast()
        } else {
            if let num = Int(element) {
                stack.append(num)
            }
        }
    }
    
    return stack.reduce(0, +)
}
