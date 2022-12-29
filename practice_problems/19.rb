# What is the `attr_accessor` method, and why wouldn't we want to just add `attr_accessor` methods for every instance variable in our class?

# The `attr_accessor` method provides a getter and setter method for each instance variable that we specify. This saves us from writing a lot of repetitive, simple code to manually create getters and setters.

# We don't want to just add `attr_accessor` methods for all of our instance variables because we don't want to expose all of them publicly. We should only expose relevant instance variables with getters and/or setters where necessary.


# Give an exmample:

class Dog
  attr_accessor :name, :id

  def initialize(name, id)
    @name = name
    @id = id
  end
end

bud = Dog.new('buddy', 123)

# We may want to publicly expose the setter method for `@name` to change the name of an instance of `Dog` class.

puts bud.name
# 'buddy'
# => nil
bud.name = 'Buddy'
puts bud.name
# 'Buddy'
# => nil

puts bud.id
# 123
# => nil

# Once the `@id` for an instance of the `Dog` method has been set on initialization we may not want to allow this id to be changed. So we shouldn't use an `attr_accessor` for `:id`

bud.id = 456
puts bud.id
# 456
# => nil
