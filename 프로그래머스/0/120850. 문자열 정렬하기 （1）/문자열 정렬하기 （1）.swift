import Foundation

func solution(_ my_string:String) -> [Int] {
    var a:[Int] = []
    for i in my_string {
        if let k = Int(String(i))  {
            a.append(k)
        }
        
    }
    return a.sorted()
}