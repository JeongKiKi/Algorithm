import Foundation

func solution(_ numLog:[Int]) -> String {
    var a = ""
    for i in 1..<numLog.count {
        if numLog[i] - numLog[i-1] == 1 {
            a += "w"
        }else if numLog[i] - numLog[i-1] == -1 {
            a += "s"
        }else if numLog[i] - numLog[i-1] == 10 {
            a += "d"
        }else if numLog[i] - numLog[i-1] == -10 {
            a += "a"
        }
    }
    return a
}