class Playground
  attr_reader :name, :location, :rides

  def initialize(name, location)
    @name = name
    @location = location
    @rides = []
  end

  def add_ride(ride)
    @rides << ride
  end

  def total_revenue
    @rides.map do |ride|
      ride.cost * ride.passengers.length
    end.sum
  end
end
