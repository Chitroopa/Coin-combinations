require('pry')
class Fixnum
  define_method(:to_coins) do |coin_name|
    cents_string = self.to_s()
    cents_string.concat(coin_name)
  end
  define_method(:coin_combinations) do
    coin_name_singular = [" Quarter", " Dime", " Nickel", " Penny"]
    coin_name_plural = [" Quarters", " Dimes", " Nickels", " Pennies"]
    coin_value = [25,10,5,1]
      result_coin = []
    # if self == 1
    #   result_coin = self.to_coins(" Penny")
    # elsif self < 5
    #   result_coin = self.to_coins(" Pennies")
    # end

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
# binding.pry()
      reminder = reminder_temp

    end
    result_coin.join(", ")
  end


end
