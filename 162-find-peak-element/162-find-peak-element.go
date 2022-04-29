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
    for i, num := range nums{
        if i == 0{
            if num > MinInt && num > nums[i+1]{
                return i
            }
        }else if i == len(nums) - 1{
            if num > MinInt && num > nums[i-1]{
                return i
            }
        }else if num > nums[i-1] && num > nums[i+1]{
            return i
        }
    }
    return -1
}