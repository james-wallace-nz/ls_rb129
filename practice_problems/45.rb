class Student
  attr_accessor :grade

  def initialize(name, grade = nil)
    @name = name
    @grade = grade
  end
end

ade = Student.new('Adewale')
p ade
# #<Student: @grade=nil, @name='Adewale'>

# Running the following code will not produce the output shown on the last line. Why not?

# The `Student` class `initialize` method does not initialize the `@grade` instance variable. As such, the `@grade` instance variable is not included in the string representaton of the object output by `line 10`:
# #<Student:0x000000011c8fdcf8 @name="Adewale">


# What would we need to change, and what does this demonstrate about instance variables?

# We have to initialize the `@grade` instance variable in the `initialize` method:
# `@grade = grade`

# This demonstrates the instance variables are not available until initialized. Also, including an argument in the initialize instance method definition does not automatically create an instance variable of the same name.
