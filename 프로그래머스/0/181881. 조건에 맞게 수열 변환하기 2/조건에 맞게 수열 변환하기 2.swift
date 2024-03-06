import Foundation

func solution(_ arr:[Int]) -> Int {
    var a = arr
    var b:[Int] = []
    var result = 0
    while a != b {
        for i in a {
            if i >= 50 && i % 2 == 0 {
                b.append(i / 2)
            }else if i < 50 && i % 2 != 0 {
                b.append((i*2)+1)
            }
        }
        if a == b {
            return result
        }else {
            a = b
            b = []
            result += 1
        }
    }
    return result - 1
}