import Foundation

func solution(_ d:[Int], _ budget:Int) -> Int {
    let sortedD = d.sorted()
    
    // 부서의 개수
    let departmentCount = sortedD.count
    
    // 부서별 신청 금액을 순차적으로 더하면서 예산을 초과하는 경우, 그 부서 이전까지만 지원 가능
    var total = 0
    var answer = 0
    
    for i in 0..<departmentCount {
        total += sortedD[i]
        
        // 예산 초과 시 더 이상 지원 불가능
        if total > budget {
            break
        }
        
        // 해당 부서까지 지원 가능한 경우, 부서 수 증가
        answer += 1
    }
    
    return answer
}
