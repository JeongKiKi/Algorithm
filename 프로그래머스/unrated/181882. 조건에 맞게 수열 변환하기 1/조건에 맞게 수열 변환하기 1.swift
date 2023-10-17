import Foundation

func solution(_ arr:[Int]) -> [Int] {
    var a: [Int] = []
    for i in arr {
        if i < 50  {
            if i % 2 != 0{
                var b = i * 2
                a.append(b)
            }
            else{
                a.append(i)
            }
        }
        else {
            if i % 2 == 0{
                var c = i / 2
                a.append(c)
            }
            else{
                a.append(i)
            }
        }
    }
    return a
}