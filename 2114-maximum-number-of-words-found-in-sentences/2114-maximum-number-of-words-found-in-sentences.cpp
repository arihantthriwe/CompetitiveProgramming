class Solution {
public:
    int mostWordsFound(vector<string>& sentences) {
        int maxNumberOfWords = 0;
        for(auto str: sentences){
            int numberOfSpaces = 0;
            for(auto ch: str){
                if(ch == ' '){
                    numberOfSpaces++;
                }
            }
            maxNumberOfWords = max(maxNumberOfWords, numberOfSpaces + 1);
        }
        return maxNumberOfWords;
    }
};