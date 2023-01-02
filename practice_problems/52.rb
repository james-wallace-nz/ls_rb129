class Cat
  attr_accessor :type, :age

  def initialize(type)
    @type = type
    @age = 0
  end

  def make_one_year_older
    self.age += 1
    # @age += 1
  end
end

kitty = Cat.new('tabby')
puts kitty.age
kitty.make_one_year_older
puts kitty.age

# In the `make_one_year_older` method we have used `self`. What is another way we could write this method so we don't have to use the `self` prefix?

# @age += 1


# Which use case would be preferred according to best practices in Ruby, and why?

# Best practice is to use `self.age` rather than `@age`. "Avoid `self` where not required. (It is only required when calling a `self` write accessor). In this case, `age` is a write accessor.
