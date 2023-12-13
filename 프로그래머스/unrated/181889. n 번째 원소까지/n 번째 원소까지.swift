import Foundation

func solution(_ num_list:[Int], _ n:Int) -> [Int] {
    var a:[Int] = []
    for i in 0..<n {
        a.append(num_list[i])
    }
    return a
}