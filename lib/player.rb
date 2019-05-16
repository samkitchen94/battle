class Player
DEFAULT_HIT_POINTS = 100
attr_reader :name, :hit_points, :game

def initialize(name, hit_points = DEFAULT_HIT_POINTS, game = Game.new)
  @name = name
  @hit_points = hit_points
  @game = game
end

# def attack(player)
#   player.receive_damage
# end

def receive_damage
  @hit_points -= 10
end
end
