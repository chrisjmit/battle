require './lib/player.rb'

class Game

  def attack(player)
    player.receive_damage
  end

end
