import Foundation

func solution(_ rny_string:String) -> String {
   var result = ""

    for char in rny_string {
        if char == "m" {
            result += "rn"
        } else {
            result.append(char)
        }
    }

    return result
}
