require 'board'

describe 'Features' do

  board = Board.new
  ship = Ship.new

  it 'place the ship on the board' do
    expect { board.place(ship, 1, 1) }.not_to raise_error
  end

  it 'make sure the ship is on the board' do
    expect { board.place(ship, 11, 11) }.to raise_error "Ship is out of bounds"
  end

  it 'allows the player to choose a ship size' do
    expect { ship.size_choices(1) }.not_to raise_error
  end

  it 'raise error when size choice not valid' do
    expect { ship.size_choices(9) }.to raise_error 'Size choice not valid'
  end

  it 'raise error when direction choice not valid' do
    expect { ship.rotate("NE")}.to raise_error 'Direction choice not valid'
  end



end
