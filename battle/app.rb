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
    @game.current_turn == @game.player_one ? @game.attack(@game.player_two) : @game.attack(@game.player_one)
    erb :attack
  end

  post '/switch-turns' do
    $game.switch_turns
    redirect to('/play')
  end

  get '/play' do
    @game = $game
    erb :play
  end

  run! if app_file == $0
end
