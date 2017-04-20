require('capybara/rspec')
require('./app')
Capybara.app = Sinatra::Application
set(:show_exceptions, false)

describe('coin combinations',{:type => :feature}) do
  it('processes user entry and returns coin conversion') do
    visit('/')
    fill_in('cents', :with => '41')
    click_button('Make change!')
    expect(page).to have_content('1 Quarter, 1 Dime, 1 Nickel and 1 Penny')
  end
end
