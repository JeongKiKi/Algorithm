import Foundation

func solution(_ n:Int) -> Int {
      var number = n
    var sum = 0
    
    while number != 0 {
        sum += number % 10 // 마지막 자릿수를 가져와 더함
        number /= 10 // 마지막 자릿수를 제거
    }
    
    return sum

}