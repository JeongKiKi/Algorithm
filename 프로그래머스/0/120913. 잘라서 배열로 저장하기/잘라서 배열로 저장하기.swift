import Foundation

func solution(_ my_str:String, _ n:Int) -> [String] {
    var result = [String]()
    var currentIndex = my_str.startIndex
    while currentIndex < my_str.endIndex {
        let endIndex = my_str.index(currentIndex, offsetBy: n, limitedBy: my_str.endIndex) ?? my_str.endIndex
        let substring = my_str[currentIndex..<endIndex]
        result.append(String(substring))
        currentIndex = endIndex
    }
    
    return result
}