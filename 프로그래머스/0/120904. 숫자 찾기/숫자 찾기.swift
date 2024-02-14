import Foundation

func solution(_ num:Int, _ k:Int) -> Int {
    var a = String(num)
    for i in 0..<a.count {
        var b = a[a.index(a.startIndex, offsetBy: i)]
        if String(b) == String(k) {
            return i+1
        }
    }
    return -1
}