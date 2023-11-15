import Foundation

func solution(_ numbers:[Int], _ n:Int) -> Int {
    var a = 0
  for i in numbers {
      if a <= n {
          a += i
      }
  }
    return a
}