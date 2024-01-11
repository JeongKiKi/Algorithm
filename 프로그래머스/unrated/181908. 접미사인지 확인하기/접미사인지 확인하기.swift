import Foundation

func solution(_ my_string:String, _ is_suffix:String) -> Int {
     let myStringLength = my_string.count
    let isSuffixLength = is_suffix.count
    
    guard myStringLength >= isSuffixLength else {
        return 0
    }
    
    let endIndex = my_string.index(my_string.endIndex, offsetBy: -isSuffixLength)
    let suffixToCompare = String(my_string[endIndex...])
    
    return suffixToCompare == is_suffix ? 1 : 0
}