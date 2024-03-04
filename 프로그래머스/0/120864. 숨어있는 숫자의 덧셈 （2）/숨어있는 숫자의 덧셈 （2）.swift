import Foundation

func solution(_ my_string:String) -> Int {
    var char = ""
    var a = 0 
    for i in my_string{
        if i.isNumber{
            char.append(i) 
        }else{
            if let c = Int(char){
                a += c
            }
            char = ""
        }
    }
    guard let q = Int(char) else { return a }
    a += q 
    return a
}