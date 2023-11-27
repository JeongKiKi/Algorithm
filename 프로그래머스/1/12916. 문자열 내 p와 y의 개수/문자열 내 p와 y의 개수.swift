import Foundation

func solution(_ s:String) -> Bool
{
    var ans:Bool = false
     let lowercaseS = s.lowercased()
    let pCount = lowercaseS.filter { $0 == "p" }.count
    let yCount = lowercaseS.filter { $0 == "y" }.count
    if pCount == yCount {
        ans = true
    }else{
        ans = false
    }
    return ans
}