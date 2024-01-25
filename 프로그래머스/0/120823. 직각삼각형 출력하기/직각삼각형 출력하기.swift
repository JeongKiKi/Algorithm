import Foundation

let n = readLine()!.components(separatedBy: [" "]).map { Int($0)! }
var a = ""
var k = "*"
for i in 1...n[0] {
        let stars = String(repeating: "*", count: i)
        print(stars)
    }
print(a)