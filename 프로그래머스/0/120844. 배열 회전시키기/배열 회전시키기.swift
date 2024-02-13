import Foundation

func solution(_ numbers:[Int], _ direction:String) -> [Int] {
    var a:[Int] = numbers
    if direction == "right" {
        a.insert(a.remove(at: a.count-1), at: 0)
    }else{
        a.insert(a.remove(at: 0), at: a.count)
    }
    return a
}