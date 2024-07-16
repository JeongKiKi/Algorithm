import Foundation

func solution(_ progresses:[Int], _ speeds:[Int]) -> [Int] {
    var result = [Int]()
    var daysNeeded = [Int]()
    
    // 각 기능이 완료되기까지 필요한 일수를 계산
    for (progress, speed) in zip(progresses, speeds) {
        let remainingWork = 100 - progress
        let days = Int(ceil(Double(remainingWork) / Double(speed)))
        daysNeeded.append(days)
    }
    
    // 배포 기준 날짜
    var currentDeployDay = daysNeeded[0]
    var count = 0
    
    // 필요한 일수를 기준으로 기능을 배포
    for day in daysNeeded {
        if day <= currentDeployDay {
            count += 1
        } else {
            result.append(count)
            count = 1
            currentDeployDay = day
        }
    }
    
    result.append(count)
    
    return result
}