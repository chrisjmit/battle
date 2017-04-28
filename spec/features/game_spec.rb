require 'Game'

describe Game do

  subject(:game) { described_class.new(player_1, player_2)}
  let(:player_1) { double :player }
  let(:player_2) { double :player }
  #let(:receive_damage) { double :receive_damage }


  describe "#attack" do

    it "damages player 2 on turn 1" do
      expect(player_2).to receive(:receive_damage)
      expect(player_1).to_not receive(:receive_damage)
      game.attack
    end

    it "damages player 1 on turn 2" do
      allow(player_2).to receive(:receive_damage)
      game.attack
      expect(player_1).to receive(:receive_damage)
      game.attack
    end
  end

  describe "turns" do
    it "counts turns after attack" do
      allow(player_2).to receive(:receive_damage)
      game.attack
      expect(game.turns).to eq 1
    end

    it "starts on player_1's turn" do
      expect(game.current_player).to eq player_1
    end

    it "switches between players every turn" do
      allow(player_2).to receive(:receive_damage)
      game.attack
      expect(game.current_player).to eq player_2
    end

    it "can return the current opponent" do
      expect(game.current_opponent).to eq player_2
    end

  end

end
