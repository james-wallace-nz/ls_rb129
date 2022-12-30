# How is Method Access Control implemented in Ruby?

# Method Access Control is implemented in Ruby by invoking the `public`, `private` and `protected` methods in a class definition. Any methods defined below the `public` method will be available publicly. Any methods defined below the `private` method will not be available publicly or to other instances of the same class. Any methods defined below the `protected` method will not be available publicly, but will be available to other instances of the same class

# Provide examples of when we would use public, protected, and private access modifiers

class Example
  def initialize(name, age, password)
    @name = name
    @age = age
    @password = password
  end

  public

  def name
    @name
  end

  def >(other)
    age > other.age
  end

  def restricted_age(key)
    if key == password
      age
    else
      "Invalid password"
    end
  end

  private

  def password
    @password
  end

  protected

  def age
    @age
  end
end

# We can call the `#name` instance method publicly.

# We can call the `password` instance method within the class definition, but not publicly - for example, with the `restriced_age` method.

# We can't call the `age` instance method publicly and access the value referenced by the `@age` instance variable. But, we can call the `>` instance method publicly and pass in another object of the `Example` class for comparison.

first = Example.new('First', 15, '123')
second = Example.new('Second', 20, '456')

puts first.name
# First

# puts first.password
# NoMethodError

# puts first.age
# NoMethodError

puts first.restricted_age('123')
# 15

puts first > second
# false
