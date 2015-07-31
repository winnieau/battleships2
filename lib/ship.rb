
class Ship

  attr_reader :size, :direction

  DESTROYER_SIZE = 2
  CRUISER_SIZE = 3
  SUBMARINE_SIZE = 3
  BATTLESHIP_SIZE = 4
  CARRIER_SIZE = 5
  def initialize(size)
    @size = size
    @hit = false
    @sunk = false
    @direction = "vertical"
  end

  def self.destroyer
    new(DESTROYER_SIZE)
  end

  def self.cruiser
    new(CRUISER_SIZE)
  end

  def self.submarine
    new(SUBMARINE_SIZE)
  end

  def self.battleship
    new(BATTLESHIP_SIZE)
  end

  def self.carrier
    new(CARRIER_SIZE)
  end

  def rotate
    @direction == "vertical" ? @direction = "horizontal" : @direction = "vertical"    
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
