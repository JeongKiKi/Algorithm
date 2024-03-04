import Foundation

func solution(_ s:String) -> String {
    var charCount: [Character: Int] = [:]
    for char in s {
        charCount[char, default: 0] += 1
    }
    var result: [Character] = []
    for (char, count) in charCount {
        if count == 1 {
            result.append(char)
        }
    }
    return String(result.sorted())
}