import Foundation

func solution(_ my_string:String) -> String {
     var result = ""
    
    for char in my_string {
        if char.isLowercase {
            result += char.uppercased()
        } else {
            result += char.lowercased()
        }
    }
    
    return result
}