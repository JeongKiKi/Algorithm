func solution(_ n:Int, _ arr1:[Int], _ arr2:[Int]) -> [String] {
    var answer: [String] = []

    for i in 0..<n {
        var result = ""
        var a1 = String(arr1[i], radix: 2)
        var aa1 = String(repeating: "0", count: n - a1.count) + a1

        var a2 = String(arr2[i], radix: 2)
        var aa2 = String(repeating: "0", count: n - a2.count) + a2

        for j in 0..<n {
            let char1 = aa1[aa1.index(aa1.startIndex, offsetBy: j)]
            let char2 = aa2[aa2.index(aa2.startIndex, offsetBy: j)]
            if char1 == "0" && char2 == "0" {
                result += " "
            } else {
                result += "#"
            }
        }
        answer.append(result)
    }
    
    return answer
}