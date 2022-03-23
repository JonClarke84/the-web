require 'sinatra'
require 'sinatra/reloader'
require_relative 'lib/player'

class Battle < Sinatra::Base
  configure :development do
    register Sinatra::Reloader
  end

  enable :sessions

  get '/' do
    erb :index
  end

  get '/names' do
    $player_one = Player.new(params[:player_one])
    $player_two = Player.new(params[:player_two])
    redirect to('/play')
  end

  get '/attack' do
    @player_one_name = $player_one.name
    @player_two_name = $player_two.name
    erb :attack
  end

  get '/play' do
    @player_one_name = $player_one.name
    @player_two_name = $player_two.name
    erb :play
  end

  run! if app_file == $0
end
