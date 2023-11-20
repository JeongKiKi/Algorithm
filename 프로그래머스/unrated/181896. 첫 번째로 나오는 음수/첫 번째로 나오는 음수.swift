import Foundation

func solution(_ num_list:[Int]) -> Int {
     for (index, number) in num_list.enumerated() {
        if number < 0 {
            // 첫 번째로 나오는 음수의 인덱스를 반환
            return index
        }
    }
    
    // 음수가 없으면 -1을 반환
    return -1
}