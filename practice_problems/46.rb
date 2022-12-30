class Character
  attr_accessor :name

  def initialize(name)
    @name = name
  end

  def speak
    # "#{@name} is speaking"
    "#{name} is speaking"
  end
end

class Knight < Character
  def name
    "Sir " + super
  end
end

sir_gallant = Knight.new('Gallant')
p sir_gallant.name
# "Sir Gallant"

p sir_gallant.speak
# "Gallant is speaking"

# What is output and returned and why?

# `Line 20` outputs `"Sir Gallant"` because the `Knight#name` getter method is invoked. This adds the String `"Sir "` to the return value of the parent class `Character` `name` getter method, which is `"Gallant".

# `Line 23` outputs `"Gallant is speaking"`. This is because no `speak` instance method is defined in the `Knight` class, so Ruby looks for it in the method lookup path and finds a method with that name in the parent `Character` class.

# `Character#speak` references the `@name` instance variable directly on `line 9` rather than the `name` getter method. Therefore, the `Knight#name` getter method that adds `"Sir "` to the name is not invoked. `@name` returns `"Gallant"` which is added to the String `" is speaking"` and returned.


# What would we need to change so that the last line outputs `"Sir Gallant is speaking."`?

# We need to remove the `@` symbol on `line 9`. This would then call the `Knight#name` or `Character#name` instance method rather than reference the `@name` instance variable directly. If an instance of the `Knight` class invokes the `speak` method then `line 9` will invoke the `Knight#name` method instead of the `Character#name` method so `"Sir "` will be added to the return value of `@name` as expected.
