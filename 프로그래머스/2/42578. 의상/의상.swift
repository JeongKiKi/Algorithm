import Foundation

func solution(_ clothes:[[String]]) -> Int {
  // 의상 종류별로 개수를 세기 위한 딕셔너리
    var clothesDict = [String: Int]()
    
    // 각 의상의 종류별로 개수 세기
    for cloth in clothes {
        let type = cloth[1]
        clothesDict[type, default: 0] += 1
    }
    
    // 조합의 수 계산
    var combinations = 1
    for (_, count) in clothesDict {
        // 각 종류별로 의상을 입지 않는 경우도 고려하여 (count + 1)
        combinations *= (count + 1)
    }
    
    // 최소 한 개의 의상은 입어야 하므로 아무것도 입지 않는 경우를 제외
    return combinations - 1
}