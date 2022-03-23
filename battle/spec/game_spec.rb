require 'game'

describe Game do
  subject(:game) { Game.new }
  let(:player) { double :player }

  describe '#attack' do
    it 'player takes 10 damage' do
      expect(player).to receive(:take_hit)
      game.attack(player)
    end
  end
end
