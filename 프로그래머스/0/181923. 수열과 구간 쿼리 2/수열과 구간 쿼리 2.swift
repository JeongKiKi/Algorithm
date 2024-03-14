import Foundation

func solution(_ arr:[Int], _ queries:[[Int]]) -> [Int] {
     var result: [Int] = []
    
    for query in queries {
        let subArray = Array(arr[query[0]...query[1]]).sorted()
        var found = false
        for num in subArray {
            if num > query[2] {
                result.append(num)
                found = true
                break
            }
        }
        if !found {
            result.append(-1)
        }
    }
    
    return result
}