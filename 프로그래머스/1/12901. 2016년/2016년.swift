func solution(_ a:Int, _ b:Int) -> String {
    let daysInMonth = [31, 29, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31]
    let daysOfWeek = ["FRI", "SAT", "SUN", "MON", "TUE", "WED", "THU"]
    
    var totalDays = b - 1 // 1월 1일부터의 날짜 수로 시작
    
    // 이전 달까지의 일수를 더함
    for i in 0..<(a - 1) {
        totalDays += daysInMonth[i]
    }
    
    // 총 일수를 7로 나눈 나머지를 통해 요일을 구함
    let dayIndex = totalDays % 7
    
    // 요일 이름 반환
    return daysOfWeek[dayIndex]
}