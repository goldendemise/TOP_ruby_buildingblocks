# The Odin Project
# https://www.theodinproject.com/courses/ruby-programming/lessons/building-blocks
# Exercise 2
stocks = [10,6,900,8]

def stocker(stock_prices)
buy_sell = {}
greatest_difference = 0
stock_prices.each_with_index { |stock, indeks|
  iter = indeks
  while iter < (stock_prices.length - 1) do
    iter += 1
     if stock_prices[iter] - stock > greatest_difference then
     greatest_difference = stock_prices[iter] - stock
     buy_sell[:buy_day] = stock
     buy_sell[:sell_day] = stock_prices[iter]
     end
    puts "current stock is #{stock}: comparing to #{stock_prices[iter]}"
  end
}
puts "Greatest Difference: #{greatest_difference}"
puts "Buy Value: #{buy_sell[:buy_day]} | Sell Value: #{buy_sell[:sell_day]}"
end

stocker(stocks)
