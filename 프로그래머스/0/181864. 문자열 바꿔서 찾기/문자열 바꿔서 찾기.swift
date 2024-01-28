import Foundation

func solution(_ myString:String, _ pat:String) -> Int {
    let transformedString = myString.replacingOccurrences(of: "A", with: "X").replacingOccurrences(of: "B", with: "A").replacingOccurrences(of: "X", with: "B")
    
    // 부분 문자열 확인
    return transformedString.contains(pat) ? 1 : 0
}