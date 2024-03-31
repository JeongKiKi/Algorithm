import Foundation

func solution(_ dots:[[Int]]) -> Int {
    var x = 0
    var y = 0
    for i in 0..<dots.count {
        for j in 0..<dots.count {
            if i != j {
                if dots[i][0] == dots[j][0] {
                    var a = dots[i][1]
                    var b = dots[j][1]
                    x = abs(a-b)
                }
                else if dots[i][1] == dots[j][1] {
                    var c = dots[i][0]
                    var d = dots[j][0]
                    y = abs(c-d)
                }
            }
        }
    }
    return x * y
}