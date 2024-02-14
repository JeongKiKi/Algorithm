import Foundation

func solution(_ my_string:String) -> String {
    var a = my_string.lowercased()
    var b = a.sorted()
    var c = ""
    for i in b {
        c += String(i)
    }
    return c
}