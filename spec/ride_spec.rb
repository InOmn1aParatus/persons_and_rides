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
end