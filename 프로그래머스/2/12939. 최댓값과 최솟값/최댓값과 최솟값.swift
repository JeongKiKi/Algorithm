func solution(_ s:String) -> String {
   let numbers = s.split(separator: " ").compactMap { Int($0) }

    guard let minNumber = numbers.min(), let maxNumber = numbers.max() else {
        return ""
    }

    return "\(minNumber) \(maxNumber)"
}