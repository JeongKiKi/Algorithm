import Foundation

func solution(_ sizes:[[Int]]) -> Int {
    var maxWidth:[Int] = []
    var maxHeight:[Int] = []

    for size in sizes {
        let sortedSize = size.sorted()
        maxWidth.append(sortedSize[0])
        maxHeight.append(sortedSize[1])
    }
    maxWidth.sort(by: >)
    maxHeight.sort(by: >)
    return maxWidth[0] * maxHeight[0]
}
