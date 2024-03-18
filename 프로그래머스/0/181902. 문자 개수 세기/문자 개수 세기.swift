import Foundation

func solution(_ my_string:String) -> [Int] {
      var counts = Array(repeating: 0, count: 52)
    
    for char in my_string {
        let asciiValue = Int(char.asciiValue!)
        var index = 0
        if asciiValue >= 65 && asciiValue <= 90 { // 대문자
            index = asciiValue - 65
        } else if asciiValue >= 97 && asciiValue <= 122 { // 소문자
            index = asciiValue - 71
        }
        counts[index] += 1
    }
    
    return counts
}