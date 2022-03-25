class Solution {
public:
    vector<int> plusOne(vector<int>& digits) {
        int excessSum = 0;
        int s = digits.size() - 1;
        int n = digits[s] + 1;
        if(n > 9){
            excessSum = n - 9;
            digits[s] = n - 10;
        }else{
            digits[s] = n;
        }
        for(int i = digits.size() - 2; i >= 0; i--){
             n = digits[i] + excessSum;
            if(n > 9){
            excessSum = n - 9;
            digits[i] = n - 10;
        }else{
                digits[i] = n;
                excessSum = 0;
            }   
        }
        if(excessSum > 0){
            vector<int> newArray(s+2);
            newArray[0] = excessSum;
            for(int i = 0; i <= s; i++){
                newArray[i+1] = digits[i];
            }
            return newArray;
        }
        return digits;
    }
};