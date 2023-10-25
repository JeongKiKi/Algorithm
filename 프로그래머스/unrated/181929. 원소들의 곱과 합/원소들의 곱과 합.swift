import Foundation

func solution(_ num_list:[Int]) -> Int {
 let product = num_list.reduce(1, *) // 원소들의 곱
    let sum = num_list.reduce(0, +)    // 원소들의 합
    let squareOfSum = sum * sum       // 합의 제곱
    
    if product < squareOfSum {
        return 1
    } else {
        return 0
    }
}