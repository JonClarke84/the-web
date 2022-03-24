class Action
  def initialize(player)
    @player = player
  end

  def self.run(player)
    new(player).attack
  end

  def attack
    @player.take_hit
  end
end
