class GoodDog
  DOG_YEARS = 7

  attr_accessor :name, :age

  def initialize(n, a)
    self.name = n
    self.age = a * DOG_YEARS
  end
end

sparky = GoodDog.new('Sparky', 4)
puts sparky

# What is output and why?

#<GoodDog: object_encoding>

# The `@name` and `@age` instance variables are not initialized (e.g. `@name = n`), so these variables are not included in the string representation of the object that is output on `line 13`.


# How could we output a message of our choice instead?

# We can add a `to_s` method to the `GoodDog` class definition to output a message of our chosing when an object of this class is passed as an argument to the `puts` method.


# How is the output above different than the output of the code below, and why?

class GoodDogB
  DOG_YEARS = 7

  attr_accessor :name, :age

  def initialize(n, a)
    @name = n
    @age = a * DOG_YEARS
  end
end

sparky_b = GoodDogB.new('Sparky', 4)
p sparky_b

#<GoodDog: object_encoding @name='Sparky', @age=28>

# The second GoodDog class initializes the `@name` and `@age` instance variables in the `initialize` instance method and assigns the arguments of `n` and `a` to them. The string representation of the object that is output when the object is passed to the `puts` method includes the `@name` and `@age` instance variables that have been initialized. The first GoodDog class does not include these instance variables because they were not initialized withiin the `initialize` method.
