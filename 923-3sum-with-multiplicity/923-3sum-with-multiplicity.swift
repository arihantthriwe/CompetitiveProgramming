class Solution {
    func threeSumMulti(_ a: [Int], _ t: Int) -> Int {
        var val = 0
        for i in a.indices {
            var nums = [Int](repeating: 0, count: 101)
            for n in i + 1..<a.count {
                let num = t - a[i] - a[n]
                if num >= 0, num <= 100, nums[num] > 0 {
                    val += nums[num]
                    val %= 1_000_000_007
                }
                nums[a[n]] += 1
            }
        }
        return val
    }
}