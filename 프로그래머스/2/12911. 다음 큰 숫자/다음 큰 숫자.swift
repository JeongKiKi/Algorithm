import Foundation

func solution(_ n:Int) -> Int
{
    var answer:Int = n + 1
    var nBinary = String(n, radix: 2)
    var nCount = nBinary.filter { $0 == "1" }
    
    while true  {
        var answerBinary = String(answer, radix: 2)
        var answerCount = answerBinary.filter { $0 == "1" }
        if nCount.count == answerCount.count {
            break
        }
        answer += 1
    }
    return answer
}