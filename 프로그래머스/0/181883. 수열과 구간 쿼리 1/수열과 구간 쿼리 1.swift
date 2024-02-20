import Foundation

func solution(_ arr:[Int], _ queries:[[Int]]) -> [Int] {
    var a = arr
    for query in queries {
        for i in query[0]...query[1]{
            a[i] += 1
        }
    }
    return a
}