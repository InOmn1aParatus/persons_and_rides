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
    total = 0
    @rides.map do |ride|
      total += ride.cost * ride.passengers.length
    end
    total
  end
end