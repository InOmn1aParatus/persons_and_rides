class Person
  attr_reader :name,
              :age,
              :intensity_max

  def initialize(details)
    @name = details['name']
    @age = details['age']
    @intensity_max = details['intensity_max']
  end

  def adult?
    @age >= 18
  end

  def pep_talk
    @intensity_max += 1
  end
end
