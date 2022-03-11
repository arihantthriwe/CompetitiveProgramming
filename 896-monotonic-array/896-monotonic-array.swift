class Solution {
    func isMonotonic(_ nums: [Int]) -> Bool {
        var isIncreasing : Bool = false
        var isDecreasing : Bool = false
        var i : Int = 0
        if nums.count < 2{
            return true
        }
        if nums[0] <= nums[1]{
            while i < nums.count - 1{
                if nums[i] <= nums[i+1]{
                    
                }else{
                    break
                }
                i += 1
            }
            if i == nums.count - 1{
                isIncreasing = true
            }
        }
        i = 0
        if nums[0] >= nums[1]{
            while i < nums.count - 1{
                if nums[i] >= nums[i+1]{
                    
                }else{
                    break
                }
                i += 1
            }
            if i == nums.count - 1{
                isDecreasing = true
            }
        }
        
        return isIncreasing || isDecreasing
    }
}