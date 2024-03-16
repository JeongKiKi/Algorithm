import Foundation

func solution(_ my_string:String, _ queries:[[Int]]) -> String {
     var myStringArray = Array(my_string)
    
    for query in queries {
        let start = query[0]
        let end = query[1]
        
        // 문자열을 슬라이싱하고 뒤집은 뒤 다시 배열로 변환하여 대체
        let reversedSubstring = Array(myStringArray[start...end].reversed())
        myStringArray.replaceSubrange(start...end, with: reversedSubstring)
    }
    
    return String(myStringArray)
}