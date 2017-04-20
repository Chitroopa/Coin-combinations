require('sinatra')
require('sinatra/reloader')
also_reload('lib/**/*.rb')
require('./lib/coin_combinations')
require('pry')

get('/') do
  erb(:index)
end

get('/result') do
  @cents = params.fetch('cents')
  @coin_change = params.fetch('cents').to_i.coin_combinations()
  erb(:result)
end
