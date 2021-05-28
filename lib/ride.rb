class Ride
  attr_reader :name,
              :cost,
              :intensity,
              :passengers
  
  def initialize(name, cost, intensity)
    @name = name
    @cost = cost
    @intensity = intensity
    @passengers = []
  end
end