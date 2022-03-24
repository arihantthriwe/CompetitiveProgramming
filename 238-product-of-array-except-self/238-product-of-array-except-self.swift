class Solution {
       func productExceptSelf(_ nums: [Int]) -> [Int] {
        var last = 1
        var result: [Int] = []
        for i in 0..<nums.count {
            result.append(last)
            last *= nums[i]
        }

        last = 1
        for i in stride(from: nums.count-1, through: 0, by: -1) {
            result[i] *= last
            last *= nums[i]
        }

        return result
    }
}