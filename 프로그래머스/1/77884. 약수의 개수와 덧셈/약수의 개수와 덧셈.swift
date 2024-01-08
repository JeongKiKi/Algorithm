import Foundation

func solution(_ left:Int, _ right:Int) -> Int {
  
    var total = 0 
    for i in left...right {
         var count = 0
        for k in 1...i {
            if i % k == 0 {
                count += 1 
            }
        }
        if count % 2 == 0 {
            total += i
        }else {
            total -= i
        }
    }
    return total
}