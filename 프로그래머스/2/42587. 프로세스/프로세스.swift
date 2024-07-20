import Foundation

func solution(_ priorities:[Int], _ location:Int) -> Int {
    // 프로세스의 위치와 우선순위를 함께 저장하는 큐
    var queue: [(index: Int, priority: Int)] = priorities.enumerated().map { ($0, $1) }
    var printOrder = 0
    
    while !queue.isEmpty {
        let current = queue.removeFirst()
        
        // 현재 프로세스보다 우선순위가 높은 프로세스가 큐에 있는지 확인
        if queue.contains(where: { $0.priority > current.priority }) {
            // 우선순위가 높은 프로세스가 있다면, 현재 프로세스를 다시 큐의 뒤에 넣음
            queue.append(current)
        } else {
            // 우선순위가 높은 프로세스가 없다면, 현재 프로세스를 실행
            printOrder += 1
            // 현재 프로세스가 우리가 찾고자 하는 프로세스라면, 실행 순서를 반환
            if current.index == location {
                return printOrder
            }
        }
    }
    
    return printOrder
}
