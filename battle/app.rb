require 'sinatra'
require 'sinatra/reloader'
require_relative 'lib/player'
require_relative 'lib/game'

class Battle < Sinatra::Base
  configure :development do
    register Sinatra::Reloader
  end

  enable :sessions

  get '/' do
    erb :index
  end

  get '/names' do
    player_one = Player.new(params[:player_one])
    player_two = Player.new(params[:player_two])
    $game = Game.new(player_one, player_two)
    redirect to('/play')
  end

  get '/attack' do
    @game = $game
    @game.attack(@game.player_two)
    @game.switch_turns
    erb :attack
  end

  get '/play' do
    @game = $game
    erb :play
  end

  run! if app_file == $0
end
