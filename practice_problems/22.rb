# What are collaborator objects, and what is the purpose of using them in OOP?

# Collaborator objects are instances of other classes that an instance variable of our custom class references


# Give an example of how we would work with one:

class Human
  attr_accessor :pets

  def initialize
    @pets = []
  end
end

class Pet
  attr_reader :name

  def initialize(name)
    @name = name
  end
end

bob = Human.new
bud = Pet.new('Buddy')
bob.pets << bud
p bob.pets
# [#<Pet @name='Buddy'>]

# `bud` is an instance of the `Pet` class. Instances of the`Human` class use instances of the `Pet` class as collaborator objects because they store them in the `@pets` instance variable.

# The purpose is to abstract states and behaviours of related objects into their own classes that we can then link to the custom class via instance methods.
