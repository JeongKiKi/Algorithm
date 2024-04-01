import Foundation

func solution(_ arr:[[Int]]) -> [[Int]] {
    var result:[[Int]] = arr
    var x = arr.count
    var y = arr[0].count
    var z = abs(x-y) 
    if x > y {
        for i in 0..<x {
            for k in 0..<z {
                result[i].append(0)
            }
        }
    }else if x < y {
        var q = x
        for j in 0..<z {
            result.append([])
            for l in 0..<y{
                result[q].append(0)
            }
            q += 1
        }
    }else {
        return result
    }
    return result
}