# How and why would we implement a fake operator in a custom class?

# We implement fake operators by creating instance methods for a class with the name of the fake operator.

# We create fake operators to provided added behaviours to instances of our custom class while utilising Ruby syntactic sugar.

# Fake operators are useful as they provide common behaviours to our custom classes using operator syntax that we use regularly elsewhere, like `+` and `==`.

# Give an example:

class Team
  attr_reader :name, :members

  def initialize(name)
    @name = name
    @members = []
  end

  def <<(player)
    members << player
  end
end

# The Team#<< instance method is a fake operator. This will add a new player to the array referenced by the @members instance variable.
