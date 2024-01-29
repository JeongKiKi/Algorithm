import Foundation

func solution(_ arr:[Int], _ delete_list:[Int]) -> [Int] {
    var a = arr 
    for i in delete_list {
        a = a.filter{ $0 != i}
    }
    return a
}