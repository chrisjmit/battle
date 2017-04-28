require './lib/player.rb'

class Game

  attr_reader :turns

  def initialize(player_1, player_2)
    @players = [player_1, player_2]
    @turns = 0
  end

  def current_player
    @turns.even? ? player_1 : player_2
  end

  def current_opponent
    @turns.odd? ? player_1 : player_2
  end

  def player_1
    @players.first
  end

  def player_2
    @players.last
  end

  def attack
    if current_player == player_1
      player_2.receive_damage
    else
      player_1.receive_damage
    end
    @turns += 1
  end

end
