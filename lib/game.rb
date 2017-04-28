require './lib/player.rb'

class Game

  attr_reader :turns

  def initialize(player_1, player_2)
    @players = [player_1, player_2]
    @turns = 0
  end

  def turn?
    @turns.even? ? player_1 : player_2
  end

  def player_1
  @players.first
  end

  def player_2
    @players.last
  end

  def attack(player)
    player.receive_damage
    @turns += 1
  end

end
