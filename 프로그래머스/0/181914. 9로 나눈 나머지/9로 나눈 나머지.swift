import Foundation

func solution(_ number:String) -> Int {
    var a = number.map{Int(String($0)) ?? 0}.reduce(0, +)
    return a % 9
}