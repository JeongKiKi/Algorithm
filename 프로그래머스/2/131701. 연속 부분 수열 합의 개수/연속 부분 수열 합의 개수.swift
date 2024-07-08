import Foundation

func solution(_ elements:[Int]) -> Int {
    var a:[Int] = []
    var n = 1 
     var newelements = elements
    while n <= newelements.count {
        var num = 0 
        for i in newelements {
            num += i 
            a.append(num)
        }
        newelements.append(newelements[0])
        newelements.removeFirst()
        n += 1
    }
    let uniqueArray = Array(Set(a))
    return uniqueArray.count
}