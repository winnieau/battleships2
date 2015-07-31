require 'board'

describe 'Features' do

let(:board) { Board.new }
let(:ship) { Ship.new(1) }

  it 'place the ship on the board' do
    expect { board.place(ship, 1, 1) }.not_to raise_error
  end

  it 'make sure the ship is on the board' do
    expect { board.place(ship, 11, 11) }.to raise_error "Ship is out of bounds"
  end

  it 'sets ship size to be destroyer\'s ship size' do
    ship = Ship.destroyer
    expect(ship.size).to eq 2
  end

  it 'sets ship size to be cruiser\'s ship size' do
    ship = Ship.cruiser
    expect(ship.size).to eq 3
  end

  # it 'allows the player to choose a ship size' do
  #   expect { ship.size_choices(1) }.not_to raise_error
  # end

  # it 'raise error when size choice not valid' do
  #   expect { ship.size_choices(9) }.to raise_error 'Size choice not valid'
  # end

  # it 'raise error when direction choice not valid' do
  #   expect { ship.rotate("NE")}.to raise_error 'Direction choice not valid'
  # end

 describe 'firing' do
  it 'fire at the board' do
    expect { board.fire(ship, 1, 2) }.not_to raise_error
  end
  it 'raise error when fire out of bounds' do
    expect { board.fire(ship, 11, 11) }.to raise_error 'Firing out of bounds'
  end

  it 'let the player knows that the ship has been hit' do
    board.place(ship,1,1)
    board.fire(ship,1,1)
    expect(ship.hit?).to be_truthy
  end
  it 'let the player know that the ship has been sunk' do
    board.place(ship,1,1)
    board.fire(ship,1,1)
    expect(ship.sunk?).to be_truthy
  end
 end
end
