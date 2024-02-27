import Foundation

func solution(_ num_list:[Int], _ n:Int) -> [[Int]] {
    var result: [[Int]] = []
    var index = 0
    
    while index < num_list.count {
        let endIndex = min(index + n, num_list.count)
        result.append(Array(num_list[index..<endIndex]))
        index += n
    }
    
    return result
}
