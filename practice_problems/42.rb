class Cat
  def initialize(name, coloring)
    @name = name
    @coloring = coloring
  end

  def purr; end

  def jump; end

  def sleep; end

  def eat; end
end

max = Cat.new('Max', 'tabby')
molly = Cat.new('Molly', 'gray')

# Do `molly` and `max` have the same states and behaviours in the code above?

# `max` and `molly` have the same behaviours but different states. The behaviours available to all instances of the `Cat` class are `purr`, `jump`, `sleep`, and `eat`. Each instance of the `Cat` class will have its own states of `@name` and `@coloring`.


# Explain why or why not, and what this demonstrates about objects in Ruby.

# This demonstrates that objects of a class have the same behaviours but different attributes
