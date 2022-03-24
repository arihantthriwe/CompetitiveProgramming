class Solution {
    func maxProfit(_ prices: [Int]) -> Int {
        var minPrice : Int = prices[0]
        var profit : Int = 0
        for (i, price) in prices.enumerated(){
            if(price < minPrice){
                minPrice = price
            }
            profit = max(profit, (price - minPrice))
        }
        return profit
    }
}