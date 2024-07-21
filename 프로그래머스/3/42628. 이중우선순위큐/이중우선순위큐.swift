import Foundation

func solution(_ operations:[String]) -> [Int] {
     var minHeap = [Int]()
    var maxHeap = [Int]()
    var entryFinder = [Int: Bool]()
    
    func syncHeaps() {
        while let minTop = minHeap.first, entryFinder[minTop] == false {
            removeMin()
        }
        while let maxTop = maxHeap.first, entryFinder[-maxTop] == false {
            removeMax()
        }
    }
    
    func insert(_ num: Int) {
        minHeap.append(num)
        maxHeap.append(-num)
        entryFinder[num] = true
        minHeap.sort()
        maxHeap.sort()
    }
    
    func removeMin() {
        if let minTop = minHeap.first {
            entryFinder[minTop] = false
            minHeap.removeFirst()
        }
    }
    
    func removeMax() {
        if let maxTop = maxHeap.first {
            entryFinder[-maxTop] = false
            maxHeap.removeFirst()
        }
    }
    
    for operation in operations {
        let parts = operation.split(separator: " ")
        let command = parts[0]
        let value = Int(parts[1])!
        
        if command == "I" {
            insert(value)
        } else if command == "D" {
            syncHeaps()
            if value == 1 {
                removeMax()
            } else {
                removeMin()
            }
        }
    }
    
    syncHeaps()
    if minHeap.isEmpty || maxHeap.isEmpty {
        return [0, 0]
    } else {
        let minValue = minHeap.first!
        let maxValue = -maxHeap.first!
        return [maxValue, minValue]
    }
}