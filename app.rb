require('sinatra')
require('sinatra/reloader')
require('./lib/scrabble')

get('/') do
  erb(:index)
end

get('/scrabble') do
  @score = params.fetch('score').scrabble()
  erb(:word)
end
