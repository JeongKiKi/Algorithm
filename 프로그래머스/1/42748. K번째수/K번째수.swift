import Foundation

func solution(_ array:[Int], _ commands:[[Int]]) -> [Int] {
    var total:[Int] = []
    for i in commands {
        let k = i[0] - 1
        let l = i[1] - 1
        let p = i[2] - 1
        
        let newArray = Array(array[k...l]).sorted()
        total.append(newArray[p])
    }
    
    return total
}