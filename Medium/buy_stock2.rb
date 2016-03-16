=begin
	
Say you have an array for which the ith element is the price of a given stock on day i.

Design an algorithm to find the maximum profit. You may complete as many transactions 
as you like (ie, buy one and sell one share of the stock multiple times). However, 
you may not engage in multiple transactions at the same time (ie, you must sell the stock before you buy again).
	
[25, 30, 28]

buy 25 @ day 1
sell 30 @ day 2

[25, 30, 28, 26, 30, 29, 50, 30]

1.check if next one is greater than previous one, if yes, Buy!!
2.keep finding next till one is smaller than next one, Sell


=end

def max_profit(prices)
	numOfdays = prices.length
	bought = false
	profit = 0
	cost = 0
	numOfdays.times do |i|
		if prices[i+1] && prices[i] < prices[i+1] && !bought
			bought = true
			cost = prices[i]
		elsif bought && ((prices[i+1] && prices[i] >= prices[i+1]) || !prices[i+1])
			profit += prices[i] - cost
			cost = 0
			bought = false
		end	
	end
	return profit
end

p max_profit([25, 30, 28])
p max_profit([25, 30, 31, 32])