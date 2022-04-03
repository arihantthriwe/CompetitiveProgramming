class Solution {
    func stringMatching(_ words: [String]) -> [String] {
        let count = words.count
        var result = Set<String>()
        
        for i in 0..<count {
            let word = words[i]
            if result.contains(word) { continue }
            for j in 0..<count where j != i {
                if words[j].contains(word) {
                    result.insert(word)
                    break
                }
            }
        }
        
        return Array(result)
    }
}