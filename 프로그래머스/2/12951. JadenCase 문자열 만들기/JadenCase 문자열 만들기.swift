func solution(_ s:String) -> String {
    var result = ""
    // 공백 기준으로 나누기
    var sArray = s.components(separatedBy: " ")
    for i in sArray {
        //첫번째 문자는 대문자, 나머지는 소문자로 바꾸기 위해 분리
        var firstI = i.prefix(1)
        var remainI = i.dropFirst()
        //분리한 문자를 대문자, 소문자 변환 후 합치기
        var addI = firstI.uppercased() + remainI.lowercased()
        //변환한 문자를 결과값에 추가, 다음 단어를 위해 공백도 추가
        result = result + addI + " "
    }
    //마지막 단어를 변환 하면 마지막에 공백이 들어가 있으므로 공백 삭제
    //dropLast()의 반환 타입은 Substring이므로 String으로 변환
    var finalresult = String(result.dropLast())
    return finalresult
}