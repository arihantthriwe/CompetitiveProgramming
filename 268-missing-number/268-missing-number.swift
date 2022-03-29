class Solution {
    func missingNumber(_ nums: [Int]) -> Int {
        var n = nums[0];
        for (i,num) in nums.enumerated(){
            if i == 0{
                
            }else{
                n = n ^ num
            }
        }
        for i in stride(from: 0, through: nums.count, by: 1){
            n = n ^ i
        }
        return n
    }
}