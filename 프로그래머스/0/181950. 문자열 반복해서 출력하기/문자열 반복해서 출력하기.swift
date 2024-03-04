import Foundation

let inp = readLine()!.components(separatedBy: [" "]).map { $0 }
let (s1, a) = (inp[0], Int(inp[1])!)
var c = ""
for i in 0..<a {
    c += s1
}
print(c)