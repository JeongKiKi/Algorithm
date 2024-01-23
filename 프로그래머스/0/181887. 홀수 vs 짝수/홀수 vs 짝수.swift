import Foundation

func solution(_ num_list:[Int]) -> Int {
    var a = 0 
    var b = 0
    for i in 0..<num_list.count {
        if i % 2 == 0 {
            a += num_list[i]
        }else {
            b += num_list[i]
        }
    }
    if a > b {
        return a
    }else {
        return b
    }
    return 0
}