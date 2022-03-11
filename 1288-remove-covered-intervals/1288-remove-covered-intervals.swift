class Solution {
    func removeCoveredIntervals(_ intervals: [[Int]]) -> Int {
    if intervals.count == 1{
        return 1
    }
    let intervals = intervals.sorted(by: {
        if $0[0] < $1[0]{
            return true
        }else if $0[0] == $1[0]{
            return $0[1] > $1[1]
        }
        return false
    } )
    var count = 1
    var start = intervals[0][0]
    var end = intervals[0][1]
    for a in 1..<intervals.count{
        if end >= intervals[a][1]{
            continue
        }else{
            start = intervals[a][0]
            end = intervals[a][1]
            count += 1
        }
    }
    return count
    }
}