import Foundation

func solution(_ array:[Int]) -> Int {
    var result = 0
    for i in array {
        var a = String(i)
        for k in a {
            if k == "7"{
                result += 1 
            }
        }
    }
    return result
}