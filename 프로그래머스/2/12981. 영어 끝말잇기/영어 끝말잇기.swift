import Foundation

func solution(_ n:Int, _ words:[String]) -> [Int] {
     var usedWords = Set<String>()  // 사용한 단어를 추적하기 위한 집합
    var lastChar: Character?       // 이전 단어의 마지막 글자를 추적
    
    for (index, word) in words.enumerated() {
        // 현재 차례의 사람 번호와 차례 계산
        let person = (index % n) + 1
        let turn = (index / n) + 1
        
        // 첫 단어는 예외적으로 처리
        if index == 0 {
            usedWords.insert(word)
            lastChar = word.last
            continue
        }
        
        // 규칙 위반 확인: 중복 단어 사용 또는 끝말잇기 실패
        if usedWords.contains(word) || (lastChar != word.first) {
            return [person, turn]
        }
        
        // 단어를 사용했다고 기록하고, 마지막 글자 갱신
        usedWords.insert(word)
        lastChar = word.last
    }
    
    // 탈락자가 없으면 [0, 0]을 반환
    return [0, 0]
}
