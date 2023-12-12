func solution(_ s:String) -> String {
    var k = ""
    if s.count % 2 == 0 {
        var a = s.count / 2
        var aa = s.index(s.startIndex, offsetBy: a-1)
        var aaa = s.index(s.startIndex, offsetBy: a)
         var aaaa = s[aa]
         var aaaaa = s[aaa]
        k.append(aaaa)
        k.append(aaaaa)
    }else{
        var b = s.count / 2
        var bb = s.index(s.startIndex, offsetBy: b)
        var bbb = s[bb]
        k.append(bbb)
    }
    return k
}