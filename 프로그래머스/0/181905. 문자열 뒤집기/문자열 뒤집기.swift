import Foundation

func solution(_ my_string:String, _ s:Int, _ e:Int) -> String {
    var b = my_string
    var a = ""
    for i in 0..<s {
        a += String(b[b.index(b.startIndex, offsetBy: i)])
    }
    var startIndex = b.index(b.startIndex, offsetBy: s)
    var endIndex = b.index(b.startIndex, offsetBy: e+1)
    var range = startIndex..<endIndex
    a += String(b.substring(with: range).reversed())
    for q in e+1..<b.count {
        a += String(b[b.index(b.startIndex, offsetBy: q)])
    }
    return a
}