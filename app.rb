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

get '/catform' do
  erb(:catform)
end

post '/namedcat' do
  params
  @name = params[:name]
  erb(:index)
end
