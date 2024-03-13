import Foundation

func solution(_ numbers:String) -> Int64 {
 let numberDict: [String: String] = [
        "zero": "0",
        "one": "1",
        "two": "2",
        "three": "3",
        "four": "4",
        "five": "5",
        "six": "6",
        "seven": "7",
        "eight": "8",
        "nine": "9"
    ]
    
    var answer = ""
    var temp = ""
    for char in numbers {
        temp.append(char)
        if let num = numberDict[temp] {
            answer.append(num)
            temp = ""
        }
    }
    
    return Int64(answer)!
}