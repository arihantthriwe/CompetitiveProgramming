class Solution {
public:
    vector<int> findSmallestSetOfVertices(int n, vector<vector<int>>& edges) {
        vector<int> res, seen(n);
        for(auto x: edges){
            seen[x[1]] = 1;
        }
        for(int i = 0; i < n; i++){
            if(seen[i] == 0){
                res.push_back(i);
            }
        }
        return res;
    }
};