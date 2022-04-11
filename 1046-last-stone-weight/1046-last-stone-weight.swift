class Solution {
    func lastStoneWeight(_ stones: [Int]) -> Int {
        var stones = stones
        if stones.count == 0{
            return 0
        }else if stones.count == 1{
            return stones[0]
        }
        stones.sort()
        while stones.count > 1{
            let last = stones.removeLast()
            let secondLast = stones.removeLast()
            if last > secondLast{
                stones.append(last - secondLast)
            }
            stones.sort()
        }
        return stones.count > 0 ? stones[0] : 0
    }
}