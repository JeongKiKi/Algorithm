import Foundation

func solution(_ arr:[Int], _ k:Int) -> [Int] {
    var result: [Int] = []
    var selected: Set<Int> = []
    
    for num in arr {
        if !selected.contains(num) {
            result.append(num)
            selected.insert(num)
            
            if result.count == k {
                break
            }
        }
    }
    
    while result.count < k {
        result.append(-1)
    }
    
    return result
}