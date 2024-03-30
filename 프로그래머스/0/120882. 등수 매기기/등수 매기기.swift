import Foundation

func solution(_ score:[[Int]]) -> [Int] {
    var ranks: [Int] = []
    for i in 0..<score.count {
        var rank = 1
        for j in 0..<score.count {
            if i != j {
                let sumI = score[i].reduce(0, +)
                let sumJ = score[j].reduce(0, +)
                if sumI < sumJ {
                    rank += 1
                }
            }
        }
        ranks.append(rank)
    }
    return ranks
}