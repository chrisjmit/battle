require 'sinatra/base'
require './lib/game'
require './lib/player'

class Battle < Sinatra::Application

  enable :sessions

  get '/' do
    erb :index
  end

  post '/names' do
    p params
    player_1 = Player.new(params[:player_1_name])
    player_2 = Player.new(params[:player_2_name])
    $game = Game.new(player_1, player_2)
    redirect to("/play")
  end

  get '/play' do
    @game = $game
    erb :play
  end

  get '/attack' do
    @game = $game
    @game.attack
    erb :attack
  end

run! if app_file == $0
end
