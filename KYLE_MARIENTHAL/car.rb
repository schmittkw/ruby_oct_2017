require_relative "vehicle"
class Car < Vehicle
  def initialize engine, weight, capacity, wheels, style
    super engine, weight, capacity

    @wheels = wheels
    @style = style
  end

  def addMileage *miles
    miles.each {|i| @mileage += i}
  end

  def to_s
    "#{@super}, Wheels: #{@wheels}, Style: #{@style}"
  end
end

car = Car.new 'gas', 3000, 4, 4, 'sedan'

car.engine = 'propane'

car.addMileage 50, 70, 200, 66, 4354
puts car.mileage
