import Foundation

func solution(_ str_list:[String]) -> [String] {
    for i in 0..<str_list.count {
        if str_list[i] == "l" {
            return Array(str_list[0..<i])
        }else if str_list[i] == "r"{
            var a = i + 1
            return Array(str_list[a...])
        }
    }
    // if !str_list.contains("l") || !str_list.contains("r"){
    //     return []
    // }
    return []
}