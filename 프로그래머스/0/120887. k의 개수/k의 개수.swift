import Foundation

func solution(_ i:Int, _ j:Int, _ k:Int) -> Int {
    let first = i
    let last = j
    var kstr = String(k)
    var finish = 0
    for q in i...j{
        let a = String(q)
        let separated = a.map { String($0) }
        for w in separated {
            if w.contains(kstr){
                finish += 1
            }
        }
    }
    
    return finish
}