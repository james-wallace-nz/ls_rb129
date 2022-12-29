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

# line `9` outputs `4`
# The `Vehicle` class assigns `4` to the `@@wheels` class variable on `line 2`. On `line 9`, the Vehicle `@@wheels` class method is passed into the `p` method and `'4'` is output.

# line `15` outputs `2`
# line `16` outputs `2`

# On `line 12` the `Motorcycle` class, which inherits from the `Vehicle` class, assigns `2` to the `@@wheels` class variable. This is the same class variable inherited from the parent class, so both now reference the integer, `2`.

# line `20` outputs `2`
# line `21` outputs `2`
# line `22` outputs `2`

# The `Car` class is defined on `line 18` and sub-classes the `Vehicle` class. However, this class doesn't reassign the `@@wheels` class variable, so it still references the integer `2`.


# What does this demonstrate about class variables, and why should we avoid using class variables when working with inheritance?

# This demonstrates that parent class class variables are inherited by sub-classes. Assignment in a sub-class affects the value referenced by the class variable in all classes that inherit from the same parent class where the class variable is first initialized.

# We should avoid using class variables when working with inheritance because we can inadvertantly change the value referenced by the class variable by reassinging it in a sub-class. This can have unintended consequences.
