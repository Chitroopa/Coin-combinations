class Fixnum
  define_method(:to_coins) do |coin_name|
    cents_string = self.to_s()
    cents_string.concat(coin_name)
  end
  define_method(:coin_combinations) do
    result_coin = ""
    if self == 1
      result_coin = self.to_coins(" Penny")
    elsif self < 5
      result_coin = self.to_coins(" Pennies")
    end
    result_coin
  end
end
