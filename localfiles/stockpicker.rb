def stock_picker(prices)
  best_buy_day = 0
  best_sell_day = 1
  best_profit = prices[1] - prices[0]

  current_buy_day = 0

  (1...prices.length).each do |day|
    profit = prices[day] - prices[current_buy_day]

    if profit > best_profit
      best_profit = profit
      best_buy_day = current_buy_day
      best_sell_day = day
    end

    # track the lowest price seen so far, to consider as a future buy day
    if prices[day] < prices[current_buy_day]
      current_buy_day = day
    end
  end

  [best_buy_day, best_sell_day]
end