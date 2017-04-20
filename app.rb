require('sinatra')
require('sinatra/reloader')
also_reload('lib/**/*.rb')
require('./lib/coin_combinations')
require('pry')

get('/') do
  erb(:index)
end
