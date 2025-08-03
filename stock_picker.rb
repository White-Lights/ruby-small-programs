def stock_picker(array)
  # Get an array of the highest possible profits for each day of sale prices. Some prices might be negative because there is no good day to purchase.
  max_profits = array.map.with_index{|price, index| 
    (array.slice(index + 1, array.length - 1).max || 0) - price
    }
  
  #day_to_buy is the day that would yield the highest potential profit
  day_to_buy = max_profits.index(max_profits.max)

  #day_to_sell finds the day in the array that had yielded the best profit based on the day_to_buy (adding the profit and purchase to relocate the best sale price)
  day_to_sell = array.index(max_profits[day_to_buy] + array[day_to_buy])
  
  return [day_to_buy, day_to_sell]
end