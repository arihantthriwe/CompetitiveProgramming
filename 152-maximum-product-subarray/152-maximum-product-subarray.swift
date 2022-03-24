class Solution {
    func maxProduct(_ nums: [Int]) -> Int {
        if nums.count == 0{
            return 0
        }
        var ans : Int = Int.min
        var maxProduct = 1
        var minProduct = 1
        for num in nums{
            if num < 0{
                swap(&maxProduct, &minProduct)
            }
            maxProduct = max(maxProduct * num, num)
            minProduct = min(minProduct * num, num)
            
            ans = max(ans, maxProduct)
        }
        return ans
    }
}