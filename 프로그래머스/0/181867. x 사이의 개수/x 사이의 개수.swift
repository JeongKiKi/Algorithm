import Foundation

func solution(_ myString:String) -> [Int] {
    var a = myString.split(separator: "x", omittingEmptySubsequences: false)
    var b: [Int] = []
    for i in a {
        b.append(i.count)
    }
    return b
}