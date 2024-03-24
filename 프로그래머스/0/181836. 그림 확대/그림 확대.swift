import Foundation

func solution(_ picture:[String], _ k:Int) -> [String] {
     var result = [String]()
    
    // 픽셀을 k배 확대하여 결과 배열에 추가
    for row in picture {
        let newRow = row.reduce("") { $0 + String(repeating: $1, count: k) }
        for _ in 0..<k {
            result.append(newRow)
        }
    }
    
    return result
}