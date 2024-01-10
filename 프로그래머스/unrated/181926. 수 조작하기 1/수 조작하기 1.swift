import Foundation

func solution(_ n:Int, _ control:String) -> Int {
    var c = n
    for i in control{
        if i == "w" {
            c += 1
        }else if i == "s" {
            c -= 1 
        }else if i == "d" {
            c += 10
        }else if i == "a" {
            c -= 10
        }
    }
    return c
}