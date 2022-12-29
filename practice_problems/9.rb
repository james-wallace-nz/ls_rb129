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

# `line 13` outputs an `ArgumentError (given 1, expected 0)

# When a new instance of the `Bear` class is intantiated on `line 13` with `Bear.new` an argument, `'black'`, is passed into the `initialize` method as the `color` parameter.

# When `super` is called on `line 8` the `initialize` method in the parent `Animal` class is invoked. When `super` is called without empty parentheses, all arguments passed into the `Bear` `initialize` instance method are passed into the parent `initialize` method. This means `'black'` is passed into the `initialize` method on `line 2` which is defined with no parameters. Hence, an ArgumentError is raised.`


# What does this demonstrate about `super`?

# This demonstrates that `super` will pass all arguments to the parent class method with the same name unless empty parenthese or specified arguments are used.
