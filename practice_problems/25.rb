class Person
  def initialize(n)
    @name = n
  end

  def get_name
    @name
  end
end

bob = Person.new('bob')
joe = Person.new('joe')

puts bob.inspect
# => #<Person:0x000055e79be5dea8 @name="bob">
puts joe.inspect
# => #<Person:0x000055e79be5de58 @name="joe">

p bob.get_name
# 'bob'
# => nil

# What does the above code demonstrate about how instance variables are scoped?

# This code demonstrates that instance variables are scoped at the level of the object and are not accessible by other objects directly.
