class Person
  attr_accessor :name

  def initialize(name)
    @name = name
  end

  def change_name
    name = name.upcase
    # self.name = name.upcase
  end
end

bob = Person.new('bob')
p bob.name
# bob
bob.change_name
p bob.name
# NoMethodError

# In the code above, we hope to output `BOB` on line `16`. Instead, we raise an error. Why?

# On line `16`, the `change_name` instance method is invoked on `bob`, an instance of the `Person` class. On line `9`, the return value of `name.upcase`is assigned to the `name` local variable. The `name` in `name.upcase` references the local variable that it is being assigned to, which returns `nil`. This raises a NoMethodError when `String#upcase` is invoked on `nil`..

# The `name` local variable shadows the `name` getter method because variables have precedence over methods.


# How could we adjust this code to output `BOB`?

# We can change line `9` to use the setter method by prefixing `self.`. That way, `name` then calls the getter method and returns the value of the `@name` instance variable, `'bob'`.
