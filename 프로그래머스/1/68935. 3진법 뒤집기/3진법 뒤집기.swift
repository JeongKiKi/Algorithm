import Foundation

func solution(_ n:Int) -> Int {
    var radixs = String(n, radix: 3)
    var reradixs = String(radixs.reversed())
    guard let  finals = Int(reradixs, radix: 3) else {return 0}
    // guard let a = Int(finals) else {return 0}
    return finals
}