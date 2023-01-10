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
p string1.object_id
# 2470591260
p string2.object_id
# 2470591240

# ----------------------------------
# Classes
# ----------------------------------

p 'string'.class
# String
p 1.class
# Integer

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

class BankAccount
  def initialize(name, password)
    @name = name
    @password = password
    @balance = 0
  end

  public

  attr_accessor :name

  def deposit(amount, password = '')
    if valid_password(password)
      @balance += amount
    else
      puts 'Invalid password'
    end
  end

  def withdrawal(amount, password = '')
    if valid_password(password)
      if valid_withdrawal(amount)
        @balance -= amount
      else
        puts 'Invalid withdrawal amount'
      end
    else
      puts 'Invalid password'
    end
  end

  def balance(password = '')
    if valid_password(password)
      puts format('$%.2f', @balance)
    else
      puts 'Invalid password'
    end
  end

  def >(other)
    password > other.password
  end

  protected

  attr_reader :password

  private

  attr_writer :balance

  def valid_withdrawal(amount)
    @balance > amount
  end

  def valid_password(password)
    @password == password
  end
end

cheque = BankAccount.new('Cheque', '123')
cheque.balance('456')
# Invalid password
cheque.balance('123')
# $0.00
cheque.deposit(500, '456')
# Invalid password
cheque.deposit(500, '123')
cheque.balance('123')
# $500.00
cheque.withdrawal(1000, '123')
# Invalid withdrawal amount
cheque.withdrawal(250, '123')
cheque.balance('123')
# $250.00

savings = BankAccount.new('Savings', '456')
savings.deposit(10_000, '456')
savings.balance('456')
# $10000.00
puts savings > cheque
# true

# ----------------------------------
# Inheritance
# Class Inheritance
# Interface Inheritance
# ----------------------------------

class ParentClass1
  def swim
    "I'm swimming"
  end
end

class ChildClass1 < ParentClass1
end

puts ChildClass1.new.swim
# I'm swimming

module Walkable
  def walk
    "I'm walking"
  end
end

class Human
  include Walkable
end

puts Human.new.walk
# I'm walking

# ----------------------------------
# Method Lookup Path
# ----------------------------------

module Swimmable

end

module Climbable
end

class ParentClass2
  include Swimmable
end

class ChildClass2 < ParentClass2
  include Climbable
end

p ChildClass2.ancestors
# [ChildClass2, Climbable, ParentClass2, Swimmable, Object, Kernel, BasicObject]

# ----------------------------------
# Super passing all arguments
# ----------------------------------

class ParentClass3
  attr_reader :name

  def initialize(name)
    @name = name
  end
end

class ChildClass3 < ParentClass3
  def initialize(name)
    super
  end
end

example15 = ChildClass3.new('Example 15')
puts example15.name
# Example 15

# ----------------------------------
# Passing super an argument
# ----------------------------------

class ParentClass4
  attr_reader :name

  def initialize(name)
    @name = name
  end
end

class ChildClass4 < ParentClass4
  attr_reader :age

  def initialize(name, age)
    super(name)
    @age = age
  end
end

example16 = ChildClass4.new('Example 16', 30)
puts example16.name
# Example 16
puts example16.age
# 30

# ----------------------------------
# No Argument
# ----------------------------------

class ParentClass5
  @@count = 0

  def initialize
    @@count += 1
  end

  def self.count
    @@count
  end
end

class ChildClass5 < ParentClass5
  def initialize(name)
    super()
    @name = name
  end
end

puts ParentClass5.count
# 0
example17 = ChildClass5.new('Example 17')
puts ParentClass5.count
# 1

# ----------------------------------
# Variable Scope with Inheritance

# Instance Variables with inheritance
# ----------------------------------

class ParentClass6
  attr_accessor :name

  def initialize(name)
    @name = name
  end
end

class ChildClass6 < ParentClass6
end

child_class_6 = ChildClass6.new('James')
puts child_class_6.name
# James

# ----------------------------------
# Class variables with inheritance
# ----------------------------------

class ParentClass7
  @@count = 0

  def self.count
    @@count
  end
end

class ChildClass7 < ParentClass7
end

puts ChildClass7.count
# 0

# ----------------------------------
# Polymorphism & Encapsulation
# ----------------------------------

# ----------------------------------
# Polymorphism
# ----------------------------------

class Car
  def move
    "I'm driving"
  end
end

class Plane
  def move
    "I'm flying"
  end
end

car = Car.new
puts car.move
# I'm driving

plane = Plane.new
puts plane.move
# I'm flying

# ----------------------------------
# Polymorphism Through Inheritance
# ----------------------------------

class Mammal
  def dive
    "I'm diving for minutes"
  end
end

class HumanBeing2 < Mammal
end

class Whale2 < Mammal
  def dive
    "I'm diving for hours"
  end
end

james = HumanBeing2.new
puts james.dive
# I'm diving for minutes

neemo = Whale2.new
puts neemo.dive
# I'm diving for hours

# ----------------------------------
# Polymorphism Through Duck Typing
# ----------------------------------

class Restaurant
  attr_accessor :name, :staff, :guests, :meals

  def initialize(name)
    @name = name
    @staff = []
    @guests = []
    @meals = []
  end

  def add_staff(staff_member)
    staff << staff_member
  end

  def add_guests(guest)
    guests << guest
  end

  def add_meal(meal)
    meals << meal
  end

  def serve_guests
    staff.each do |staff_member|
      staff_member.work(self)
    end
  end
end

class Chef
  def work(restaurant)
    cook(restaurant.meals)
  end

  def cook(meals)
    puts "I'm cooking #{meals.join(', ')}."
  end
end

class Waiter
  def work(restaurant)
    serve(restaurant.guests)
  end

  def serve(guests)
    puts "I'm serving #{guests.join(', ')}."
  end
end

restaurant = Restaurant.new('Mamma Rosa')
chef = Chef.new
waiter = Waiter.new
guest = 'James'
meal = 'steak'

restaurant.add_staff(chef)
restaurant.add_staff(waiter)
restaurant.add_guests(guest)
restaurant.add_meal(meal)
restaurant.serve_guests
# I'm cooking steak.
# I'm serving James.


# ----------------------------------
# Encapsulation
# ----------------------------------

class BankAccount2
  attr_accessor :name
  attr_reader :balance

  def initialize(name)
    @name = name
    @balance = 0
  end

  def deposit(amount)
    self.balance += amount
  end

  def withdraw(amount)
    self.balance -= amount if amount <= balance
  end

  private

  attr_writer :balance
end

cheque = BankAccount2.new('Cheque')
puts cheque.balance
# 0

# puts cheque.balance = 100
# NoMethodError: private method 'balance' called for #<BankAccount2...>

cheque.deposit(100)
puts cheque.balance
# 100
cheque.withdraw(200)
puts cheque.balance
# 100
cheque.withdraw(50)
puts cheque.balance
# 50

# ----------------------------------
# Modules
# Mixin Modules
# Module Methods
# ----------------------------------

module Jumpable
  def jump
    "I'm jumping"
  end
end

class Human3
  include Jumpable
end

class Spider
  include Jumpable
end

steph = Human3.new
puts steph.jump
# I'm jumping

incy = Spider.new
puts incy.jump
# I'm jumping

# ----------------------------------
# Namespacing
# ----------------------------------

module NameSpace
  module Walkable2
    def walk
      "I'm walking"
    end
  end

  class Example20
    include Walkable2
  end
end

example20 = NameSpace::Example20.new
puts example20.walk
# I'm walking

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



# ----------------------------------
# eql?
# ----------------------------------



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


