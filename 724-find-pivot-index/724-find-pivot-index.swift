class Solution {
    func pivotIndex(_ nums: [Int]) -> Int {
       let sum = nums.reduce(0, +)
        var leftSum = 0
        for i in 0..<nums.count {
            let currSum = sum - nums[i]
            defer { leftSum += nums[i] }
            guard currSum % 2 == 0 else { continue }
            if leftSum == currSum / 2 { return i }
        }
        return -1 
    }
}