import Foundation

func solution(_ absolutes:[Int], _ signs:[Bool]) -> Int {
    var a:[Int] = []
    for i in 0..<absolutes.count {
        if signs[i] == false {
            var b = absolutes[i]
            a.append(-b)
        }else {
            var c = absolutes[i]
            a.append(c)
        }
    }
    return a.reduce(0,+)
}