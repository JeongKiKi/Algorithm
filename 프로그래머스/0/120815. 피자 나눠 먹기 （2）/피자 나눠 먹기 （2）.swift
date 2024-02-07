import Foundation

func solution(_ n:Int) -> Int {
    var c = 1
    
    while (c * 6) % n != 0 {
        c += 1
    }
    return c
}