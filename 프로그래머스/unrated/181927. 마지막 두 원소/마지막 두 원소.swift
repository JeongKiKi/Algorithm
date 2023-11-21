import Foundation

func solution(_ num_list:[Int]) -> [Int] {
   var result = num_list
    if let lastElement = result.last, result.count >= 2 {
        let secondLastElement = result[result.count - 2]
        if lastElement > secondLastElement {
            result.append(lastElement - secondLastElement)
        } else {
            result.append(lastElement * 2)
        }
    }

    return result
}
