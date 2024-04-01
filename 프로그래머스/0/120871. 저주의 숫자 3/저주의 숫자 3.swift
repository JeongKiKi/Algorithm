import Foundation

func solution(_ n:Int) -> Int {
    var b = 0 
    for i in 1...n {
        b += 1
         while b % 3 == 0 || String(b).contains("3") {
                b += 1
            }
    }
    return b
}