# What are the use cases for `self` in Ruby, and how does `self` change based on the scope it is used in?

# The use cases for `self` are:
# - defining a class method with `self.method_name` so that `self` refers to the class itself.
# - referring to the instance that invoked an instance method with `self.` within the instance method definition when invoking a setter method
#   - in a mix-in module when we want to reference a constant that is defined within the class that the module is mixed into. So `self` refers to the instance that invoked the instance method defined within the module. Due to constants having lexical scope, referencing the constant within the module without `self` would raise a `NoNameError`.


# Provide examples:

module Measurable
  def length
    "#{self.class::LENGTH}"
  end
end

class Shape
  include Measurable

  attr_accessor :name

  LENGTH = 100

  def initialize(name)
    @name = name
  end

  def self.itself
    self
  end

  def change_name=(new_name)
    self.name = new_name
  end
end

puts Shape.itself
# Shape
# => nil

shape = Shape.new('name')
puts shape.name
# name
# => nil

shape.change_name = 'new_name'
puts shape.name
# new_name
# => nil

puts shape.length
# 100
# => nil

# [review]
