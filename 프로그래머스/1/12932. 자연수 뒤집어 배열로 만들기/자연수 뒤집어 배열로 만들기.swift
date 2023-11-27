func solution(_ n:Int64) -> [Int] {
    var result: [Int] = []
    var num = n
    
    while num > 0 {
        let digit = Int(num % 10)
        result.append(digit)
        num = num / 10
    }
    
    return result
}
