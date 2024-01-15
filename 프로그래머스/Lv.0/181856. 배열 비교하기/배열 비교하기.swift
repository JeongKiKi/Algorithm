import Foundation

func solution(_ arr1:[Int], _ arr2:[Int]) -> Int {
    if arr1.count > arr2.count {
        return 1 
    }else if arr1.count < arr2.count {
        return -1
    }else {
        var arr1sum = arr1.reduce(0){$0 + $1}
        var arr2sum = arr2.reduce(0){$0 + $1}
        if arr1sum > arr2sum {
            return 1
        }else if arr1sum < arr2sum {
            return -1
        }else if arr1sum == arr2sum {
            return 0
        }
    }
    return 0
}