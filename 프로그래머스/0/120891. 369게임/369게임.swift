import Foundation

func solution(_ order:Int) -> Int {
    var a = String(order)
    var b = 0
    for i in a {
        guard let k = Int(String(i)) else {return 0}
        if k == 3 || k == 6 || k == 9 {
            b += 1
        }
    }
    return b
}