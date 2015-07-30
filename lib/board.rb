require_relative 'ship'
class Board
  def initialize
    @board_size = [10, 10]
    @board = Array.new(@board_size[0]) {Array.new(@board_size[1]) {"w"}}
  end

  attr_reader :board

  def place(ship, x, y)
    fail "Ship is out of bounds" if board[y-1] == nil || board[y-1][x-1] == nil
    fail "Existing ship already at that location!" if board[y-1][x-1] != "w"
    board[y-1][x-1] = "s"
  end
  def fire(ship, x, y)
    fail "Firing out of bounds" if board[y-1] == nil || board[y-1][x-1] == nil
    
    if board[y-1][x-1] == "s" 
      ship.hit 
      board[y-1][x-1] = "x"
    end

  end
end

