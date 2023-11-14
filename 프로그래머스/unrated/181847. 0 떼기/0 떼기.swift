import Foundation

func solution(_ n_str:String) -> String {
    var a = n_str
    while a.first == "0" {
        a.removeFirst()
    }
    return a
}