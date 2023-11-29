func solution(_ a:Int, _ b:Int) -> Int {
     let start = min(a, b)
    let end = max(a, b)
    
    // start부터 end까지의 모든 정수를 더함
    let sum = (start...end).reduce(0, +)
    
    return sum
}