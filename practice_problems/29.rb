# When does accidental method overriding occur, and why?

# Accidental method overriding occurs when we create a custom instance method in our custom class that has the same name as an existing Ruby method in the method lookup chain. Specifically, a method that alread exists in the `Object` class, `BasicObject` module, or `Kernel` class.

# Give an example:

class Test
  def send

  end
end

# The `Test#send` instance method overrides the `Kernel#send` method.
