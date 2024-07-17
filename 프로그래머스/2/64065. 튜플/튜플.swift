import Foundation

func solution(_ s:String) -> [Int] {
 // 1. 문자열에서 중괄호를 제거하고 숫자 추출
    var sets = s
        .replacingOccurrences(of: "{", with: "")
        .replacingOccurrences(of: "}", with: "")
        .components(separatedBy: ",")
    
    // 2. 각 숫자의 등장 횟수를 기록
    var frequency: [Int: Int] = [:]
    
    for number in sets {
        if let num = Int(number) {
            frequency[num, default: 0] += 1
        }
    }
    
    // 3. 등장 횟수가 많은 순서대로 배열 정렬
    let result = frequency.sorted { $0.value > $1.value }.map { $0.key }
    
    return result
}