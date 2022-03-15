class Solution {
public:
    int nextGreaterElement(int n) {
        auto digits = to_string(n);
        next_permutation(digits.begin(), digits.end());
        auto x = stoll(digits);
        return (x > INT_MAX || x <= n) ? -1 : x;
    }
};