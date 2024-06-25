import Foundation

func solution(_ brown:Int, _ yellow:Int) -> [Int] {
    var yellowX = 0
    var yellowY = 0
    var resultX = 0
    var resultY = 0
    for i in 1...yellow {
        if yellow % i == 0 {
            yellowX = i 
            yellowY = yellow / i 
            if brown == yellowX*2 + yellowY*2 + 4 {
                resultX = yellowX + 2 
                resultY = yellowY + 2 
            }
        }
    }
    if resultX > resultY {
        return [resultX,resultY]
    }else {
        return [resultY,resultX]
    }
    return []
}