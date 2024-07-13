import Foundation

func solution(_ arr1:[[Int]], _ arr2:[[Int]]) -> [[Int]] {
     let rowsA = arr1.count
    let colsA = arr1[0].count
    let colsB = arr2[0].count
    
    // 결과 행렬 초기화
    var result = Array(repeating: Array(repeating: 0, count: colsB), count: rowsA)
    
    for i in 0..<rowsA {
        for j in 0..<colsB {
            for k in 0..<colsA {
                result[i][j] += arr1[i][k] * arr2[k][j]
            }
        }
    }
    
    return result
}