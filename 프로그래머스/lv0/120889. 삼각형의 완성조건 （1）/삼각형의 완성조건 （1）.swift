import Foundation

func solution(_ sides:[Int]) -> Int {
    let a = sides.sorted()
    if a[0] + a[1] > a[2] {
        return 1
    }else{
        return 2
    }
    
}