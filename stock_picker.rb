def stock_picker(stock_prices)
  high_profit = 0
  days = []

  stock_prices.each_with_index do |buy_price, buy_index|
    ((buy_index + 1)...stock_prices.length).each do |sell_index|
      sell_price = stock_prices[sell_index]
      
      profit = sell_price - buy_price

      if profit > high_profit
        high_profit = profit
        days = [buy_index, sell_index]
      end
    end
  end
  
  days
end

p stock_picker([17,3,6,9,15,8,6,1,10])
