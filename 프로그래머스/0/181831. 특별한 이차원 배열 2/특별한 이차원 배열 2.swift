import Foundation

func solution(_ arr:[[Int]]) -> Int {
    var a = arr.count
    var b = arr[0].count
    var c:[[Int]] = []
    for i in 0..<a {
        for j in 0..<b{
            if arr[i][j] != arr[j][i] {
                return 0
            }
        }
    }
    return 1
}