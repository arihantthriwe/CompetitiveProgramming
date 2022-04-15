class Solution {
    func maximumProduct(_ nums: [Int]) -> Int {
        var copyNums = nums
        copyNums.sort()
        var count = copyNums.count
        return max(copyNums[count - 1]*copyNums[count - 2]*copyNums[count-3], copyNums[0]*copyNums[1]*copyNums[count-1])
    }
} 