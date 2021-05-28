require './lib/person'
require './lib/ride'

RSpec.describe Ride do
  describe 'instantiation' do
    before :each do
      millennium = Ride.new("Millennium Force", 5, 8)
    end

    it 'exists' do
      expect(millennium).to be_a(Ride)
    end
  end
end