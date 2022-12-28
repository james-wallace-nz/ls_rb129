class Animal
  def initialize
  end
end

class Bear < Animal
  def initialize(color)
    super
    @color = color
  end
end

bear = Bear.new('black')
# ArgumentError

# What is output and why?



# What does this demonstrate about `super`?

