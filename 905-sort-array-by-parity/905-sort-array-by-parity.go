func sortArrayByParity(nums []int) []int {
    var (
        i = 0
        j = len(nums) - 1
    )
    for i < j{
        if nums[i] % 2 == 0{
            i += 1
        }else{
            if nums[j] % 2 != 0{
                j -= 1
            }else{
                nums[i], nums[j] = nums[j], nums[i]
                i += 1
                j -= 1
            }
        }
    }
    return nums
}