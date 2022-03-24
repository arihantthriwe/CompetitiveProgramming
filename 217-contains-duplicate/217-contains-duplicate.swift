class Solution {
    func containsDuplicate(_ nums: [Int]) -> Bool {
        var ans = Set<Int>()
        for num in nums{
            ans.insert(num)
        }
        return !(ans.count == nums.count)
    }
}