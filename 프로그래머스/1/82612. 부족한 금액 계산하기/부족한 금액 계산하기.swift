import Foundation

func solution(_ price:Int, _ money:Int, _ count:Int) -> Int64{
    var answer:Int64 = -1
    var a = 0
    var pay:Int = 0
    for i in 1...count{
        pay = pay + price*i
    }
    answer = money - pay >= 0 ?  Int64(0) :  Int64(pay - money)
    return answer
}