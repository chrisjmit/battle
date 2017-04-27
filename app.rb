require 'sinatra/base'
require './lib/player'
require './lib/game'

class Battle < Sinatra::Application

  enable :sessions

  get '/' do
    erb :index
  end

  post '/names' do
    p params
    $player_1 = Player.new(params[:player_1_name])
    $player_2 = Player.new(params[:player_2_name])
    redirect to("/play")
  end

  get '/play' do
    @player_1_name = $player_1
    @player_2_name = $player_2
    erb :play
  end

  get '/attack' do
    @player_1 = $player_1
    @player_2 = $player_2
    Game.new.attack(@player_2)
    erb :attack
  end

run! if app_file == $0
end
