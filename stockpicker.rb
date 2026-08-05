
def stock_picker(prices)
    #variables
    best_profit=0
    days_to_sell_buy=""

    #idea : 2 loops on prices that compare price[0] with price[0..end]
    #compare all values between them to find out the best profit (difference)
    #only if index_buy < index_sell
    #when best_profit find, return the index of the values used during comparison
    prices.each_with_index do |element1, index1|
        prices.each_with_index do |element2, index2|
            
            profit = element2 - element1
        
        
        if profit > best_profit && index1 < index2
                best_profit = profit
                days_to_sell_buy = [index1, index2]
        end
    end

    puts "Best price to buy is in position #{ days_to_sell_buy[0]}." 
    puts "Best price to sell is in position #{ days_to_sell_buy[1]}."
    puts "Profit per stock is #{best_profit}"

end
end
     


stock_picker([17,3,6,9,15,8,6,1,10])