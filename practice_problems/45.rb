class Student
  attr_accessor :grade

  def initialize(name, grade = nil)
    @name = name
  end
end

ade = Student.new('Adewale')
p ade
# #<Student: @grade=nil, @name='Adewale'>

# Running the following code will not produce the output shown on the last line. Why not?


# What would we need to change, and what does this demonstrate about instance variables?

