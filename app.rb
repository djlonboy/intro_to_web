require 'sinatra'
require 'shotgun'



get '/' do
  "Hello World"
end

get '/secret' do
  "secret message"
end

get '/another' do
  "boo!"
end

get '/bob' do
  "You're bob"
end

get '/cat' do
  @name = ["Amigo", "Oscar", "Viking"].sample
  erb(:index)
end
