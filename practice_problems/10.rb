module Walkable
  def walk
    "I'm walking."
  end
end

module Swimmable
  def swim
    "I'm swimming."
  end
end

module Climbable
  def climb
    "I'm climbing."
  end
end

module Danceable
  def dance
    "I'm dancing."
  end
end

class Animal
  include Walkable

  def speak
    "I'm an animal, and I speak!"
  end
end

module GoodAnimals
  include Climbable

  class GoodDog < Animal
    include Swimmable
    include Danceable
  end

  class GoodCat < Animal; end
end

good_dog = GoodAnimals::GoodDog.new
p good_dog.walk

# What is the method lookup path used when invoking `#walk` on `good_dog`?

# GoodAnimals::GoodDog
# Danceable
# Swimmable
# Animal
# Walkable
# Object
# Kernel
# BasicObject

puts GoodAnimals::GoodDog.ancestors
# p good_dog.climb