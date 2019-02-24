def stock_picker(prices_array) 
    max_profit = 0
    buy_day = 0
    sell_day = 0
    # get profit by comparing each buy price to every possible sell price
    # store profit in temp var to compare for new max
    # update buy/sell day when new max profit added
    prices_array.each do |buy_price|
        prices_array[prices_array.index(buy_price)..-1].each do |sell_price|
            profit = sell_price - buy_price
            if profit > max_profit
                max_profit = profit 
                buy_day = prices_array.index(buy_price) 
                sell_day = prices_array.index(sell_price) 
            end
        end 
    end 
    if buy_day == 0 and sell_day == 0
        return "Don't buy stock!"
    else
        return [buy_day,sell_day]
    end

end
            



    


