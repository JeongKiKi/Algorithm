import Foundation

func solution(_ s:String) -> Bool{
var stack: [Character] = []

    for char in s {
        if char == "(" {
            stack.append(char)
        } else if char == ")" {
            // 스택이 비어있거나 가장 위에 있는 괄호가 '('가 아니면 올바르지 않은 괄호
            if stack.isEmpty || stack.removeLast() != "(" {
                return false
            }
        }
    }

    // 모든 괄호를 확인한 후, 스택이 비어있으면 올바른 괄호
    return stack.isEmpty
}