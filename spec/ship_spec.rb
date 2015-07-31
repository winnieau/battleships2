require 'ship'

describe Ship do
  subject { Ship.destroyer }

  it 'knows the size of ships' do
    expect(Ship::DESTROYER_SIZE).to eq 2
  end
  it 'knows the size of ships' do
    expect(Ship::CRUISER_SIZE).to eq 3
  end

  describe '#initialize#size' do
    it 'creates the size for a ship' do
      ship = Ship.destroyer
      expect(ship.size).to eq 2
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
