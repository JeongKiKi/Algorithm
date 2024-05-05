import Foundation

func solution(_ answers:[Int]) -> [Int] {
    let patterns = [
        [1, 2, 3, 4, 5],
        [2, 1, 2, 3, 2, 4, 2, 5],
        [3, 3, 1, 1, 2, 2, 4, 4, 5, 5]
    ]
    
    var scores = [0, 0, 0]
    
    for (i, ans) in answers.enumerated() {
        for (j, pattern) in patterns.enumerated() {
            if ans == pattern[i % pattern.count] {
                scores[j] += 1
            }
        }
    }
    
    let maxScore = scores.max() ?? 0
    var result = [Int]()
    
    for (index, score) in scores.enumerated() {
        if score == maxScore {
            result.append(index + 1)
        }
    }
    
    return result
}