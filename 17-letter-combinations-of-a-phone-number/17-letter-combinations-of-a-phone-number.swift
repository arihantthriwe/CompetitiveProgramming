class Solution {
    func letterCombinations(_ digits: String) -> [String] {
        if digits.count == 0{
            return []
        }
        var dict : [Character: String] = [
            "2" : "abc",
            "3" : "def",
            "4" : "ghi",
            "5" : "jkl",
            "6" : "mno",
            "7" : "pqrs",
            "8" : "tuv",
            "9" : "wxyz"
        ]
        let dcount = digits.count
        var result = [String]()
        let charDigits = Array(digits)
        func helper(_ list: [Character], _ index: Int){
            if index == dcount{
                result.append(String(list))
                return
            }
            var list = list
            if let word = dict[charDigits[index]]{
                for c in word{
                    list.append(c)
                    helper(list, index + 1)
                    list.removeLast()
                }
            }
        }
        helper([], 0)
        return result
    }
}