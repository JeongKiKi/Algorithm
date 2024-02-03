import Foundation

func solution(_ binomial:String) -> Int {
       let components = binomial.components(separatedBy: " ")
    guard components.count == 3,
          let a = Int(components[0]),
          let b = Int(components[2]) else {
        return 0
    }
    
    let op = components[1]
    switch op {
    case "+":
        return a + b
    case "-":
        return a - b
    case "*":
        return a * b
    default:
        return 0  
    }
}