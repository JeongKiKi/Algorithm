func solution(_ s:String) -> String {
    // var a = s.split(separator: " ")
    let a = s.components(separatedBy: " ")
    var b = ""
    for i in a {
        var c = ""
        for (index, numbers) in i.enumerated() {
           if index % 2 == 0 {
               c += String(numbers).uppercased()
           }else{
               c += String(numbers).lowercased()
           }
        }
        b += c + " "
    }
    var k = String(b.dropLast())
    return k
}