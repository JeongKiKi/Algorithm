import Foundation

func solution(_ num_list:[Int]) -> Int {
   
    
    if num_list.count >= 11 {
         var a: Int = 0 
      a =  num_list.reduce(0, +)
        return Int( a)
    }else {
        var b: Int  = 1
       
        b = num_list.reduce(1, *)
        return b
    }
    
}