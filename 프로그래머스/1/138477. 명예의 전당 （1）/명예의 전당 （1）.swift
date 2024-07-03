import Foundation

func solution(_ k:Int, _ score:[Int]) -> [Int] {
    var kArray:[Int] = []
    var result:[Int] = []
    for i in score {
        // kArray.sort()
        if kArray.count < k {
            kArray.append(i)
            kArray.sort()
            result.append(kArray[0])
        }else  {
            if i >= kArray[0]{
                kArray.remove(at: 0)
                kArray.append(i)
                kArray.sort()  
                result.append(kArray[0])
            }else {
                result.append(kArray[0])
            }
        }
    }
    return result
}