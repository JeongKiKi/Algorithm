import Foundation

func solution(_ emergency:[Int]) -> [Int] {
    var a = emergency.sorted(by: >)
    var result:[Int] = []
    for i in emergency {
        for k in 0..<a.count {
            if i == a[k] {
                result.append(k+1)
            }
        }
    }
    return result
}