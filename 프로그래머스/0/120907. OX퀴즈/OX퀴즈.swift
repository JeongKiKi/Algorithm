import Foundation

func solution(_ quiz:[String]) -> [String] {
       var answer: [String] = []
    
    for equation in quiz {
        let components = equation.components(separatedBy: " ")
        let x = Int(components[0])!
        let operatorSymbol = components[1]
        let y = Int(components[2])!
        let z = Int(components[4])!
        
        if operatorSymbol == "+" {
            if x + y == z {
                answer.append("O")
            } else {
                answer.append("X")
            }
        } else if operatorSymbol == "-" {
            if x - y == z {
                answer.append("O")
            } else {
                answer.append("X")
            }
        }
    }
    
    return answer
}
