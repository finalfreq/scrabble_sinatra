require('sinatra')
require('sinatra/reloader')
require('./lib/scrabble')
require('pry')
get('/') do
  erb(:index)
end

get('/word') do
  @score = params.fetch('score').scrabble()
  erb(:word)
end
