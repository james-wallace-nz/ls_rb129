class FarmAnimal
  def speak
    "#{self} says "
  end
end

class Sheep < FarmAnimal
  def speak
    super + 'baa!"'
  end
end

class Lamb < Sheep
  def speak
    super + "baaaaaaa!"
  end
end

class Cow < FarmAnimal
  def speak
    super +  "mooooooo!"
  end
end

p Sheep.new.speak
p Lamp.new.speak
p Cow.new.speak

# What is output and why?

