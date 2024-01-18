import Foundation

func solution(_ arr:[Int], _ n:Int) -> [Int] {
   var result = arr
    for (index, element) in arr.enumerated() {
        if arr.count % 2 == 1 && index % 2 == 0 {
            result[index] += n
        } else if arr.count % 2 == 0 && index % 2 == 1 {
            result[index] += n
        }
    }
    return result
}