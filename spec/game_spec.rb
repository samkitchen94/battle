require 'game'
require 'player'

describe Game do
  subject(:game) { described_class.new(player_1, player_2) }
  let(:player_1) { double :player1 }
  let(:player_2) { double :player2 }

  describe '#current_turn' do
    it 'starts as player 1' do
      expect(game.current_turn).to eq player_1
    end
  end

  describe '#switch_turns' do
    it "switches the turn" do
      expect { game.switch_turn }.to change { game.current_turn}.to eq player_2
    end
  end
  describe '#player_1' do
    it 'retreives the first player' do
      expect(game.player_1).to eq player_1
    end
  end

  describe '#player_2' do
    it 'retrieves the second player' do
      expect(game.player_2).to eq player_2
    end
  end

  describe '#attack' do
    it 'damages the player' do
      expect(player_2).to receive(:receive_damage)
      subject.attack(player_2)
    end
  end
end
