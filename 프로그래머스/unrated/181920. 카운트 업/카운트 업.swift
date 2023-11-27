import Foundation

func solution(_ start_num:Int, _ end_num:Int) -> [Int] {
    var a:[Int] = []
    
    for i in start_num...end_num {
        a.append(i)
    }
    return a
}