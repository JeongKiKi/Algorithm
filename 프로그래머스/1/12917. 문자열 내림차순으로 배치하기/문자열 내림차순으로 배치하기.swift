func solution(_ s:String) -> String {
    var a = s.sorted(by: >)
    return String(a)
}