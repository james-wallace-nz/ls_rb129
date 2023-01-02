# class Test
#   def speak
#     "test says "
#   end
# end

class FarmAnimal < Test
  def speak
    "#{self} says "
  end
end

class Sheep < FarmAnimal
  def speak
    super + 'baa!'
  end
end

class Lamb < Sheep
  def speak
    super + "baaaaaaa!"
  end
end

class Cow < FarmAnimal
  def speak
    super +  "mooooooo!"
  end
end

p Sheep.new.speak
p Lamb.new.speak
p Cow.new.speak

# What is output and why?

# "#<Sheep: > says baa!"
# "#<Lamb: > says baa!baaaaaaa!"
# "#<Cow: > says mooooooo!"

# The `Sheep` and `Cow` classes directly sub-class the `FarmAnimal` class. When the `speak` instance method is invoked on a new instance of those clases, `super` is called. `super` invokes the first instance method with the same name in the method lookup hierachy, which is found in `FarmAnimal`. `FarmAnimal#speak` returns `self` interpolated with a string. `self` in this case is the object that `speak` was first invoked on, the `Sheep` and `Cow` instances. Thefore, `FarmAnimal#speak` will return the String representation of the object interpolated with `' says '` to the `speak` method in the `Sheep` and `Cow` class. The `Sheep` and `Cow` class will then interpolate a string and return, which is then passed as an argument to the `p` method and output.

# In the case of the `Lamb` class instance, `super` is invoked in the `Lamb#speak` method, which calls the parent class `Sheep#speak` method. The `Sheep#speak` method also calls `super` which calls the `FarmAnimal#speak` method. The cascade of interpolated strings returned from `FarmAnimal` then `Sheep` to `Lamb` are then interpolated again and returned. The returned String is passed to the `p` method as an argument and output.
