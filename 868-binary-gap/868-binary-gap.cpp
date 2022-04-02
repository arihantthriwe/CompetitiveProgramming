class Solution {
public:
    int binaryGap(int n) {
        bool start = false;
        int ans = 0, length = 0;
        while(n){
            if(start) length++;
            if(n & 1){
                ans = max(ans, length);
                start = true;
                length = 0;
            }
            n >>= 1;
        }
        return ans;
    }
};