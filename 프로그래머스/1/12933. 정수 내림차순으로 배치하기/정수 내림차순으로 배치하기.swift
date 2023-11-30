func solution(_ n:Int64) -> Int64 {
       let digits = String(n).compactMap { Int(String($0)) }
    
    // 각 자릿수를 큰 순서로 정렬
    let sortedDigits = digits.sorted(by: >)
    
    // 정렬된 자릿수를 다시 정수로 변환
    let sortedNumber = Int64(sortedDigits.map { String($0) }.joined()) ?? 0
    
    return sortedNumber
}