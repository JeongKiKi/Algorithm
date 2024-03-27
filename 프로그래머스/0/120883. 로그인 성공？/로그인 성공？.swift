import Foundation

func solution(_ id_pw:[String], _ db:[[String]]) -> String {
    for userInfo in db {
        if userInfo[0] == id_pw[0] {
            if userInfo[1] == id_pw[1] {
                return "login"
            } else {
                return "wrong pw"
            }
        }
    }
    
    return "fail"
}