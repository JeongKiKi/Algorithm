import Foundation

func solution(_ my_string:String, _ is_prefix:String) -> Int {
  let myStringLength = my_string.count
    let prefixLength = is_prefix.count
    
    // is_prefix의 길이가 my_string보다 크다면 0을 반환
    if prefixLength > myStringLength {
        return 0
    }
    
    // my_string과 is_prefix의 첫 prefixLength 글자를 비교
    let prefix = String(my_string.prefix(prefixLength))
    
    if prefix == is_prefix {
        return 1
    } else {
        return 0
    }
}
