import Foundation

func solution(_ arr:[Int]) -> [Int] {
var stack = [Int]() 
    var i = 0  
    while i < arr.count {
        if stack.isEmpty {
            stack.append(arr[i])
            i += 1
        } else if let last = stack.last, last < arr[i] {
            stack.append(arr[i])
            i += 1
        } else if let last = stack.last, last >= arr[i] {
            stack.removeLast()
        }
    }
    return stack
}