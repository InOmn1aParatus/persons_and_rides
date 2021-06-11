require './lib/person'
require './lib/ride'
require './lib/playground'

RSpec.describe Playground do
  describe 'instantiation' do
    it 'exists' do
      playground = Playground.new('Floopy Kingdom', 'Shmoopy Park')
      expect(playground).to be_a(Playground)
    end

    it 'has attributes' do
      playground = Playground.new('Floopy Kingdom', 'Shmoopy Park')
      expect(playground.name).to eq('Floopy Kingdom')
      expect(playground.location).to eq('Shmoopy Park')
    end

    it 'starts with no rides' do
      playground = Playground.new('Floopy Kingdom', 'Shmoopy Park')
      expect(playground.rides).to eq([])
    end
  end

  describe 'methods' do
    before :each do
      @playground = Playground.new('Floopy Kingdom', 'Shmoopy Park')
      @ride1 = Ride.new('The Whirly Dirly', 6, 10)
      @ride2 = Ride.new('Prism Hat', 7, 9)
      @ride3 = Ride.new('Crazy Train', 5, 11)
      @playground.add_ride(@ride1)
      @playground.add_ride(@ride2)
      @playground.add_ride(@ride3)
      @aurelia = Person.new({ 'name' => 'Aurelia', 'age' => 18, 'intensity_max' => 5 })
      @taylor = Person.new({ 'name' => 'Taylor', 'age' => 12, 'intensity_max' => 3 })
      @jeff = Person.new({ 'name' => 'Jeff', 'age' => 400, 'intensity_max' => 15 })
      @jeffy = Person.new({ 'name' => 'Jeffy', 'age' => 15, 'intensity_max' => 2 })
      @jefferson = Person.new({ 'name' => 'Jefferson', 'age' => 20, 'intensity_max' => 10 })
      @jefftholomew = Person.new({ 'name' => 'Jefftholomew', 'age' => 31, 'intensity_max' => 4 })
    end

    it 'adds rides to the park' do
      expect(@playground.rides).to eq([@ride1, @ride2, @ride3])
    end

    it 'reports total revenue' do
      @ride1.add_passenger(@aurelia)
      @ride1.add_passenger(@jefferson)
      @ride2.add_passenger(@taylor)
      @ride2.add_passenger(@jeffy)
      @ride3.add_passenger(@jeff)
      @ride3.add_passenger(@jefftholomew)
      expect(@playground.total_revenue).to eq(36)
    end

    # Each playground can report its most popular kids ride.
    # (The ride that has the greatest number of persons who are not adults riding it)
    xit 'reports most popular kids ride' do
      @ride1.add_passenger(@aurelia)
      @ride1.add_passenger(@jefferson)
      @ride2.add_passenger(@taylor)
      @ride2.add_passenger(@jeffy)
      @ride3.add_passenger(@jeff)
      @ride3.add_passenger(@jefftholomew)

      expect(@playground.kid_friendly).to eq(ride2)
    end
  end
end
