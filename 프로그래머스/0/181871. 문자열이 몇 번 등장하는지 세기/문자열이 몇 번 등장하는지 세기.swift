import Foundation

func solution(_ myString:String, _ pat:String) -> Int {
   var count = 0
    let patLength = pat.count
    for i in 0...(myString.count - patLength) {
        let startIndex = myString.index(myString.startIndex, offsetBy: i)
        let endIndex = myString.index(startIndex, offsetBy: patLength)
        if myString[startIndex..<endIndex] == pat {
            count += 1
        }
    }
    return count
}
