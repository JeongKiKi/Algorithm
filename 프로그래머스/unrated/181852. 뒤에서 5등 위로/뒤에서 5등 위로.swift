import Foundation

func solution(_ num_list:[Int]) -> [Int] {
    // numList를 정렬
    let sortedNumList = num_list.sorted()
    
    // 가장 작은 5개의 수를 제외한 수들을 오름차순으로 필터링하여 반환
    return Array(sortedNumList.dropFirst(5))
}
