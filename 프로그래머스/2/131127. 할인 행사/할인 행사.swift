import Foundation

func solution(_ want:[String], _ number:[Int], _ discount:[String]) -> Int {
 // 원하는 제품과 수량을 딕셔너리로 변환
    var wantDict: [String: Int] = [:]
    for (index, item) in want.enumerated() {
        wantDict[item] = number[index]
    }
    
    // 슬라이딩 윈도우 크기
    let windowSize = 10
    
    // 결과를 저장할 변수
    var result = 0
    
    // 현재 윈도우 내의 제품 수를 카운트하기 위한 딕셔너리
    var currentWindow: [String: Int] = [:]
    
    // 초기 윈도우 설정
    for i in 0..<windowSize {
        currentWindow[discount[i], default: 0] += 1
    }
    
    // 함수: 현재 윈도우가 원하는 제품 수량을 만족하는지 확인
    func matches(_ window: [String: Int], _ want: [String: Int]) -> Bool {
        for (key, value) in want {
            if window[key, default: 0] < value {
                return false
            }
        }
        return true
    }
    
    // 첫 번째 윈도우 검사
    if matches(currentWindow, wantDict) {
        result += 1
    }
    
    // 슬라이딩 윈도우로 전체 배열 검사
    for i in windowSize..<discount.count {
        // 윈도우의 첫 번째 제품을 제거
        let removeItem = discount[i - windowSize]
        currentWindow[removeItem, default: 0] -= 1
        if currentWindow[removeItem] == 0 {
            currentWindow.removeValue(forKey: removeItem)
        }
        
        // 윈도우에 새로 들어오는 제품 추가
        let addItem = discount[i]
        currentWindow[addItem, default: 0] += 1
        
        // 현재 윈도우 검사
        if matches(currentWindow, wantDict) {
            result += 1
        }
    }
    
    return result
}