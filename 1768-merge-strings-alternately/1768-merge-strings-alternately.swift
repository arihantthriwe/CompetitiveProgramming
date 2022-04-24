class Solution {
    func mergeAlternately(_ word1: String, _ word2: String) -> String {
        var word1_ = Array(word1)
        var word2_ = Array(word2)
        var countOfword1 = word1.count
        var countOfword2 = word2.count
        var i = 0
        var j = 0
        var ansString = [Character]()
        while i < countOfword1 && j < countOfword2{
            ansString.append(word1_[i])
            ansString.append(word2_[j])
            i += 1
            j += 1
        }
        while i < countOfword1 {
            ansString.append(word1_[i])
            i += 1
        }
        while j < countOfword2 {
            ansString.append(word2_[j])
            j += 1
        }
        return String(ansString)
    }
}