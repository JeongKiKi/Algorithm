import Foundation

func solution(_ array:[Int], _ n:Int) -> Int {
    var k = 0
    for i in array {
        if n == i {
            k += 1 
        }
    }
    return k
}