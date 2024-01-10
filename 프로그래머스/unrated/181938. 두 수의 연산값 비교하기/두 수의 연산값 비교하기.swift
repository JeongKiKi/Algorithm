import Foundation

func solution(_ a:Int, _ b:Int) -> Int {
    var k = Int(String(a) + String(b)) ?? 0
    var l = 2 * a * b
    var result = 0
    if k > l {
        result = k
    }else{
        result = l
    }
    return result
}