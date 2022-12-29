class Person
  attr_reader :name

  def initialize(name)
    @name = name
  end

  def to_s
    "My name is #{name.upcase!}."
  end
end

bob = Person.new('Bob')
puts bob.name
puts bob
puts bob.name

# What is output on lines 14, 15, and 16 and why?

# `Line 14` outputs `Bob`.

# This is because the String `"Bob"` was passed into `Person.new` when a new instance of the Person class was intantiated and assigned to the `bob` local variable. This string was passed as an argument to the `initialize` method, which assigned it to the `@name` instance variable.

# The `name` getter method provided by `attr_reader` is invoked on `bob` on `line 14`, which returns `"Bob"`, which is then output when passed to the `puts` method as an argument.

# `Line 15` outputs `My name is BOB.`.

# On `line 15`, the `bob` instance of the `Person` class is passed as an argument to the `puts` method. `puts` automatically (implicitly?) invokes the `to_s` method on the `bob` object. On `line 9` within the `Person#to_s` instance method, the `name` getter method returns the value reference by the `@name` instance variable, which is then mutated so that each character becomes its upper case version when `upcase!` is invoked on it. The `to_s` method returns the string with `"BOB"` interpolated into it. This is passed into the `puts` method on `line 15` and output.

# `Line 16` outputs `BOB`.

# This is because the value referenced by the `@name` instance method has been permanently mutated by the `to_s` method invoked on `line 15`. `@name` now references the string with a value of `"BOB"`, which is returned when the `name` getter method is invoked on `bob` on `line 16`. This is then passed to the `puts` method and output.
