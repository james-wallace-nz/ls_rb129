class Animal
  attr_accessor :name

  def initialize(name)
    @name = name
  end
end

class GoodDog < Animal
  def initialize(color)
    super
    @color = color
  end
end

bruno = GoodDog.new('brown')
p bruno

# What is output and why?

# Line `17` outputs a string representation of `bruno` an instance of the `GoodDog` class. this includes the class, an encoding of the object and the object's instance variables, which are `@name` and `@color`: `# <GoodDog: @name='brown' @color='brown'>`

# Both `@name` and `@color` have the value `brown`, which was passed in when `bruno` was initialized.

# when `super` is invoked on line `11` without arguments or empty parentheses, all arguments passed into `initialize` via `GoodDog.new` are passed to the parent class `initialize` method.

# The `Animal` `initialize` method assigns the `name` argument to the `@name` instance variable.

# Line `12` then assigns the `color` argument to the `@color` instance variable.


# What does this demonstrate about `super`?

# This demonstrates that if `super` is called without specific arguments passed in or empty parentheses, then all arguments passed into `initialize` in the sub-class will be passed to the parent class `initialize` method.
