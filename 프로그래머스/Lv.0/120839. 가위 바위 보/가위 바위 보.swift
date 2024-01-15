import Foundation

func solution(_ rsp:String) -> String {
    var a = ""
    for i in rsp {
        if i == "2" {
            a.append("0")
        }else if i == "0" {
            a.append("5")
        }else if i == "5" {
            a.append("2")
        }
    }
    return a
}