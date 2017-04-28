require 'Game'

describe Game do

  subject(:game) { described_class.new(player_1, player_2)}
  let(:player_1) { double :player }
  let(:player_2) { double :player }
  #let(:receive_damage) { double :receive_damage }


  describe "#attack" do
    it "damages the player" do
      expect(player_2).to receive(:receive_damage)
      game.attack(player_2)
    end
  end

  describe "turns" do
    it "counts turns after attack" do
      allow(player_2).to receive(:receive_damage)
      game.attack(player_2)
      expect(game.turns).to eq 1
    end

    it "starts on player_1's turn" do
      expect(game.turn?).to eq player_1
    end

    it "switches between players every turn" do
      allow(player_2).to receive(:receive_damage)
      game.attack(player_2)
      expect(game.turn?).to eq player_2
    end
  end

end
