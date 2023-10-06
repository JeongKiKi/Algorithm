import Foundation

func solution(_ num_list:[Int]) -> [Int] {
    var a = 0
    var b = 0 
    for i in num_list {
        if i % 2 == 0 {
            b = b + 1
        }else {
            a = a + 1
        }
    }
    return [b,a]
}