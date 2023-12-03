func solution(_ n:Int64) -> Int64 {
    var a = 0
    for i in 1...n {
        if n == i * i {
            return (i+1)*(i+1)
        }
    }
    return -1
}