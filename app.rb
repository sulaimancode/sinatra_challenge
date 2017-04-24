
require 'sinatra'
require 'shotgun'
set :session_secret, 'here be dragons'

get '/' do
  'Hello World!'
end

get '/secret' do
  "secret message"
end

get '/shotgun' do
  "shotgun"
end

get '/new' do
  "new"
end

get '/cat' do
  @random_name = ["Amigo", "Oscar", "Viking"].sample
  erb(:index)

end
