import Foundation

func solution(_ names:[String]) -> [String] {
    var a : [String] = []
    if names.count % 5 != 0 {
        var c = names.count / 5
        for i in 0...c{
            a.append(names[i*5])
        }
    } else {
        var b = names.count / 5 - 1
        for i in 0...b {
            a.append(names[i*5])
        }
    }
    return a
}