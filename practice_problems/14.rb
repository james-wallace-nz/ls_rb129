class Person
  attr_reader :name

  def initialize(name)
    @name = name
  end

  def ==(other_object)
    name == other_object.name
  end
end

al = Person.new('Alexander')
alex = Person.new('Alexander')
p al == alex
# => true

# In the code above, we want to compare whether the two objects have the same name. `line 11` currently returns `false`. How could we return `true` on `line 11`?

# We need to add a `==(other_object)` instance method to the `Person` class. This method would compare the `@name` instance variable of the instance the method is invoked on to the `@name` instance variable of the instance of the same class passed in as an argument.


# Further, since `al.name == alex.name` returns `true`, does this mean the `String` objects referenced by `al` and `alex`'s `@name` instance variables are the same object? How could we prove our case?

# The `String` objects referenced by `al.name` and `alex.name` are different instances of the `String` class even though they have the same value. The `String#==` method will compare the values of the strings not whether they are the same instance of the String class.

# We can check this by comparing their object_ids
puts al.name.object_id
puts alex.name.object_id
puts al.name.object_id == alex.name.object_id
# => false
