
class Ship

  attr_reader :size, :rotation

  DESTROYER_SIZE = 2
  CRUISER_SIZE = 3

  def initialize(size)
    @size = size
    @hit = false
    @sunk = false
  end

  def self.destroyer
    new(DESTROYER_SIZE)
  end

  def self.cruiser
    new(CRUISER_SIZE)
  end

  def hit
    @hit = true
    @sunk = true
  end

  def hit?
    @hit
  end

  def sunk?
    @sunk 
  end


end
