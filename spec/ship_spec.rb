require 'ship'

describe Ship do
  subject { Ship.destroyer }

  it 'knows the size of ships' do
    expect(Ship::DESTROYER_SIZE).to eq 2
  end
  it 'knows the size of ships' do
    expect(Ship::CRUISER_SIZE).to eq 3
  end
  it 'knows the size of ships' do
    expect(Ship::SUBMARINE_SIZE).to eq 3
  end
  it 'knows the size of ships' do
    expect(Ship::BATTLESHIP_SIZE).to eq 4
  end
  it 'knows the size of ships' do
    expect(Ship::CARRIER_SIZE).to eq 5

  end


  describe '#initialize#size#direction' do
    it 'creates the size for a ship' do
      ship = Ship.destroyer
      expect(ship.size).to eq 2
    end
    it 'creates a direction status' do
      ship = Ship.destroyer
      expect(ship.direction).to eq "vertical"
    end
    it 'creates a hit status' do
      ship = Ship.new(1)
      expect(ship.hit?).to eq false
    end
    it 'creates a sunk status' do
      ship = Ship.new(1)
      expect(ship.sunk?).to eq false
    end
  end

  describe '.destroyer' do
    it 'sets the ship size to destroyer' do
      ship = Ship.destroyer
      expect(ship.size).to eq Ship::DESTROYER_SIZE
    end
  end
  describe '.cruiser' do
    it 'sets the ship size to destroyer' do
      ship = Ship.cruiser
      expect(ship.size).to eq Ship::CRUISER_SIZE
    end
  end
  describe '.submarine' do
    it 'sets the ship size to submarine' do
      ship = Ship.submarine
      expect(ship.size).to eq Ship::SUBMARINE_SIZE
    end
  end
  describe '.battleship' do
    it 'sets the ship size to battleship' do
      ship = Ship.battleship
      expect(ship.size).to eq Ship::BATTLESHIP_SIZE
    end
  end
  describe '.carrier' do
    it 'sets the ship size to carrier' do
      ship = Ship.carrier
      expect(ship.size).to eq Ship::CARRIER_SIZE
    end
  end

  describe '#rotate' do
    it {is_expected.to respond_to(:rotate)}

    it 'rotates the direction of the ship' do
      subject.rotate
      expect(subject.direction).to eq "horizontal"
    end
  end
  describe '#hit?' do
    it { is_expected.to respond_to(:hit?)}

    it 'return true when ship is hit' do
      subject.hit
      expect(subject.hit?).to eq true
    end
    it { is_expected.to respond_to(:hit) }
  end

  describe '#sunk?' do
    it { is_expected.to respond_to(:sunk?)}

    it 'return true when ship is sunk' do
      subject.hit
      expect(subject.sunk?).to eq true
    end
  end
end
