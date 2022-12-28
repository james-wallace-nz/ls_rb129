module Describable
  def describe_shape
    "I am a #{self.class} and have #{SIDES} sides."
  end
end

class Shape
  include Describable

  def self.sides
    self::SIDES
  end

  def sides
    self.class::SIDES
  end
end

class Quadrilateral < Shape
  SIDES = 4
end

class Square < Quadrilateral; end

p Square.sides
p Square.new.sides
p Square.new.describe_shape

# What is output and why?

# line `25` outputs `4`
# The `sides` class method is invoked on `Square` class. `Square` inherits the `self.sides` class method from `Quadrilateral`, which inherits it from `Shape`.

# `self.sides` returns the `self::SIDES`. `self` in this case is the class that `self.sides` has been called on `Square`.

# `SIDES` is a constant. Constants have lexical scope. Ruby first looks for `SIDES` in the `Square` class. Finding none, it looks in the parent class, `Quadrilateral` and finds it there. This returns 4.


# line `26` outputs `4`
# `Square.new` instantiates a new object instance of the `Square` class. The `sides` instance method is then invoked on this object. Ruby looks for this method in the method lookup chain and finds it in the `Shape` class and invokes it.

# `self.class` on line `15` returns `Square`, the class that `sides` was invoked on. The `sides` method returns the `SIDES` constant for this class. `SIDES` is found in the method lookup chain in the `Shape` class and 4 is returned.


# line `27` outputs `NameError`
# `Square.new` instantiates a new object instance of the `Square` class. The `describe_shape` instance method from the mixed in `Describable` module is invoked on this instance.

# `describe_shape` returns a string with `self.class` and `SIDES` interpolated.

# `self.class` returns the class that the method was called on, which is `Square`.

# `SIDES` is a constant. Constants have lexical scope, so Ruby will look in the `Describable` module for this constant. Modules don't have parent modules/classes, so there is no method lookup chain to search when Ruby can't find the `SIDES` constant in `Describable`. Therefore, this will raise a `NameError`.


# What does this demonstrate about constant scope?

# This demonstrates that constants have lexical scope. Ruby will first search the class where the constant was referenced. Ruby will then search the method lookup chain. This means that constants referenced in a module that were declared in a class must be prefixed with `self.` in order for Ruby to find the constant in class method lookup chain.


# What does `self` refer to in each of the 3 methods above?

# The `self` in `self::SIDES` in the `self.sides` class method refers to the class the method is called on.

# The `self` in `self.class::SIDES` in the `sides` instance method refers to the instance of the class that the method was called on.

# The `self` in `self.class` in the `describe_shape` instance method refers to the instance of the class that the method was called on
