class Person
  attr_reader :name,
              :age,
              :intensity_max

  def initialize(details)
    @name = details[:name]
    @age = details[:age]
    @intensity_max = details[:intensity_max]
  end
end