
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

get '/cat-form' do
  erb(:cat_form)
end

post '/named-cat' do
  @name = params[:name]
  erb(:index)
end
