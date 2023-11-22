import Foundation

func solution(_ arr:[Int], _ k:Int) -> [Int] {
    var a:[Int] = []
    if k % 2 == 0 {
        for i in 0...arr.count-1 {
            a.append(arr[i]+k)
        }
    }else{
        for i in 0...arr.count-1 {
            a.append(arr[i]*k)
        }
    }
    return a
}