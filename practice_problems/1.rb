class Person
  attr_reader :name

  def set_name
    @name = 'Bob'
  end
end

bob = Person.new
p bob.name

# What is the output and why?

# `p bob.name` outputs `nil`. This is because line `9` instantiates a new `Person` object with `Person.new` and assigns the object to the local variable `bob`. The `set_name` instance variable is not invoked, so the `@name` instance variable is not initialized. Therefore, `@name` returns `nil` when the `name` getter method is invoked on `bob` on line `10` and this is output when passed to `p` as an argument.

# What does this demonstrate about instance variables that differentiates them from local variables?

# This demonstrates that instance variables exist for an object on instantiation, but have a value of `nil` until assigned a value. Local variables do not exist until assigned and will raise a `NameError` if called before they are initialized and assigend a value.


# when an instance variable is declared on line `5`, that reference is stored in memory and assigned the value of `nil` until a value is assigned. Local variables will not be stored in memory until assignment occurs.

