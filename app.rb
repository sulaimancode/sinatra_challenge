
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

get '/random-cat' do
  @name = ["Amigo", "Oscar", "Viking"].sample
  erb(:index)
end

get '/named-cat' do
  p params
  @name = params[:name]
  erb(:index)
end
