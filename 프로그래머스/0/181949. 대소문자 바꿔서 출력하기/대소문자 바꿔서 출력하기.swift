import Foundation

let s1 = readLine()!
var a = ""
for i in s1 {
    if i.isUppercase {
        a.append(i.lowercased())
    }else{
        a.append(i.uppercased())
    }
}
print(a)