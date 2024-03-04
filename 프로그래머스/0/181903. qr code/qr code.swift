import Foundation

func solution(_ q:Int, _ r:Int, _ code:String) -> String {
    var a = ""
    for i in 0..<code.count {
        if i % q == r {
            var b = String(code[code.index(code.startIndex, offsetBy: i)])
            a += b
        }
    }
    return a
}