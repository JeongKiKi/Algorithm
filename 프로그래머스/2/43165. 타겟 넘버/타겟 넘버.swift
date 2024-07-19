import Foundation

func solution(_ numbers: [Int], _ target: Int) -> Int {
    return dfs(numbers, target, 0, 0)
}

func dfs(_ numbers: [Int], _ target: Int, _ index: Int, _ currentSum: Int) -> Int {
    // 모든 숫자를 다 사용했을 때 현재 합계가 타겟 넘버와 같으면 1을 반환
    if index == numbers.count {
        return currentSum == target ? 1 : 0
    }

    // 현재 숫자를 더하거나 빼는 두 가지 경우를 재귀 호출하여 계산
    let add = dfs(numbers, target, index + 1, currentSum + numbers[index])
    let subtract = dfs(numbers, target, index + 1, currentSum - numbers[index])

    // 두 경우의 합을 반환
    return add + subtract
}