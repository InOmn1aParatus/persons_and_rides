require './lib/person'

RSpec.describe Person do
  describe 'instantiation' do
    before :each do
      @aurelia = Person.new({"name" => "Aurelia", "age" => 18, "intensity_max" => 5})
      @taylor = Person.new({"name" => "Taylor", "age" => 12, "intensity_max" => 3})
    end

    it 'exists' do
      expect(@aurelia).to be_a(Person)
      expect(@taylor).to be_a(Person)
    end
  end
end