import Foundation

func solution(_ s:String) -> Int{
    var answer:Int = -1
    var a:[Character] = []
    for i in s {
        if let kk = a.last, kk == i {
            a.removeLast()
        }else{
            a.append(i)
        }
    }
    // [실행] 버튼을 누르면 출력 값을 볼 수 있습니다.
    print("Hello Swift")
    return a.isEmpty ? 1 : 0 
}