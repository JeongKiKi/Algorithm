import Foundation

func solution(_ spell:[String], _ dic:[String]) -> Int {
    let spellStr = spell
    
    for word in dic {
        var isMatch:[Bool] = []
        for spells in spellStr {
            if !word.contains(String(spells)) {
                isMatch.append(false)
            }else{
                 isMatch.append(true)
            }
        }
        var a:[Bool] = []
        for i in 0..<isMatch.count {
            if isMatch[i] == true {
                a.append(true)
            }
        }
        if a.count == isMatch.count {
            return 1
        }
    }
    
    // 모든 단어를 확인했는데도 spellStr을 만들 수 있는 단어가 없으면 2를 반환
    return 2
}