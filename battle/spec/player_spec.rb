require 'player'

RSpec.describe Player do
  subject(:billy) { Player.new('Billy') }

  describe '#name' do
    it 'returns the player name' do
      expect(billy.name).to eq 'Billy'
    end
  end
end
