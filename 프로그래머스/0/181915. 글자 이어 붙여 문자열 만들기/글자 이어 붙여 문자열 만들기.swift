import Foundation

func solution(_ my_string:String, _ index_list:[Int]) -> String {
    var a = ""
    for i in index_list {
        var k = my_string.index(my_string.startIndex, offsetBy: i)
        var l = String(my_string[k])
        a.append(l)
    }
    return a
}