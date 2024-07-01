func solution(_ n:Int) -> Int {
    // n이 1일 경우 방법의 수는 1
    if n == 1 {
        return 1
    }
    
    // n이 2일 경우 방법의 수는 2
    if n == 2 {
        return 2
    }

    let MOD = 1234567
    var dp = [Int](repeating: 0, count: n + 1)
    
    // 초기 값 설정
    dp[1] = 1
    dp[2] = 2
    
    // 동적 프로그래밍을 사용하여 결과 계산
    for i in 3...n {
        dp[i] = (dp[i - 1] + dp[i - 2]) % MOD
    }
    
    return dp[n]
}