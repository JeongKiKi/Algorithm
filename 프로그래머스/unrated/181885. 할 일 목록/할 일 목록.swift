import Foundation

func solution(_ todo_list:[String], _ finished:[Bool]) -> [String] {
    var a :[String] = []
    for i in 0..<finished.count {
        if finished[i] == false {
            a.append(todo_list[i])
        
    } 
    }
    return a
}