import Foundation

func solution(_ chicken:Int) -> Int {
    var result = 0
    var coupons = chicken 
    while coupons >= 10 {
        result += coupons / 10 
        let remainingCoupons = coupons % 10 
        coupons = coupons / 10 + remainingCoupons 
    }
    return result
}