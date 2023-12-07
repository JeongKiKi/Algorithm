func solution(_ arr:[Int]) -> [Int] {
    if arr.count == 1 {
        return [-1]
    }
    var a = arr.min()
    let filteredArray = arr.filter { $0 != a }

    return filteredArray
}
