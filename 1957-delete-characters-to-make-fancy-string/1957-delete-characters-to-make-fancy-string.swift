class Solution {
    func makeFancyString(_ s: String) -> String {
        var word = Array(s)
        var res = "" + String(word[0])
        var count = 1;
        for i in 1..<word.count{
            count = word[i] == word[i-1] ? count + 1 : 1
            if count < 3{
                res += String(word[i])
            }
        }
        return res
    }
}