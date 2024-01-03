import Foundation

func solution(_ t:String, _ p:String) -> Int {
    let tLength = t.count
    let pLength = p.count
    
    var count = 0
    
    for i in 0...(tLength - pLength) {
        let startIndex = t.index(t.startIndex, offsetBy: i)
        let endIndex = t.index(startIndex, offsetBy: pLength)
        let substring = t[startIndex..<endIndex]
        
        if let substringNumber = Int(substring), let pNumber = Int(p), substringNumber <= pNumber {
            count += 1
        }
    }
    
    return count
}