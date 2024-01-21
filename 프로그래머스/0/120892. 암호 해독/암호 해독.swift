import Foundation

func solution(_ cipher:String, _ code:Int) -> String {
    var a = ""
    for i in 0..<cipher.count {
        if (i+1) % code == 0 {
            var k = cipher.index(cipher.startIndex, offsetBy: i)
            var l = String(cipher[k])
            a = a + l
        }
    }
    return a
}