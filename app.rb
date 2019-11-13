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

get '/random-cat' do
  @name = ["Amigo", "Oscar", "Viking"].sample
  erb(:index)
end

get '/named-cat' do
  @name = params[:name]
  erb(:index)
end
