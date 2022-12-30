class Cat
end

whiskers = Cat.new
ginger = Cat.new
paws = Cat.new

# If we use `==` to compare the individual `Cat` objects in the code above, will the return value be `true`? Why or why not?

# As no custom `==` instance method is defined in the `Cat` class, the method lookup path will find such a method in the `BasicObject` parent class. The `BasicObject#==` method will return `true` if the two objects are the same object. Thefore, the above code will return `false` because `whiskers`, `ginger` and `paws` are different object instances of the same `Cat` class.


# What does this demonstrate about classes and objects in Ruby as well as the `==` method?

# This demonstrates that objects of a class may have the same instance variable values, but they are still different objects.

# This also demonstrates that without defining our own fake operator instance methods, such as `==`, Ruby will find existing methods with the same name in the method lookup chain and execute the first one it finds. If we want to change the default behaviour of the existing method, such as `BasicObject#==` then we need to define our own custom `==` method in our custom class.

# A custom `==` instance method for the `Cat` class may compare the values referenced by a `@age` instance variable for each object, rather than whether the two objects are the same object.
