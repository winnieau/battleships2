require 'board'

describe Board do
  let (:ship){double :ship}

  describe '#place' do
    it { is_expected.to respond_to(:place).with(3).argument }
    it 'places ship in board location' do
      subject.place(ship,1,1)
    expect((subject.board)[0][0]).to eq "s"
    end
    it "Should raise an error if ship is not placed on board" do
      expect{subject.place(ship,11,11)}.to raise_error "Ship is out of bounds"
    end
    it "raise error if ship is placed on existing ship" do
      subject.place(ship,1,1)
      expect{subject.place(ship,1,1)}.to raise_error "Existing ship already at that location!"
    end
  end
  
  describe '#fire' do
    it { is_expected.to respond_to(:fire).with(3).argument }

    it "raise error when firing out of bounds" do
      expect{subject.fire(ship,11,11)}.to raise_error "Firing out of bounds"
    end
    end
    it "lets player know the targetted ship has been hit" do
      ship = Ship.new
      subject.place(ship,1,1)
      subject.fire(ship,1,1)
      expect(ship.hit?).to eq true
    end

  end
end
