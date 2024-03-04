import Foundation

func solution(_ myStr:String) -> [String] {
    var substrings: [String] = []
    var currentSubstring = ""
    
    for char in myStr {
        if char == "a" || char == "b" || char == "c" {
            if !currentSubstring.isEmpty {
                substrings.append(currentSubstring)
                currentSubstring = ""
            }
        } else {
            currentSubstring.append(char)
        }
    }
    
    if !currentSubstring.isEmpty {
        substrings.append(currentSubstring)
    }
    
    return substrings.isEmpty ? ["EMPTY"] : substrings
}