import Foundation

func solution(_ a:Int, _ b:Int, _ n:Int) -> Int {
    var binB = n
    var h = 0
    while binB >= a {
        let k = binB / a //교환한 콜라수
        let p = k * b 
         let l = binB % a //교환 하지 못하고 남은 콜라병 수
        h += p
        binB = p + l
        
    }
    return h
}