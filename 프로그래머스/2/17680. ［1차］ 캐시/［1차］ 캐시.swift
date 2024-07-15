func solution(_ cacheSize:Int, _ cities:[String]) -> Int {
 // 캐시가 없는 경우 모든 요청은 cache miss
    if cacheSize == 0 {
        return cities.count * 5
    }
    
    var cache = [String]()
    var totalTime = 0
    
    for city in cities {
        let cityLower = city.lowercased()
        
        if let index = cache.firstIndex(of: cityLower) {
            // cache hit
            totalTime += 1
            // 해당 도시를 캐시에서 제거하고 맨 뒤로 추가하여 최근 사용으로 갱신
            cache.remove(at: index)
        } else {
            // cache miss
            totalTime += 5
            // 캐시가 가득 찼으면 가장 오래된 항목 제거
            if cache.count >= cacheSize {
                cache.removeFirst()
            }
        }
        
        // 최근 사용한 항목을 맨 뒤로 추가
        cache.append(cityLower)
    }
    
    return totalTime
}