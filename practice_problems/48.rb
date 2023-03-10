class Person
  def initialize(name)
    @name = name
  end
end

class Cat
  def initialize(name, owner)
    @name = name
    @owner = owner
  end
end

sara = Person.new("Sara")
fluffy = Cat.new("FLuffy", sara)

# What are the collaborator objects in the above code snippet and what makes them collaborator objects?

# Collaborator objects in the above code are `String` and `Person` objects. The `@name` instance variable for both `Person` and `Cat` objects references a `String` object. The `@owner` instance variable in the `Cat` class references a `Person` object.

# They are collaborator objects because ...

# [review]
