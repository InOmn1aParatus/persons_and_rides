require './lib/person'
require './lib/ride'

RSpec.describe Ride do
  describe 'instantiation' do
    before :each do
      @millennium = Ride.new("Millennium Force", 5, 8)
    end

    it 'exists' do
      expect(@millennium).to be_a(Ride)
    end

    it 'has attributes' do
      expect(@millennium.name).to eq("Millennium Force")
      expect(@millennium.cost).to eq(5)
      expect(@millennium.intensity).to eq(8)
    end

    it 'starts with no passengers' do
      expect(@millennium.passengers).to eq([])
    end
  end

  describe 'methods' do
    before :each do
      @millennium = Ride.new("Millennium Force", 5, 8)
      @aurelia = Person.new({"name" => "Aurelia", "age" => 18, "intensity_max" => 5})
      @taylor = Person.new({"name" => "Taylor", "age" => 12, "intensity_max" => 3})
      @lauren = Person.new({"name" => "Lauren", "age" => 20, "intensity_max" => 8})
    end

    it 'adds passengers to ride' do
      @millennium.add_passenger(@aurelia)
      @millennium.add_passenger(@taylor)
      @millennium.add_passenger(@lauren)
      expect(@millennium.passengers).to eq(@aurelia, @taylor, @lauren)
    end
  end
end