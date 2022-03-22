require 'sinatra'
require 'sinatra/reloader'

class Battle < Sinatra::Base
  configure :development do
    register Sinatra::Reloader
  end

  get '/' do
    'BATTLE'
  end

  run! if app_file == $0
end
