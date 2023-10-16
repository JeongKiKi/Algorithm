import Foundation

func solution(_ array:[Int], _ height:Int) -> Int {
    var a = 0
    for i in array {
        if i > height {
            a += 1
        }
    }
    return a
}