require 'sinatra'
require 'sinatra/reloader'

class Battle < Sinatra::Base
  configure :development do
    register Sinatra::Reloader
  end

  enable :sessions

  get '/' do
    erb :index
  end

  post '/names' do
    session[:player_one] = params[:player_one]
    session[:player_two] = params[:player_two]
    redirect to('/play')
  end

  get '/play' do
    session[:player_one] = params[:player_one]
    session[:player_two] = params[:player_two]
    erb :play
  end

  run! if app_file == $0
end
