import Foundation

func solution(_ array:[Int]) -> Int {
    var a = array.sorted()
    var b = a.count / 2
    
    return a[b]
}