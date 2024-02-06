import Foundation

func solution(_ my_string:String) -> [String] {
    var suffixes = [String]()

    for i in 0..<my_string.count {
        let startIndex = my_string.index(my_string.startIndex, offsetBy: i)
        let suffix = String(my_string[startIndex...])
        suffixes.append(suffix)
    }

    return suffixes.sorted()
}