class Animal
  def initialize(name)
    @name = name
  end

  def speak
    puts sound
  end

  def sound
    "#{@name} says "
  end
end

class Cow < Animal
  def sound
    super + "moooooooooooo!"
  end
end

daisy = Cow.new('Daisy')
daisy.speak

# What does this code output and why?

# The code will output:
# Daisy says moooooooooooo!

# The `sound` instance method invoked on `daisy`, an instance of the `Cow` class first invoked `super`. This invokes the instance method of the same name in the parent class, `Animal`.

# `Animal#sound` interpolates the value referenced by the `@name` instance variable, `"Daisy"`, into a string, so will return `"Daisy says "` It returns this to the `Cow#sound` method to continue execution.

# The `Cow#sound` method then concatenates the String "moooooooooooo!" to the return value of `Animal#sound` and returns this.
