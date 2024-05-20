import Foundation

func solution(_ keyinput:[String], _ board:[Int]) -> [Int] {
    var x = 0
    var y = 0
    let max_X = (board[0] - 1) / 2 // 보드의 최대 X 좌표
    let max_Y = (board[1] - 1) / 2 // 보드의 최대 Y 좌표

    for i in 0..<keyinput.count {
        if keyinput[i] == "left" && x > -max_X {
            x -= 1
        } else if keyinput[i] == "right" && x < max_X {
            x += 1
        } else if keyinput[i] == "down" && y > -max_Y {
            y -= 1
        } else if keyinput[i] == "up" && y < max_Y {
            y += 1
        }
    }

    return [x, y]
}