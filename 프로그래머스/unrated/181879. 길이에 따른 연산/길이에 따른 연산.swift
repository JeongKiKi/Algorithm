import Foundation

func solution(_ num_list:[Int]) -> Int {
   
    
    if num_list.count >= 11 {
         var a: Int = 0 
      for i in num_list {
          a = a + i
          
      }
        return Int( a)
    }else {
        var b: Int  = 1
        for k in num_list {
            b = b * k
            
        }
        return b
    }
    
}