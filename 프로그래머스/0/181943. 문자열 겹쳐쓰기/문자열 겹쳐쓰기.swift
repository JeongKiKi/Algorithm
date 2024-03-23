import Foundation

func solution(_ my_string:String, _ overwrite_string:String, _ s:Int) -> String {
     var result = my_string
    let startIndex = my_string.index(my_string.startIndex, offsetBy: s)
    let endIndex = my_string.index(startIndex, offsetBy: overwrite_string.count)
    result.replaceSubrange(startIndex..<endIndex, with: overwrite_string)
    return result
}