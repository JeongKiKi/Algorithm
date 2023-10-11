import Foundation

func solution(_ my_string:String) -> String {
    var newst = ""
    
    for i in my_string {
        if i != "a" &&  i != "e" && i != "i" && i != "o" &&  i != "u" {
            newst.append(i)
        }
    }
    return newst
}