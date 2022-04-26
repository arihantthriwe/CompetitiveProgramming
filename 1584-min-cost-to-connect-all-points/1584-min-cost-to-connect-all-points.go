func minCostConnectPoints(points [][]int) int {
    n := len(points)
    dis := make([]int, n)
    curr, res := 0, 0
    set := make(map[int]bool)
    
    for i := range dis{
        dis[i] = math.MaxInt64
    }
    
    for i := 0; i < n - 1; i++{
        set[curr] = true
        dis[curr] = math.MaxInt64
        x, y := points[curr][0], points[curr][1]
        
        for j := 0; j < n; j++{
            if _, ok := set[j]; ok{
                continue
            }
            x_, y_ := points[j][0], points[j][1]
            new_d := abs(x - x_) + abs(y - y_)
            if dis[j] > new_d{
                dis[j] = new_d
            }
        }
        min_d, nearest_ele := math.MaxInt64, -1
        for i, d := range dis{
            if d < min_d{
                min_d = d
                nearest_ele = i
            }
        }
        res += min_d
        curr = nearest_ele
    }
    return res
}
func abs(a int) int{
    if a < 0{
        return -a
    }
    return a
}