import Foundation

func solution(_ k:Int, _ tangerine:[Int]) -> Int {
    var sizeCount: [Int: Int] = [:]
    
    // 귤의 크기별 개수를 센다
    for size in tangerine {
        sizeCount[size, default: 0] += 1
    }
    
    // 개수를 내림차순으로 정렬
    let sortedSizes = sizeCount.values.sorted(by: >)
    
    var count = 0
    var selectedTypes = 0
    
    // 많은 개수부터 선택하여 k개를 채운다
    for num in sortedSizes {
        count += num
        selectedTypes += 1
        if count >= k {
            break
        }
    }
    
    return selectedTypes
}