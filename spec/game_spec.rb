require 'game'
require 'player'

describe Game do
  let(:dave) { Player.new('Dave') }
  let(:mittens) { Player.new('Mittens') }

  describe '#attack' do
    it 'damages the player' do
      expect(mittens).to receive(:receive_damage)
      subject.attack(mittens)
    end
  end
end
