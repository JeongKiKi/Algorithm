import Foundation

func solution(_ s:String) -> [Int] {
    var mainString = s 
    var zeroCount = 0
    var transCount = 0 
    while mainString != "1" {
        var transOneCount = mainString.split(separator: "0")
        var transOne = ""

        for i in transOneCount {
            transOne.append(String(i))
        }
        zeroCount = zeroCount + mainString.count - transOne.count
        var transTwo = String(transOne.count, radix: 2)
        mainString = transTwo
        transCount = transCount + 1
    }
    return [transCount,zeroCount]
}