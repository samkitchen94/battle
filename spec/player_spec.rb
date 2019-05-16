require 'player'

describe Player do

  it "returns the players name" do
    player = Player.new("Sam")
    expect(player.name).to eq("Sam")
  end
end
