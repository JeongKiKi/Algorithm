import Foundation

func solution(_ rank:[Int], _ attendance:[Bool]) -> Int {
      var candidates: [(Int, Int)] = []
    for i in 0..<rank.count {
        if attendance[i] {
            candidates.append((rank[i], i))
        }
    }
    var result = candidates.sorted(by: {$0 < $1})
  
    return 10000 * (result[0].1) + 100 * (result[1].1) + (result[2].1)
}
