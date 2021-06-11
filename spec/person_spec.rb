require './lib/person'

RSpec.describe Person do
  describe 'instantiation' do
    before :each do
      @aurelia = Person.new({ 'name' => 'Aurelia', 'age' => 18, 'intensity_max' => 5 })
      @taylor = Person.new({ 'name' => 'Taylor', 'age' => 12, 'intensity_max' => 3 })
    end

    it 'exists' do
      expect(@aurelia).to be_a(Person)
      expect(@taylor).to be_a(Person)
    end

    it 'has attributes' do
      expect(@aurelia.name).to eq('Aurelia')
      expect(@aurelia.age).to eq(18)
      expect(@aurelia.intensity_max).to eq(5)
      expect(@taylor.name).to eq('Taylor')
      expect(@taylor.age).to eq(12)
      expect(@taylor.intensity_max).to eq(3)
    end
  end

  describe 'methods' do
    before :each do
      @aurelia = Person.new({ 'name' => 'Aurelia', 'age' => 18, 'intensity_max' => 5 })
      @taylor = Person.new({ 'name' => 'Taylor', 'age' => 12, 'intensity_max' => 3 })
    end

    it 'confirms adulthood' do
      expect(@aurelia.adult?).to eq(true)
      expect(@taylor.adult?).to eq(false)
    end

    it 'increases max intensity with pep talk' do
      @aurelia.pep_talk
      @taylor.pep_talk
      expect(@aurelia.intensity_max).to eq(6)
      expect(@taylor.intensity_max).to eq(4)
    end
  end
end
