func gcd(_ a: Int, _ b: Int) -> Int {
    var a = a
    var b = b
    while b != 0 {
        let temp = b
        b = a % b
        a = temp
    }
    return a
}

// 두 수의 최소공배수(LCM)를 구하는 함수
func lcm(_ a: Int, _ b: Int) -> Int {
    return abs(a * b) / gcd(a, b)
}

// n개의 수의 최소공배수를 구하는 함수
func solution(_ arr: [Int]) -> Int {
    return arr.reduce(1) { lcm($0, $1) }
}