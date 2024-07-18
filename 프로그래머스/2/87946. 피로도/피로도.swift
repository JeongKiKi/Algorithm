import Foundation

func permutations<T>(_ array: [T]) -> [[T]] {
    var result: [[T]] = []
    var array = array
    func permute(_ n: Int) {
        if n == 1 {
            result.append(array)
            return
        }
        for i in 0..<n {
            permute(n - 1)
            array.swapAt(i, n - 1)
        }
    }
    permute(array.count)
    return result
}

func solution(_ k: Int, _ dungeons: [[Int]]) -> Int {
    let allPermutations = permutations(dungeons)
    var maxCount = 0

    for perm in allPermutations {
        var currentFatigue = k
        var count = 0
        for dungeon in perm {
            let minFatigue = dungeon[0]
            let consumption = dungeon[1]
            if currentFatigue >= minFatigue {
                currentFatigue -= consumption
                count += 1
            } else {
                break
            }
        }
        maxCount = max(maxCount, count)
    }

    return maxCount
}