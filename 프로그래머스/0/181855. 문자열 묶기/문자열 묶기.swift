import Foundation

func solution(_ strArr:[String]) -> Int {
     var lengthGroups: [Int: [String]] = [:]
    for string in strArr {
        let length = string.count
        if lengthGroups[length] == nil {
            lengthGroups[length] = []
        }
        lengthGroups[length]?.append(string)
    }
    let maxGroupSize = lengthGroups.values.map { $0.count }.max() ?? 0
    return maxGroupSize
}
