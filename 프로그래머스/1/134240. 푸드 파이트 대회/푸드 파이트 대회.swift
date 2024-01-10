import Foundation

func solution(_ food:[Int]) -> String {
    var tables = ""
    for i in 0..<food.count {
        if food[i] / 2 != 0 {
            var v = food[i] / 2
            for k in 0..<v {
                tables += String(i)
            }
        }
    }
    var tablesTwo = tables.reversed()
    var finals = tables + "0" + tablesTwo
    return finals
}