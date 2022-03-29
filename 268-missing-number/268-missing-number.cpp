class Solution {
public:
    int missingNumber(vector<int>& nums) {
        int n = nums[0];
        for(int i = 1; i < nums.size(); i++){
            n ^= nums[i];
        }
        for(int i = 0; i <= nums.size(); i++){
            n ^= i;
        }
        return n;
    }
};