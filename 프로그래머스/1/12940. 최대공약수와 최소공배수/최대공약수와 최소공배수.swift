
// 최대공약수 구하는 함수
func gcd(_ a: Int, _ b: Int) -> Int {
    var (a, b) = (a, b)
    while b != 0 {
        let temp = a % b
        a = b
        b = temp
    }
    return a
}

// 최소공배수 구하는 함수
func lcm(_ a: Int, _ b: Int) -> Int {
    return a * b / gcd(a, b)
}

func solution(_ n:Int, _ m:Int) -> [Int] {
    let greatestCommonDivisor = gcd(n, m)
    let leastCommonMultiple = lcm(n, m)
    return [greatestCommonDivisor, leastCommonMultiple]
}