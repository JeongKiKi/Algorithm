import Foundation

func solution(_ arr:[Int], _ queries:[[Int]]) -> [Int] {
    var result = arr
    for query in queries{
        var s = query[0]
        var e = query[1]
        var k = query[2]
        for i in stride(from: s, through: e, by: 1){
            if i % k == 0 {
                result[i] += 1
            }
        }
    }
    return result
}