class Game
  attr_reader :current_turn, :player_one, :player_two

  def initialize(player_one, player_two)
    @players = [player_one, player_two]
    @player_one = player_one
    @player_two = player_two
    @current_turn = player_one
  end

  def attack(player)
    player.take_hit
  end

  def switch_turns
    @current_turn = opponent_of(current_turn)
  end

  def game_over?
    @current_turn.hp < 1
  end

  def opponent_of(the_player)
    @players.select { |player| player != the_player }.first
  end
end
