class Solution {
    func findKthPositive(_ arr: [Int], _ k: Int) -> Int {
        // var low = 0
        // var high = arr.count
        // var mid = 0
        var low = 0, mid = 0, high = arr.count
        while low < high{
            mid = low + (high-low)/2
            if arr[mid] - 1 - mid < k{
                low = mid + 1
            }else{
                high = mid
            }
        }
        return low + k
    }
}