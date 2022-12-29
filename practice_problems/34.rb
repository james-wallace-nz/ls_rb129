module Walkable
  def walk
    "#{name} #{gait} forward"
  end
end

class Person
  include Walkable

  attr_reader :name

  def initialize(name)
    @name = name
  end

  private

  def gait
    "strolls"
  end
end

class Cat
  include Walkable

  attr_reader :name

  def initialize(name)
    @name = name
  end

  private

  def gait
    "saunters"
  end
end

mike = Person.new("Mike")
p mike.walk
# "Mike strolls forward"
# => nil

kitty = Cat.new('Kitty')
p kitty.walk
# "Kitty saunters forward"
# => nil

# What is returned/output in the code?



# Why did it make more sense to use a module as a mixin versus defining a parent class and using class inheritance?

