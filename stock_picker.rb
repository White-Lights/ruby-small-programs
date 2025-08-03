def stock_picker(array)
  max_profits = array.map.with_index{|price, index| 
    (array.slice(index + 1, array.length - 1).max || 0) - price
    }
  day_to_buy = max_profits.index(max_profits.max)
  day_to_sell = array.index(max_profits[day_to_buy] + array[day_to_buy])
  return [day_to_buy, day_to_sell]
end