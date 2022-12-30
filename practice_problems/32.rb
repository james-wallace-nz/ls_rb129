# What is polymorphism and how can we implement polymorphism in Ruby?

# Polymorphism refers to the ability to interact objects of different classes in the same way because the class definition provides a common public interface. The object behaviours may differ even though their instance methods are invoked the same way.

# Provide examples:

class Dog
  def speak
    "I'm barking!"
  end
end

class Cat
  def speak
    "I'm meowing!"
  end
end

bud = Dog.new
kitty = Cat.new

puts bud.speak
# "I'm barking!"
puts kitty.speak
# "I'm meowing!"

# Objects of the `Dog` and `Cat` class respond to invocation of`speak`, but with different return values.
