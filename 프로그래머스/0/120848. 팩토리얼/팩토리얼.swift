import Foundation

func solution(_ n:Int) -> Int {
    var a = n
    var b = 1
    var c = 1
    while b <= a {
        c += 1
        b = b * c
    }
    return c - 1
}