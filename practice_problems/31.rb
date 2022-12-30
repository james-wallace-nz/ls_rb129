# Describe the distinction between modules and classes

# Classes can define constants, class methods, class variables, instance methods and instance variables. A class can sub-class a parent/super class using `< <ParentClassName>` syntax. All of the parent class constants, class methods, class variables, instance methods and instance variables are available to the sub-classes and can be overridden in the sub-class.

# Modules allow us to define constants, instance methods and instance variables but not class methods and class variables. We can mixin the module code into specified classes using `include <ModuleName>` syntax. The classes that mixin the module don't have to have the same inheritance chain.

# Give an example:

module Walkable
  def walk
    "I'm walking."
  end
end

class ParentClass
  include Walkable

  def speak
    "I'm speaking."
  end

  def run
    "I'm running."
  end
end

class ChildClass < ParentClass
  def run
    "I'm running fast."
  end
end

class AnimalClass
  include Walkable
end

# The `AnimalClass` and `ParentClass` mixin the `Walkable` module. Instances of these classes can invoked the `walk` instance method, as can instances of the `ChildClass` due to the `ChildClass` being a sub-class of the `ParentClass`.

# The `ParentClass` defines a `#speak` instance method, which is available in the `ChildClass` as it is a sub-class of the `ParentClass`.

# The `method` is available in the `ChildClass` too, but is overridden by the `#method` definition in the `ChildClass`.
