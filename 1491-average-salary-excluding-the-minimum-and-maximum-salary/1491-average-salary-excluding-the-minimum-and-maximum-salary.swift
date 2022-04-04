class Solution {
    func average(_ salary: [Int]) -> Double {
        var sum = 0
        for s in salary{
            sum += s
        }
        var st = salary
        st.sort()
        return (Double(sum - st[0] - st[st.count - 1])/Double(salary.count - 2))
    }
}