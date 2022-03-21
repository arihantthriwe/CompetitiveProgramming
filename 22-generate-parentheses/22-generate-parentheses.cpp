class Solution {
public:
    void backtrack(vector<string>& ans,int open, int close, string curr, int n){
        if(curr.length() == 2*n){
            ans.push_back(curr);
            return;
        }
        if(open != n)backtrack(ans, open + 1, close, curr + "(", n);
        if(open != close)backtrack(ans, open, close + 1, curr + ")", n);
    }
    vector<string> generateParenthesis(int n) {
        vector<string> ans;
        backtrack(ans, 0, 0, "", n);
        return ans;
    }
};