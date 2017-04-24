
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
  "<div style='border: 5px groove red'>
    <img src='http://bit.ly/1eze8aE'>
  </div>"
end
