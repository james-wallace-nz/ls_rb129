class Shape
  @@sides = nil

  def self.sides
    @@sides
  end

  def sides
    @@sides
  end
end

class Triangle < Shape
  def initialize
    @@sides = 3
  end
end

class Quadrilateral < Shape
  def initialize
    @@sides = 4
  end
end

p Shape.sides # nil
p Triangle.sides # nil
p Quadrilateral.sides # nil

p Triangle.new.sides # 3
p Shape.sides # 3
p Triangle.sides # 3
p Quadrilateral.sides # 3

p Quadrilateral.new.sides # 4
p Shape.sides # 4
p Triangle.sides # 4
p Quadrilateral.sides # 4

# What can executing `Triangle.sides` return?

# Executing `Triangle.sides` can return `nil`, `3` or `4`.


# What can executing `Triangle.new.sides` return?

# `Triangle.new` initializes a new instance of the `Triangle` class. The `initialize` instance method called when a new instance is initialized will reassign the `Integer` `3` to the `@@sides` class variable. So `Triangle.new.sides` will always return `3`.


# What does this demonstrate about class variables?

# This demonstrates that class variables declared in parent classes can be reassigned by sub-classes and may be reassigned on initialization of instances of the parent or sub-classes
