import Foundation

func isPrime(_ num: Int) -> Bool {
if num <= 1 {
        return false
    }
    for i in 2..<num {
        if num % i == 0 {
            return false
        }
    }
    return true
}

func solution(_ nums: [Int]) -> Int {
    var count = 0
    let n = nums.count

    for i in 0..<n {
        for j in (i + 1)..<n {
            for k in (j + 1)..<n {
                let sum = nums[i] + nums[j] + nums[k]
                if isPrime(sum) {
                    count += 1
                }
            }
        }
    }

    return count
}
