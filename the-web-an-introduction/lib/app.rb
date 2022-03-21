require 'sinatra'
require 'sinatra/reloader'

get '/' do
  'hello world'
end

get '/bye' do
  'goodbye cruel world'
end

get '/secret' do
  '<h1>this is a very secret page</h1>'
end

get '/random-cat' do
  @name = %w[Amigo Misty Almond].sample
  @day = Time.now.strftime('%A')
  erb(:index)
end

get '/named-cat' do
  p params
  @name = params[:name]
  @age = params[:age]
  @day = Time.now.strftime('%A')
  erb(:index)
end
