import Foundation

func solution(_ arr:[Int], _ intervals:[[Int]]) -> [Int] {
    var a = intervals.count
    var b:[Int] = []
    for i in 0..<a {
          let firstRange = intervals[i][0]...intervals[i][1]
        let firstArray = Array(arr[firstRange])
        b.append(contentsOf: firstArray)
    }
    return b
}