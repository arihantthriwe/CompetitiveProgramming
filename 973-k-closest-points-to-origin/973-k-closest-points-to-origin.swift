class Solution {
    func kClosest(_ points: [[Int]], _ k: Int) -> [[Int]] {
        var distanceOfPoints = points
        distanceOfPoints.sort(by: sort)
        var ans = [[Int]]()
        for i in 0..<k{
            ans.append(distanceOfPoints[i])
        }
        return ans
    }
    func sort(_ point1: [Int], _ point2: [Int]) -> Bool {
         ((point1[0]*point1[0] + point1[1]*point1[1]) < (point2[0]*point2[0] + point2[1]*point2[1]))
    }
}