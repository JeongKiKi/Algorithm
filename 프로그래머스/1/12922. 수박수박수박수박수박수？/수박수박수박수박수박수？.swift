func solution(_ n:Int) -> String {
    var a = ""
    for i in 1...n {
        i % 2 == 0 ? a.append("박") : a.append("수")
    }
    return a
}