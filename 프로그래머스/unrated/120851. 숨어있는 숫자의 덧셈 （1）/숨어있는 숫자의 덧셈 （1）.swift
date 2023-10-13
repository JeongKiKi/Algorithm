import Foundation

func solution(_ my_string:String) -> Int {
    var a = 0
    for i in my_string {
        if let b = Int(String(i)) {
            a = a + b
        }

    }
    return a
}