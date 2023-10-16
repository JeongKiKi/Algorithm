import Foundation

func solution(_ n:Int, _ t:Int) -> Int {
    var a = n
 for i in 1...t {
     a = a * 2 
 }
    return a
}