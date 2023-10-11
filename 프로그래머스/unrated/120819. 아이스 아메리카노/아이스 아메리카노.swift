import Foundation

func solution(_ money:Int) -> [Int] {
    
    var a = money / 5500
    var b = money % 5500
    return [a , b]
}