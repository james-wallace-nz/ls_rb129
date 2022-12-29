class Student
  attr_accessor :name, :grade

  def initialize(name)
    @name = name
    @grade = nil
  end

  def change_grade(new_grade)
    # grade = new_grade
    self.grade = new_grade
  end
end

priya = Student.new('Priya')
priya.change_grade('A')
p priya.grade

# In the above code snippet, we want to return `"A"`. What is actually returned and why?

# `Line 16` returns `nil`, which is the return value of `@grade`. The `change_grade` instance method invoked on `line 15` assigns the `new_grade` argument passed in to a local variable called `grade` on `line 10`. The `@grade` instance variable is not changed by this method.

# How could we adjust the code to produce the desired result?

# We can add `self.` in front of `grade` on `line 10` so that the `@grade` setter method is invoked and the `new_grade` argument is passed in.
