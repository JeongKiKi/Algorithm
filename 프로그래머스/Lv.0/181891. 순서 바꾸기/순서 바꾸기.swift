import Foundation

func solution(_ num_list:[Int], _ n:Int) -> [Int] {
    let endIndex = num_list.index(num_list.startIndex, offsetBy: n)
    let firstPart = Array(num_list[endIndex...])
    let secondPart = Array(num_list[..<endIndex])
    
    return firstPart + secondPart
}