import Foundation

func solution(_ myString:String) -> String {
    var a = ""
    for v in myString {
        if v < "l" {
            a.append("l")
        }else{
            a.append(v)
        }
    }
    return a
}