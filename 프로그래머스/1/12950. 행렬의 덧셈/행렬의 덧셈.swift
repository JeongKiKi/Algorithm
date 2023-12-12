func solution(_ arr1:[[Int]], _ arr2:[[Int]]) -> [[Int]] {
    var a: [[Int]] = arr1
    for i in 0..<arr1.count{
        for k in 0..<arr1[i].count{
            a[i][k] = arr1[i][k] + arr2[i][k]
        }
    }
    return a
}