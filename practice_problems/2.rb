module Swimmable
  def enable_swimming
    @can_swim = true
  end
end

class Dog
  include Swimmable

  def swim
    "swimming!" if @can_swim
  end
end

teddy = Dog.new
p teddy.swim

# What is output and why?

`nil` is output by the `p` method on line `16`.

# The `Swimmable` module includes the initialization of an instance variable, `@can_swim` on line `3` within the `enable_swimming` instance method. `@can_swim` has been stored in memory with a value of `nil` until `enable_swimming` is invoked and `@can_swim` is assigned a value, `true`.

# Even though the `Swimmable` module has been mixed into the `Dog` class, the `enable_swimming` method is not invoked on the instance of the `Dog` class (`teddy`) before the `swim` instance method in the `Dog` class is invoked on `teddy` on line `16`. Therefore, `@can_swim` has a value of `nil` which evaluates to false on line `11`. Therefore, the `swim` method returns `nil` because the true path is not evaluated.

# What does this demonstrate about instance variables?

# This demonstrates that instance variables are stored in memory when declared (on line `3`), but have a value of `nil` until the line assigning them a value is executed.
