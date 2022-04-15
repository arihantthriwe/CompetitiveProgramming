class Solution {
    func checkString(_ s: String) -> Bool {
        var check = false, ans = true
        for ch in s{
            if check{
                if ch == "a"{
                    ans = false
                }
            }
            if ch == "b"{
                check = true
            }
        }
        return ans
    }
}