 # => [1,4]  # for a profit of $15 - $3 == $12

# find the highest number in the array and its index
# find the lowest number in the array and its index
# the two indexes should be in its own array
# Ing-me
# def stock_picker(array)
#     arr_range = ((0...array.length).to_a)
#     permuted_array = arr_range.repeated_permutation(2)
#     .select {|start, finish| p finish > start }
#     .max_by {|start, finish| array[finish] - array[start]}
# end
# arr = [17,3,6,9,15,8,6,1,10]
# p stock_picker(arr)

def stock_picker(array)
    best_buy = nil
    best_sell = nil
    max_profit = 0
    (0..(array.length-2)).each do |buy_date| 
    ((buy_date + 1)..array.length - 1).each do |sell_date|
        profit = array[sell_date] - array[buy_date]
        if profit > max_profit
            best_buy = buy_date
            best_sell = sell_date
            max_profit = profit
        end
    end
end
 p [best_buy, best_sell]
end

arr = [17,3,6,9,15,8,6,1,10]
stock_picker(arr)