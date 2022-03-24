require 'game'

describe Game do
  let(:player) { double :dead_player, hp: 0 }
  subject(:game) { Game.new(player, player) }

  describe 'game_over?' do
    it 'returns true if player health is zero' do
      expect(game.game_over?).to eq true
    end
  end

  describe 'game_over?' do
    let(:player) { double :player, hp: 5 }
    it 'returns false if player health is above zero' do
      expect(game.game_over?).to eq false
    end
  end
end
