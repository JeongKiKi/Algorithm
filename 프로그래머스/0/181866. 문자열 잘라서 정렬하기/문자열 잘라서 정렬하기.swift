import Foundation

func solution(_ myString:String) -> [String] {
    var b = myString.split(separator: "x")
    var c = b.map{String($0)}
    return c.sorted()
}