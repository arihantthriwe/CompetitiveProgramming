class Solution {
    func maxArea(_ height: [Int]) -> Int {
        var maxArea : Int = 0
        var leftPointer = 0
        var rightPointer = height.count - 1
        while leftPointer < rightPointer{
            var area = (rightPointer - leftPointer) * (height[rightPointer] > height[leftPointer] ? height[leftPointer] : height[rightPointer])
            maxArea = max(maxArea, area)
            if height[rightPointer] < height[leftPointer]{
                rightPointer -= 1
            }else if height[leftPointer] < height[rightPointer]{
                leftPointer += 1
            }else{
                rightPointer -= 1
                leftPointer += 1
            }
        }
        return maxArea
    }
}