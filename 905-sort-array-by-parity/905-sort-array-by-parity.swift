class Solution {
    func sortArrayByParity(_ nums: [Int]) -> [Int] {
        var dummyNums = nums
        var i = 0
        var j = dummyNums.count - 1
        while i < j{
            if dummyNums[i] % 2 == 0{
                i += 1
            }
            else{
                if dummyNums[j] % 2 != 0{
                    j -= 1
                }else{
                    dummyNums.swapAt(i, j)
                    i += 1
                    j -= 1
                }
            }
        }
        return dummyNums
    }
}