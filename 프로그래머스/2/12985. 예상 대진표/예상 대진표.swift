import Foundation

func solution(_ n:Int, _ a:Int, _ b:Int) -> Int
{
     var a = a
    var b = b
    var round = 0

    // A와 B가 같은 라운드에 만날 때까지 반복
    while a != b {
        // 다음 라운드 번호로 변경
        a = (a + 1) / 2
        b = (b + 1) / 2
        // 라운드 카운트 증가
        round += 1
    }
    
    return round
}