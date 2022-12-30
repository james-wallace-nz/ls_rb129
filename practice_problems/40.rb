module Flight
  def fly; end
end

module Aquatic
  def swim; end
end

module Migratory
  def migrate; end
end

class Animal
end

class Bird < Animal
end

class Penguin < Bird
  include Aquatic
  include Migratory
end

pingu = Penguin.new
# pingu.fly

# What is the method lookup path that Ruby will use as a result of the call to the `fly` method?

# Penguin
# Migratory
# Aquatic
# Bird
# Animal
# Object
# Kernel
# BasicObject


# Explain how we can verify this.new

# We can call the `#ancestors` method on `pingu` to return the method lookup chain as an array. Passing this to the `puts` method will output the method lookup path.

puts Penguin.ancestors
# Penguin
# Migratory
# Aquatic
# Bird
# Animal
# Object
# Kernel
# BasicObject
