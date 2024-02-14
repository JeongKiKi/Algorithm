import Foundation

func solution(_ a:Int, _ d:Int, _ included:[Bool]) -> Int {
    var aint:[Int] = [a]
    var q = 0
    var aa = a
    for i in 1..<included.count {
        aa += d
        aint.append(aa)
    }
    for k in 0..<included.count {
        if included[k] == true {
            q += aint[k]
        }
    }
    return q
}