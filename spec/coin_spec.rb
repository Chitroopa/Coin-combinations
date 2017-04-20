require('rspec')
require('coin_combinations')

describe('Fixnum#coin_combinations') do
  it("return in pennies if inputted amount is less than five") do
    expect(4.coin_combinations()).to(eq("4 Pennies"))
  end
  it("return in penny if inputted amount is one") do
    expect(1.coin_combinations()).to(eq("1 Penny"))
  end
  # it("return in penny if inputted amount is one") do
  #   expect(1.coin_combinations()).to(eq("1 Penny"))
  # end
end
