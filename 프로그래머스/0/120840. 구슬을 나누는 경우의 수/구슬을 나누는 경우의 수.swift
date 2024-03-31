import Foundation

func solution(_ balls:Int, _ share:Int) -> Int {
   if balls <= share || balls == 1 {
        return 1
    }

    // 2차원 배열 dp를 생성합니다. 초기값은 0으로 설정합니다.
    var dp = Array(repeating: Array(repeating: 0, count: share + 1), count: balls + 1)

    // dp 배열을 채웁니다.
    for i in 0...balls {
        for j in 0...min(i, share) {
            if j == 0 || j == i {
                // 경계 조건: j가 0이거나 j가 i인 경우에는 경우의 수가 1입니다.
                dp[i][j] = 1
            } else {
                // 점화식을 사용하여 경우의 수를 구합니다.
                dp[i][j] = dp[i-1][j] + dp[i-1][j-1]
            }
        }
    }

    // dp[balls][share]를 반환합니다.
    return dp[balls][share]
}