import Foundation

func solution(_ my_string:String, _ k:Int) -> String {
    var a = ""
    for i in 1...k {
        a.append(my_string)
    }
    return a
}