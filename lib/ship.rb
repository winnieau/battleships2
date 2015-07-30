
class Ship

  attr_reader :size, :rotation

  def initialize
    @size_choices = [1]
    @rotations = ["NS", "EW"]
    @hit = false
    @sunk = false
  end

  def size_choices(size)
    fail "Size choice not valid" unless @size_choices.include?(size)
    @size = size
  end

  def rotate(direction)
    fail "Direction choice not valid" unless @rotations.include?(direction)
    @rotation = direction
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
