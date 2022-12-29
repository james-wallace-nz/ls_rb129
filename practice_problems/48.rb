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

