class Player
  def initialize(name)
    @name = name
    @hp = 100
  end

  attr_reader :name, :hp
end
