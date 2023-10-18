import Foundation

func solution(_ my_string:String, _ n:Int) -> String {
   let a = my_string.index(my_string.endIndex, offsetBy: -n) 
    let b = String(my_string[a...])

    return b
}