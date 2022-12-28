class Vehicle
  @@wheels = 4

  def self.wheels
    @@wheels
  end
end

p Vehicle.wheels

class Motorcycle < Vehicle
  @@wheels = 2
end

p Motorcycle.wheels
p Vehicle.wheels

class Car < Vehicle; end

p Vehicle.wheels
p Motorcycle.wheels
p Car.wheels

# What does the code above output and why?

# line `9` outputs `'4'`

# line `15` outputs `'2'`
# line `16` outputs `'2'`

# line `20` outputs `'2'`
# line `21` outputs `'2'`
# line `22` outputs `'2'`




# What does this demonstrate about class variables, and why should we avoid using class variables when working with inheritance?

