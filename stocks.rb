def stock_picker(prices)
  difference = 0
  buy = 0
  sell = 0
  (0..prices.length-1).each do |buy_day|
    ((buy_day+1)..prices.length-1).each do |sell_day|
      if (prices[sell_day] - prices[buy_day]) > difference
        difference = prices[sell_day] - prices[buy_day]
        buy = buy_day
        sell = sell_day
      end
    end
  end
  [buy, sell]
end
