import Foundation

func solution(_ n:Int) -> Int {
   var a = Int(sqrt(Double(n)))
    if a * a == n {
         return 1
    }
    else {
          return 2
    }
  
}