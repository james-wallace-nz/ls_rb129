class Dog
  def initialize(name)
    @name = name
  end

  def say_hello
    puts "Woof! My name is #{@name}."
  end
end

# Defines a `Dog` class with `initialize` and `say_hello` instance methods.

# The `initialize` method is invoked when a new instance of `Dog` class is intantiated. This method assigns the name passed into `Dog.new` to the `@name` instance variable.

# The `say_hello` instance method interpolates the `@name` instance variable into a string and outputs that to the screen when passed into `puts` as an argument.

# Solution:
# This code defines a `Dog` class with two methods:
# - The `#initialize` method initializes a new `Dog` object, which it does by assigning the instance variable `@name` to the dog's name specified by the argument.
# - The `#say_hello` instance method which prints a message that includes the dog's name in place of #{@name}. `#say_hello` returns `nil`

# Outputs
# Return Value
# Object mutation
