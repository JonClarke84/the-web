require 'sinatra'
require 'sinatra/reloader'

get '/' do
  "hello world"
end

get '/bye' do
  "goodbye cruel world"
end

get '/secret' do
  "<h1>this is a very secret page</h1>"
end

get '/cat' do
  "
  <style>
  img {
    border-style: dashed;
    border-color: red;
    border-width: medium;
  }
  </style>
  <img src = 'https://i.imgur.com/jFaSxym.png'>"
end