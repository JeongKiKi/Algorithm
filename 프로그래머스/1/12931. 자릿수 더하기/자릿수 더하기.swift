import Foundation

func solution(_ n:Int) -> Int
{
    var a = 0 
    var b = 0
    var c = n
    while c > 0 {
        a = c % 10 
        b = b + a 
       c = c / 10
    }
    return b
}