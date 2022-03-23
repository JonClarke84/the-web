class Game
  def initialize(player_one, player_two)
    @player_one = player_one
    @player_two = player_two
    @current_turn = player_one
  end

  def attack(player)
    player.take_hit
  end

  def switch_turns
    @current_turn = @current_turn == @player_one ? @player_two : @player_one
  end

  attr_reader :player_one, :player_two, :current_turn
end
