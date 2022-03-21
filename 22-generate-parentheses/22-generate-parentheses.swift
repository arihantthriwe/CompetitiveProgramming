class Solution {
    func backtrack(_ current: String, _ open: Int, _ close: Int, _ n: Int, _ result: (String) -> (Void)){
        if(current.count == 2 * n){
            result(current)
            return
        }
        if(open != n){
            backtrack(current + "(", open + 1, close, n, result)
        }
        if(open != close){
            backtrack(current + ")", open, close + 1, n, result)
        }
    }
    func generateParenthesis(_ n: Int) -> [String] {
        var result = [String]()
        backtrack("", 0, 0, n){result.append($0)}
        return result
    }
}