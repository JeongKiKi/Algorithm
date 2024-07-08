import Foundation

func solution(_ citations:[Int]) -> Int {
  let sortedCitations = citations.sorted(by: >)  // 인용 횟수를 내림차순으로 정렬
    var hIndex = 0
    
    for i in 0..<sortedCitations.count {
        if sortedCitations[i] > i {
            hIndex = i + 1
        } else {
            break
        }
    }
    
    return hIndex
}