import Foundation

func solution(_ s:String) -> [Int] {
    var result = [Int](repeating: -1, count: s.count)
    var charIndexDict = [Character: Int]()
    
    for (index, char) in s.enumerated() {
        if let prevIndex = charIndexDict[char] {
            result[index] = index - prevIndex
        }
        charIndexDict[char] = index
    }
    
    return result
}
