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

# What can executing `Triangle.sides` return?


# What can executing `Triangle.new.sides` return?


# What does this demonstrate about class variables?

