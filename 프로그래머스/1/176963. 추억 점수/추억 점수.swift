import Foundation

func solution(_ name:[String], _ yearning:[Int], _ photo:[[String]]) -> [Int] {
 var result = [Int]()
    
    for p in photo {
        var totalScore = 0
        for person in p {
            if let index = name.firstIndex(of: person) {
                totalScore += yearning[index]
            }
        }
        result.append(totalScore)
    }
    
    return result
}