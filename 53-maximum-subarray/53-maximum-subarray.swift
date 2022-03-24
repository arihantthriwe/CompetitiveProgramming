class Solution {
    func maxSubArray(_ nums: [Int]) -> Int {
        var n = nums.count
        var dp = Array(repeating: 0, count: n)
        dp[0] = nums[0]
        var m = dp[0]
        for i in stride(from: 1, to: n, by: 1){
            dp[i] = nums[i] + (dp[i-1] > 0 ? dp[i-1] : 0)
            m = max(m, dp[i]) 
        }
        return m
    }
}