import Foundation

func solution(_ my_strings:[String], _ parts:[[Int]]) -> String {
     var result = ""

    for i in 0..<my_strings.count {
        let part = parts[i]
        let startIndex = my_strings[i].index(my_strings[i].startIndex, offsetBy: part[0])
        let endIndex = my_strings[i].index(my_strings[i].startIndex, offsetBy: part[1])
        let substring = String(my_strings[i][startIndex...endIndex])
        result += substring
    }

    return result
}

