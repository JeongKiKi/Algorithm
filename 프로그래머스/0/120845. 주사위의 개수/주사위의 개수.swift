import Foundation

func solution(_ box:[Int], _ n:Int) -> Int {
    var a = box[0] / n
    var b = box[1] / n
    var c = box[2] / n
    var k = a * b * c
    return (box[0] / n) * (box[1] / n) * (box[2] / n)
}