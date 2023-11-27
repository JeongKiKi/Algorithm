import Foundation

func solution(_ start:Int, _ end_num:Int) -> [Int] {
      var result: [Int] = []

    for i in stride(from: start, through: end_num, by: -1) {
        result.append(i)
    }

    return result
}