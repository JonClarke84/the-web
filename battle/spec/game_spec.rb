require 'game'

describe Game do
  subject(:game) { Game.new(player_one, player_two) }
  let(:player_one) { double :player }
  let(:player_two) { double :player }

  describe '#attack' do
    it 'player two takes 10 damage' do
      expect(player_two).to receive(:take_hit)
      game.attack(player_two)
    end
  end

  describe '#player_one' do
    it 'gets player one' do
      expect(game.player_one).to eq(player_one)
    end
  end

  describe '#player_two' do
    it 'gets player two' do
      expect(game.player_two).to eq(player_two)
    end
  end
end
