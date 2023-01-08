# *--------------------------------+
# |  *~  RB129 Code Snippets  ~*   |
# +--------------------------------+

# ----------------------------------
# Classes and Objects
# ----------------------------------

class Example1
end

example1 = Example1.new

# ----------------------------------
# Objects
# ----------------------------------

string1 = 'a'
string2 = 'a'
p string1.object_id   # 2470591260
p string2.object_id   # 2470591240

# ----------------------------------
# Classes
# ----------------------------------

p 'string'.class      # String
p 1.class             # Integer

# ----------------------------------
# Object Instantiation
# ----------------------------------

class Example4
end

example4 = Example4.new
p example4
# #<Example4:0x000000011c85c6a0>

# ----------------------------------
# Instance Variables
# ----------------------------------

class Example5
  def initialize(name)
    @name = name
  end
end

example5 = Example5.new('Example Name')
p example5
# #<Example5:0x00000001270df1d8 @name="Example Name">

# ----------------------------------
# Instance Methods
# ----------------------------------

class Example6
  def example_instance_method
    puts 'This is an example instance method'
  end
end

example6 = Example6.new
example6.example_instance_method
# This is an example instance method

# ----------------------------------
# Class Variables
# ----------------------------------

class Example7
  @@example_class_variable = 0
end

# ----------------------------------
# Class Methods
# ----------------------------------

class Example8
  @@example_class_variable = 0

  def self.example_class_variable
    @@example_class_variable
  end
end

puts Example8.example_class_variable
# 0

# ----------------------------------
# Instance Methods vs Class Methods
# ----------------------------------

class Example9
  def self.example_class_method
    puts 'Class method'
  end

  def example_instance_method
    puts 'Instance method'
  end
end

Example9.example_class_method
# Class method

example9 = Example9.new
example9.example_instance_method
# Instance method

# ----------------------------------
# Setter and Getter Methods
# ----------------------------------

class Example10
  def initialize(name)
    @name = name
  end

  def name
    @name
  end

  def name=(new_name)
    @name = new_name
  end
end

example10 = Example10.new('Example10')
puts example10.name
# Example10
example10.name = 'Example10 updated'
puts example10.name
# Example10 updated

# ----------------------------------
# Using attr_*
# ----------------------------------

class Example11
  attr_reader :name
  attr_writer :age
  attr_accessor :id

  def initialize(name, age, id)
    @name = name
    @age = age
    @id = id
  end
end

example11 = Example11.new('Example11', 20, '123')

puts example11.name
# Example11
puts example11.id
# 123

example11.age = 30
example11.id = '456'

puts example11.id
# 456


# ----------------------------------
# Method Access Control
# ----------------------------------

# ----------------------------------
# Public
# Private
# Protected
# ----------------------------------


# **Update**


class Example12

  def initialize(name, id)

  end

  public


  protected


  private


end




# ----------------------------------
# Inheritance
# Class Inheritance
# Interface Inheritance
# ----------------------------------



# ----------------------------------
# Method Lookup Path
# ----------------------------------




# ----------------------------------
# Super passing all arguments
# ----------------------------------

class ParentClass
  attr_reader :name

  def initialize(name)
    @name = name
  end
end

class ChildClass < ParentClass
  def initialize(name)
    super
  end
end

example15 = ChildClass.new('Example 15')
puts example15.name
# Example 15

# ----------------------------------
# Passing super an argument
# ----------------------------------

class ParentClass
  attr_reader :name

  def initialize(name)
    @name = name
  end
end

class ChildClass < ParentClass
  attr_reader :age

  def initialize(name, age)
    super(name)
    @age = age
  end
end

example16 = ChildClass.new('Example 16', 30)
puts example16.name
# Example 16
puts example16.age
# 30

# ----------------------------------
# No Argument
# ----------------------------------

class ParentClass
  @@count = 0

  def initialize
    @@count += 1
  end

  def self.count
    @@count
  end
end

class ChildClass < ParentClass
  def initialize(name)
    super()
    @name = name
  end
end

puts ParentClass.count
# 0
example17 = ChildClass.new('Example 17')
puts ParentClass.count
# 1

# ----------------------------------
# Variable Scope with Inheritance

# Instance Variables with inheritance
# ----------------------------------





# ----------------------------------
# Class variables with inheritance
# ----------------------------------





# ----------------------------------
# Polymorphism & Encapsulation
# ----------------------------------



# ----------------------------------
# Polymorphism
# ----------------------------------





# ----------------------------------
# Polymorphism Through Inheritance
# ----------------------------------





# ----------------------------------
# Polymorphism Through Duck Typing
# ----------------------------------





# ----------------------------------
# Encapsulation
# ----------------------------------





# ----------------------------------
# Modules
# Mixin Modules
# Module Methods
# ----------------------------------




# ----------------------------------
# Namespacing
# ----------------------------------





# ----------------------------------
# Self
# ----------------------------------
# Inside Instance Methods
# ----------------------------------




# ----------------------------------
# self Inside Class Definitions
# self Inside Class Methods
# ----------------------------------




# ----------------------------------
# self Outside Any Class
# ----------------------------------




# ----------------------------------
# Fake Operators and Equality
# ----------------------------------




# ----------------------------------
# Equivalence
# ----------------------------------



# ----------------------------------
# ==
# ----------------------------------




# ----------------------------------
# equal? and object_id
# ----------------------------------




# ----------------------------------
# ===
# ----------------------------------



# eql?




# ----------------------------------
# Fake Operators
# ----------------------------------



# ----------------------------------
# Comparison Methods
# ----------------------------------




# ----------------------------------
# Right and Left Shift
# ----------------------------------




# ----------------------------------
# Plus
# ----------------------------------




# ----------------------------------
# Element Setters and Getters
# ----------------------------------




# ----------------------------------
# Collaborator Objects
# ----------------------------------


