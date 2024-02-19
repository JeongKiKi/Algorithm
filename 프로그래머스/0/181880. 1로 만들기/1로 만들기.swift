import Foundation

func solution(_ num_list:[Int]) -> Int {
     var count = 0  
    for num in num_list {
        var currentNum = num
        while currentNum != 1 {  
            if currentNum % 2 == 0 { 
                currentNum /= 2
            } else {  
                currentNum -= 1
                currentNum /= 2
            }
            count += 1  
        }
    }
    return count
}