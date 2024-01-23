import Foundation

func solution(_ n:Int) -> [Int] {
    var a:[Int] = [n]
    var c = n
    while c > 1 {
        if c % 2 == 0 {
            c = c / 2 
            
        }else {
          c = 3 * c + 1 
        }
        a.append(c)
    }
    return a
}