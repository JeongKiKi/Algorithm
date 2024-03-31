import Foundation

func solution(_ balls:Int, _ share:Int) -> Int {
    var a:Double = 1 
 
    var c = share + 1 
    var b:Double = 1
     if balls <= share || balls == 1 {
        return 1
    }

    if balls > share {
        for i in c...balls {
            a *= Double(i)
        }
        var nm = balls - share
        for k in 1...nm {
            b *= Double(k)
    }
    }else if balls == share {
        return 1
    }
   
    return Int(a / b)
}