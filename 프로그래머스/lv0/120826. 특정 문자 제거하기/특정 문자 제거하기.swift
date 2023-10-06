import Foundation

func solution(_ my_string:String, _ letter:String) -> String {
    var k = ""
    for i in my_string {
        if String(i) != letter {
            k.append(i)
        }
    }
    return k
}