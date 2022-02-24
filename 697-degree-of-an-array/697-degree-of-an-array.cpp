class Solution {
public:
    int findShortestSubArray(vector<int>& nums) {
        unordered_map<int,int> count, first;
        int res = 0, degree = 0;
        for(int i = 0; i < nums.size(); i++){
            int x = nums[i];
            if(first.count(x) == 0)first[x]=i;
            if(++count[x] > degree){
                degree = count[x];
                res =  i - first[x] + 1;
            }else if(count[x] == degree){
                res = min(res, i - first[x] + 1);
            }
        }
        return res;
    }
};