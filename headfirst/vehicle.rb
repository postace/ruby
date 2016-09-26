# Inheritance in Ruby

class Vehicle

  attr_accessor :odometer
  attr_accessor :gas_used

  def accelerate
    puts "Floor it!"
  end

  def sound_horn
    puts "Beep! Beep!"
  end

  def steer
    puts "Turn front 2 wheels."
  end

  def mileage
    @odometer / @gas_used
  end
end

class Car < Vehicle
  def odometer=(new_value)
    @banana = new_value
  end
  def odometer
    @banana
  end
  def gas_used=(new_value)
    @apple = new_value
  end
  def gas_used
    @apple
  end
end

class Truck < Vehicle

  attr_accessor :cargo

  def load_bed(contents)
    puts "Securing #{contents} in the truck bed."
    @cargo = contents
  end
end

class Motorcycle < Vehicle
  def steer
    puts "Turn front wheel."
  end
end

car = Car.new
car.odometer = 11322
car.gas_used = 311
puts car.instance_variables
puts ":Lifetime MPG:"
puts car.mileage


truck = Truck.new
truck.load_bed("259 bouncy balls")
puts "The Truck is carrying #{truck.cargo}."
