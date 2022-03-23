class Game
  def initialize(player_one, player_two)
    @player_one = player_one
    @player_two = player_two
  end

  def attack(player)
    player.take_hit
  end

  attr_reader :player_one, :player_two
end
