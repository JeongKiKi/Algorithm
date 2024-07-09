import Foundation

func solution(_ cards1:[String], _ cards2:[String], _ goal:[String]) -> String {
    var cardsOne = cards1
    var cardsTwo = cards2
    var result:[String] = []
    for i in goal {
        if  !cardsOne.isEmpty && i == cardsOne[0] {
            cardsOne.removeFirst()
            result.append(i)
        }else if  !cardsTwo.isEmpty && i == cardsTwo[0]{
            cardsTwo.removeFirst()
            result.append(i)
        }else {
            return "No"
        }
        if result == goal {
            return "Yes"
        }
    }
    return "Yes"
}