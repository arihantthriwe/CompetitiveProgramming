class Solution {
    func average(_ salary: [Int]) -> Double {
        Double(salary.reduce(0, +) - (salary.min()! + salary.max()!)) / Double(salary.count - 2)
    }
}