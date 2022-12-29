class Animal
  def eat
    puts "I eat."
  end
end

class Fish < Animal
  def eat
    puts "I eat plankton."
  end
end

class Dog < Animal
  def eat
    puts 'I eat kibble.'
  end
end

def feed_animal(animal)
  animal.eat
end

array_of_animals = [Animal.new, Fish.new, Dog.new]
array_of_animals.each do |animal|
  feed_animal(animal)
end

# What is output and why?

# I eat.
# I eat plankton
# I eat kibble
# => nil

# The `Fish` and `Dog` classes inherit from the `Animal` class, which means they both have access to the `Animal#eat` instance method. However, both the `Fish` and `Dog` classes override the `Animal#eat` method with their own `eat` instance methods.

# When `feed_animal(animal)` is called and an instance of each class is passed in as an argument that class's `eat` method is invoked. Therefore, each instance will output a different string


# How does this code demonstrate polymorphism?

# This code demonstrates polymorphism because we can interact with each class by calling the same `eat` method, but each class behaves differently according to its own `eat` method definition.
