import Foundation

func solution(_ A:String, _ B:String) -> Int {
    guard A.count == B.count else { return -1 }
    
    // 문자열 A를 우측으로 한 칸씩 이동시키는 함수
    func rotateRight(_ str: String) -> String {
        var result = str
        let lastChar = result.removeLast()
        result.insert(lastChar, at: result.startIndex)
        return result
    }
    
    var rotatedA = A
    var rotations = 0
    
    // 문자열 A를 우측으로 회전시키며 문자열 B와 일치하는지 확인
    while rotatedA != B {
        rotatedA = rotateRight(rotatedA)
        rotations += 1
        
        // 문자열 A를 한 바퀴 회전했는데도 문자열 B와 일치하지 않으면 불가능한 경우
        if rotations >= A.count {
            return -1
        }
    }
    
    return rotations
}