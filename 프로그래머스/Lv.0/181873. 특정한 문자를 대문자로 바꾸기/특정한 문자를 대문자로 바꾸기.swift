import Foundation

func solution(_ my_string:String, _ alp:String) -> String {
    var a = ""
    for i in my_string {
        if String(i) == alp {
            a.append(i.uppercased())
        }else {
            a.append(i)
        }
    }
    return a
}