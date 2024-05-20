import Foundation

func solution(_ polynomial:String) -> String {
    let terms = polynomial.components(separatedBy: " + ")
    var constants:[Int] = []
    var variables:[Int] = []
    var one = 0
    var two = 0
    for i in terms {
        if i.contains("x") {
            if i.count == 1 {
                variables.append(1)
            }else{
            var x = i.dropLast()
            guard let xInt = Int(x) else {return ""}
            variables.append(xInt)
            }
        }else{
            guard let constant = Int(i) else {return ""}
            constants.append(constant)
        }
    }
    for i in variables {
        one += i
    }
    for i in constants {
        two += i
    }
    if one != 0 && two != 0 {
        if one == 1 {
            return "x + \(two)"
        }
        return "\(one)x + \(two)"
    }else if one != 0 && two == 0 {
          if one == 1 {
            return "x"
        }
        return "\(one)x"
    }else {
        if two == 1 {
            return "1"
        }
        return "\(two)"
    }
    return ""
}