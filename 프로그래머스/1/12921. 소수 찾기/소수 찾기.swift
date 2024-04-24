func solution(_ n:Int) -> Int {
  guard n >= 2 else { return 0 }
    
    var primes = [Bool](repeating: true, count: n + 1)
    primes[0] = false
    primes[1] = false
    var count = 0
    
    for i in 2...n {
        if primes[i] {
            var j = i * i
            while j <= n {
                primes[j] = false
                j += i
            }
            count += 1
        }
    }
    
    return count
}