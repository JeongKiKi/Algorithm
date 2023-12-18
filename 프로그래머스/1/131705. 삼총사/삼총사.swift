import Foundation

func solution(_ number:[Int]) -> Int {
    var a = 0
    for i in 0..<number.count{
        for k in i+1..<number.count{
            for l in k+1..<number.count{
               if number[i]+number[k]+number[l] == 0 {
                   a += 1
               }
            }
        }
    }
    return a
}