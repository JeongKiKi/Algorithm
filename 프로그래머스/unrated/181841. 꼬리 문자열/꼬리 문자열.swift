import Foundation

func solution(_ str_list:[String], _ ex:String) -> String {
       let filteredList = str_list.filter { !$0.contains(ex) }
    
    // 제외된 문자열들을 합쳐 꼬리 문자열 생성
    let tailString = filteredList.joined()
    
    return tailString
}