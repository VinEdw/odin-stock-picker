def stock_picker(stock_prices)
  return nil if stock_prices.length < 2

  best_profit = stock_prices[1] - stock_prices[0]
  best_days = [0, 1]
  stock_prices.each_with_index do |buy_price, buy_day|
    stock_prices[(buy_day + 1)..-1].each.with_index(buy_day + 1) do |sell_price, sell_day|
      profit = sell_price - buy_price
      if profit > best_profit
        best_profit = profit
        best_days = [buy_day, sell_day]
      end
    end
  end

  best_days
end
