import Foundation

func solution(_ start:Int, _ end_num:Int) -> [Int] {
    var a:[Int] = []
    for i in end_num...start {
        a.append(i)
    }
    return a.reversed()
}
