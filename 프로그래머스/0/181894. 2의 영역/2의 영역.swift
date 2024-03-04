import Foundation

func solution(_ arr:[Int]) -> [Int] {
    var a:[Int] = []
    var result = arr
    for i in 0..<arr.count{
        if arr[i] == 2 {
            a.append(i)
        }
    }
    if a.count == 0 {
        return [-1]
    }else if a.count == 1 {
        return [2]
    }
    var start = Int(a.first ?? 0)
    var last = Int(a.last ?? 0)
    guard start < last else {return [0]}
    return Array(result[start...last])
}