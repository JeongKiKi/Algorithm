import Foundation

func solution(_ strArr:[String]) -> [String] {
let filteredArr = strArr.filter { !$0.contains("ad") }
    return filteredArr
}