class Character
  attr_accessor :name

  def initialize(name)
    @name = name
  end

  def speak
    "#{@name} is speaking"
  end
end

class Knight < Character
  def name
    "Sir " + super
  end
end

sir_gallant = Knight.new('Gallant')
p sir_gallant.name
p sir_gallant.speak

# What is output and returned and why?


# What would we need to change so that the last line outputs `"Sir Gallant is speaking."`?

