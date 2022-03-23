class Player
  def initialize(name)
    @name = name
    @hp = 100
  end

  def take_hit
    @hp -= 10
  end

  attr_reader :name, :hp
end
