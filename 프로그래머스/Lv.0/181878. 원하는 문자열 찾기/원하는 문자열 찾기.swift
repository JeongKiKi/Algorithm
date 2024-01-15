import Foundation

func solution(_ myString:String, _ pat:String) -> Int {
    if myString.count < pat.count {
        return 0
    }else{
        var mystr = myString.lowercased()
        var patt = pat.lowercased()
        if mystr.contains(patt) {
            return 1 
        }else {
            return 0
        }
    }
    return 0
}