func solution(_ arr:[Int], _ divisor:Int) -> [Int] {
    var a:[Int] = []
    for i in arr {
        if i % divisor == 0 {
            a.append(i)
        }
    }
    return a == [] ? [-1] : a.sorted()
}