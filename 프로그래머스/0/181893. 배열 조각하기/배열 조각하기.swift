import Foundation

func solution(_ arr:[Int], _ query:[Int]) -> [Int] {
    var result = arr
    for i in 0..<query.count {
        if i % 2 == 0 {
            // 배열의 길이를 확인한 후 제거
            if query[i] + 1 < result.count {
                result.removeLast(result.count - (query[i] + 1))
            }
        } else {
            // 배열의 길이를 확인한 후 제거
            if query[i] < result.count {
                result.removeFirst(query[i])
            }
        }
    }
    
    return result
}