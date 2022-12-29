class Person
  attr_accessor :name, :pets

  def initialize(name)
    @name = name
    @pets = []
  end
end

class Pet
  def jump
    puts "I'm jumping!"
  end
end

class Cat < Pet; end

class Bulldog < Pet; end

bob = Person.new('Robert')

kitty = Cat.new
bud = Bulldog.new

bob.pets << kitty
bob.pets << bud

# bob.pets.jump

# We raise an error in the code above, why?

# We raise a `NoMethodError` because the `jump` instance method has not been defined in the `Person` class and there is no Array method called `jump`. `jump` is an instance method in the `Pet` class, which is inherited by the `Cat` and `Dog` sub-classes.

# We can fix this by changing it to:
bob.pets.each do |pet|
  pet.jump
end


# What do 'kitty' and 'bud' represent in relation to our 'Person' object?

  # `'kitty'` and `'bud'` as instances of the `Cat` and `Dog` classes, respectively, represent collaborator objects in relation to `bob` our instance of the `Person` class.
