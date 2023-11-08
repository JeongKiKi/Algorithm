func solution(_ n:Int) -> Int {
   var aliquotArr: [Int] = []

    // TODO: [x] 약수 구하기
    for num1 in 0...n {

        for num2 in 0...n {
            if num1 * num2 == n {
                aliquotArr.append(num1)
            }
        }

    }
    // TODO: [x] 약수 배열내부의 전체 합
    return aliquotArr.reduce(0) { $0 + $1 }
}
