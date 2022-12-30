# What is encapsulation, and why is it important in Ruby?

# Encapsulation refers to the classes containing states and behaviours for object instances and hiding this code from other parts of the code base. Only public instance methods are available to invoke on instances of the class.

# Encapsulation is important in Ruby because it allows us to separate code that is only important to an object's behaviour from the rest of the code base. Only the public interface is available to interact with the object.

# This allows us to protect he behaviour of our objects and avoid unexpected results in our code.


# Give an example:

class Example
  attr_reader :name

  def initialize(name, age, password)
    @name = name
    @age = age
    @password = password
  end

  def restricted_age(key)
    if key == password
      age
    else
      "Invalid password"
    end
  end

  private
  attr_reader :age

  def password
    @password
  end
end

test = Example.new('test', 20, '123')

puts test.name
# test

# puts test.age
# NoMethodError

# puts test.password
# NoMethodError

puts test.restricted_age('123')
# 20


# [review]
