require 'action'

describe Action do
  subject(:object) { described_class }
  let(:player) { double :player }

  describe '.run' do
    it 'damages the player' do
      expect(player).to receive(:take_hit)
      object.run(player)
    end
  end
end
