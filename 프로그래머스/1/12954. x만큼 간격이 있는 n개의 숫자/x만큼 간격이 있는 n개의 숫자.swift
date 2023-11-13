func solution(_ x:Int, _ n:Int) -> [Int] {
    var a: [Int] = []
    for i in 1...n {
        a.append(i*x)
    }
    return a
}