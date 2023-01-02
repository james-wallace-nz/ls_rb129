module Drivable
  def self.drive
  end
end

class Car
  include Drivable
end

bobs_car = Car.new
bobs_car.drive
# NoMethodError

# Car.drive
# NoMethodError

# What is output and why?

# Raise NoMethodError

# `self.` in a method name defines a class method. Class methods cannot be defined in module. Also, a class method has to be called on the class itself, which would be `Car` rather than an instance of the class, `bobs_car`. Therefore, a `NoMethodError` will be raised.


# What does this demonstrate about how methods need to be defined in modules, and why?

# Instance methods have to be defined in a module without `self.` prefix, as they are in a class. Class methods must be defined in the class itself.
