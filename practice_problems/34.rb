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

# What is returned/output in the code?

mike = Person.new("Mike")
p mike.walk
# "Mike strolls forward"
# => nil

kitty = Cat.new('Kitty')
p kitty.walk
# "Kitty saunters forward"
# => nil

The mixin module provides the `walk` instance method to instances of both the `Person` and `Cat` classes because they both `include` the `Walkable` module on `lines 8 and 24`.

# Even though both the `Person` and `Cat` classes have a `gait` instance method that is `private`, when the`walk` method is invoked on instances of these classes it is as if the `walk` method in Walkable was defined directly in those classes.

# Therefore, the `gait` instance method can be accessed and returns the value referenced by the `@gait` instance variable.

# This is then interpolated into the string in the `walk` method along with the return value of the `name` getter method, the value referenced by the `@name` instance variable.

# These strings are then output when passed into the `puts` methods on `lines 42 and 47`.


# Why did it make more sense to use a module as a mixin versus defining a parent class and using class inheritance?

# We could use inheritance and define the `walk` method in a parent class to both the `Person` and `Cat` class. However, there is no clear hierarchy where sub-classes of an ultimate parent class should always be able to walk.

# For example, an `Animal` parent class could define a `walk` instance method, but this would be inherited by a `Fish` sub-class if we define one in the future. Instances of the `Fish` class should not be able to `walk`.

# Therefore, it makes more sense to mixin the `Walkable` module only for classes where instances should be able to `walk`.
