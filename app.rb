require 'sinatra'

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

get '/cat' do
  <div>
  <img src='http://bit.ly/1eze8aE>'
  </div>
end
