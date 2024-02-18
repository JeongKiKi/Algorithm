import Foundation

func solution(_ my_string:String) -> String {
     var seenCharacters = Set<Character>()
    var result = ""
    
    for char in my_string {
        if !seenCharacters.contains(char) {
            seenCharacters.insert(char)
            result.append(char)
        }
    }
    
    return result
}