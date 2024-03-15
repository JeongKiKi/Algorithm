import Foundation

func solution(_ a:String, _ b:String) -> String {
  let maxLen = max(a.count, b.count)
    let aChars = Array(a.reversed())
    let bChars = Array(b.reversed())
    var carry = 0
    var result = ""

    for i in 0..<maxLen {
        let digitA = i < aChars.count ? Int(String(aChars[i]))! : 0
        let digitB = i < bChars.count ? Int(String(bChars[i]))! : 0
        let sum = digitA + digitB + carry
        result.append(String(sum % 10))
        carry = sum / 10
    }

    if carry > 0 {
        result.append(String(carry))
    }

    return String(result.reversed())
}