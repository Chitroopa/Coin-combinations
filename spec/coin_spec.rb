require('rspec')
require('coin_combinations')

describe('Fixnum#coin_combinations') do
  it("return in pennies if inputted amount is less than five") do
    expect(4.coin_combinations()).to(eq("4 Pennies"))
  end
  it("return in penny if inputted amount is one") do
    expect(1.coin_combinations()).to(eq("1 Penny"))
  end
  it("return Quarters for given Cents") do
    expect(50.coin_combinations()).to(eq("2 Quarters"))
  end
  it("return Quarters and dimes for given Cents") do
    expect(60.coin_combinations()).to(eq("2 Quarters, 1 Dime"))
  end
  it("return Quarters, dimes and Nickels for given Cents") do
    expect(65.coin_combinations()).to(eq("2 Quarters, 1 Dime, 1 Nickel"))
  end
  it("return Quarters, dimes,nickels and Pennies for given Cents") do
    expect(67.coin_combinations()).to(eq("2 Quarters, 1 Dime, 1 Nickel, 2 Pennies"))
  end
end
