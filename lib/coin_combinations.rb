class Fixnum
# function to convert number to string  and concatenate with coin name
  define_method(:to_coins) do |coin_name|
    cents_string = self.to_s()
    cents_string.concat(coin_name)
  end

  define_method(:coin_combinations) do
    coin_name_singular = [" Quarter", " Dime", " Nickel", " Penny"]
    coin_name_plural = [" Quarters", " Dimes", " Nickels", " Pennies"]
    coin_value = [25,10,5,1]
    result_coin = []
    counter = 0
    reminder = self
    quotient = 0

    until counter == 4 do

      reminder_temp = reminder % coin_value[counter]
      quotient = reminder / coin_value[counter]

      if quotient == 1
        result_coin.push(quotient.to_coins(coin_name_singular[counter]))
      elsif quotient > 1
        result_coin.push(quotient.to_coins(coin_name_plural[counter]))
      end

      counter = counter + 1
      reminder = reminder_temp
   end

# add 'and' before last  element
    if result_coin.length > 1
      pop_last = result_coin.pop()
      result_coin.push(result_coin.pop().concat(" and ").concat(pop_last))
    end
    result_coin.join(", ")
  end

end
