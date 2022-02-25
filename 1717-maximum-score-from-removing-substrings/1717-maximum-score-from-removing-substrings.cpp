class Solution {
    string remove(string s, char a, char b){
        int ans = 0;
        string stack;
        for(char c : s){
            if(!stack.empty() && stack.back() == a && c == b){
                stack.pop_back();
            }else{
                stack.push_back(c);
            }
        }
        return stack;
    }
public:
    int maximumGain(string s, int x, int y) {
        char a = 'a', b = 'b';
        if( x < y){
            swap(a, b);
            swap(x, y);
        }
        auto s1 = remove(s, a, b);
        auto s2 = remove(s1, b, a);
        return (s.size() - s1.size()) / 2 * x + (s1.size() - s2.size()) /2 * y;
    }
};