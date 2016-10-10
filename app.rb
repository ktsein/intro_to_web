require 'sinatra'

set :session_secret, 'super secret'

get '/' do
  "Hello World"
end

get '/secret' do
  "I am not gonna tell you my secret!"
end

get '/test' do
  "testing"
end

get '/shotgun' do
  "Shotgun is installed and the server is auto updating"
end

get '/hello/:name' do
  @greet_name = params[:name]
  "Hello, #{@greet_name.capitalize}!"
end

get '/random-cat' do
  @name = ["Amigo", "Oscar", "Viking"].sample
  erb(:index)
end

get '/named-cat' do
  p params
  @name = params[:name]
  erb(:index)
end
