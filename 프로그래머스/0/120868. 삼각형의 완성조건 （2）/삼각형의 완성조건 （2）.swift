import Foundation

func solution(_ sides:[Int]) -> Int {
    var side = sides.sorted()
    var a = side[0]
    var b = side[1] 
    var c = a + b
    var result = 0
    for i in 1...b{
        if i + a > b {
            result += 1
        }
    }
    for k in b+1...c {
        if a + b > k{
            result += 1
        }
    }
    
    return result
}