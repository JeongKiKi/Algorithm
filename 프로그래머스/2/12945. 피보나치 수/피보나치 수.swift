func solution(_ n:Int) -> Int {
 let MOD = 1234567
    var a = 1
    var b = 1

    if n == 2 {
        return 1
    } else if n == 3 {
        return 2
    }
    
    for _ in 3...n {
        let temp = (a + b) % MOD
        a = b
        b = temp
    }
    
    return b
}