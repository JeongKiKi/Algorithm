import Foundation

func solution(_ price:Int) -> Int {
    var a = 0
    if price >= 100000 && price < 300000 {
        a = Int(Double(price) * 0.95)
    }
    else if price >= 300000 && price < 500000 {
        a = Int(Double(price) * 0.9)
    }
    else if  price >= 500000{
    a = Int(Double(price) * 0.8)
    }
    else {
        a = price
    }
    return a
}