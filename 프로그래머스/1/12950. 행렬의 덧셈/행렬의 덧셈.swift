func solution(_ arr1:[[Int]], _ arr2:[[Int]]) -> [[Int]] {
    // 행렬의 행과 열의 크기 확인
    let rows = arr1.count
    let cols = arr1[0].count
    
    // 결과를 저장할 빈 행렬 생성
    var result: [[Int]] = Array(repeating: Array(repeating: 0, count: cols), count: rows)
    
    // 행렬 덧셈 수행
    for i in 0..<rows {
        for j in 0..<cols {
            result[i][j] = arr1[i][j] + arr2[i][j]
        }
    }

    return result
}