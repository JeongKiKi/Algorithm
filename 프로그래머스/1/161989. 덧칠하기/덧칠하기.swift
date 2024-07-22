import Foundation

func solution(_ n:Int, _ m:Int, _ section:[Int]) -> Int {
    var count = 0
    var i = 0
    let length = section.count
    
    while i < length {
        count += 1
        let start = section[i]
        
        // 롤러로 칠할 수 있는 끝 지점
        let end = start + m - 1
        
        // 현재 구역에서 롤러로 칠할 수 있는 끝 지점까지 넘어간다
        while i < length && section[i] <= end {
            i += 1
        }
    }
    
    return count
}