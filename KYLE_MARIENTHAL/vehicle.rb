#class
class Vehicle
  #instance attribute is the @ symbol
  attr_accessor :engine
  def initialize engine, weight, capacity, mileage
    @engine = engine
    @weight = weight
    @capacity = capacity
    @mileage = mileage
    puts "inside the initialize"
  end

  def to_s
    "Engine: #{@engine}, Weight: #{@weight}, Capacity: #{@capacity}"
  end

  def turnOn
    "vrooom"
  end

end

#object of Vehicle
vehicle = Vehicle.new "gas", 3000, 6
puts vehicle #gives you the location in the memory
puts vehicle.turnOn
