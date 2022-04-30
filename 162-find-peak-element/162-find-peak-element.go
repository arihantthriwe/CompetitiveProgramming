func findPeakElement(nums []int) int {
    const UintSize = 32 << (^uint(0) >> 32 & 1) // 32 or 64

    const (
        MaxInt  = 1<<(UintSize-1) - 1 // 1<<31 - 1 or 1<<63 - 1
        MinInt  = -MaxInt - 1         // -1 << 31 or -1 << 63
        MaxUint = 1<<UintSize - 1     // 1<<32 - 1 or 1<<64 - 1
    )
    if len(nums) == 1{
        return 0
    }
    n := len(nums)
    if nums[n-1] > MinInt && nums[n-1] > nums[n - 2]{
        return n - 1
    }
    if nums[0] > MinInt && nums[0] > nums[1]{
        return 0
    }
    var (
        left = 0
        right = n - 1
    )
    for left < right{
        mid := left + (right-left)/2
        if nums[mid] > nums[mid + 1]{
            right = mid
        }else{
            left = mid + 1
        }
    }
    return left
}