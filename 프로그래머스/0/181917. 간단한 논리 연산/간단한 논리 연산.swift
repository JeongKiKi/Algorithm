import Foundation

func solution(_ x1:Bool, _ x2:Bool, _ x3:Bool, _ x4:Bool) -> Bool {
    var a = x1 || x2 ? true : false
    var b = x3 || x4 ? true : false
    var result = a && b ? true : false
    
    
    return result
}