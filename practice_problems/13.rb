class Animal
  def initialize(name)
    @name = name
  end
end

class Dog < Animal
  # def initialize(name); end

  def dog_name
    "bark! bark! #{@name} bark! bark!"
  end
end

teddy = Dog.new('Teddy')
puts teddy.dog_name

# What is output and why?

# "bark! bark!  bark! bark!"

# Although `'Teddy'` is passed in as an argument to `Dog.new` on `line 15`, the `initialize` instance method in the `Dog` class does not assign this to an instance variable.

# `super` is not invoked in this `initialize` method, so the parent `Animal` class `initialize` method is not invoked with the argument. Therefore, `'Teddy'` is not assigned to the`@name` instance variable.

# When the `dog_name` instance method is invoked on `teddy`, an instance of the `Dog` class on `line 16`, the `@name` instance variable is referenced on `line 11`and will return `nil`. The string in the `dog_name` method will have nothing interpolated for the `@name` instance variable and will be returned. This string is passed in as an argument to the `puts` method and output.
