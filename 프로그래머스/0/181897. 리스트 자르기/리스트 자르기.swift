import Foundation

func solution(_ n:Int, _ slicer:[Int], _ num_list:[Int]) -> [Int] {
    var result = num_list
    var a = slicer[0]
    var b = slicer[1]
    var c = slicer[2]
    if n == 1 {
        return Array(result[0...b])
    }else if n == 2 {
        return Array(result[a...])
    }else if n == 3 {
        return Array(result[a...b])
    }else if n == 4 {
        var nFour:[Int] = []
        for i in stride(from: a, through: b, by: c ){
        nFour.append(result[i])
    }
        return nFour
    }
    return [0]
}
