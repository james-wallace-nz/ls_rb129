class Person
  TITLES = ['Mr', 'Mrs', 'Ms', 'Dr']

  @@total_people = 0

  def initialize(name)
    @name = name
  end

  def age
    @age
  end
end


test = Person.new('James')
p test.age

# What are the scopes of each of the different variables in the above code?

# TITLES is a consant and has lexical scope. This means it is available first within the class then to sub-classses?

# @@total_people is a class variable and it's scoped to the class.

# @name is an instance variable. Its scope is limited to instances of the class.

# @age is an instance variable. Its scope is limited to instances of the class. As this instance variable hasn't been initialized it will have a value of `nil` when referenced on `line 11`.


# [review]
