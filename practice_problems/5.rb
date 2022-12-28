class GoodDog
  attr_accessor :name, :height, :weight

  def initialize(n, h, w)
    @name = n
    @height = h
    @weight = w
  end

  def change_info(n, h, w)
    # name = n
    # height = h
    # weight = w
    self.name = n
    self.height = h
    self.weight = w
  end

  def info
    "#{name} weights #{weight} and is #{height} tall."
  end
end

sparky = GoodDog.new('Spartacus', '12 inches', '10 lbs')
sparky.change_info('Spartacus', '24 inches', '45 lbs')
puts sparky.info
# Spartacus weighs 10 lbs and is 12 inches tall.
# => nil

# We expect the code above to output `Spartacus weighs 45 lbs and is 24 inches tall`. WHy does our `change_info` method not work as expected?

# Lines `11`, `12` and `13` are all local variables being assigned the values `n`, `h`, and `w`. These local variables do not reassign the `@name`, `@height` and `@weight` instance variables, so `change_info` has no effect on the output on line `23`.

  # We can make `change_info` work by adding `self.` to each variable to change them from local to instance variables and use the setter methods provided by `attr_accessor` on line `2`. Alternatively, the instance variables can be referenced directly by prefixing `@`.
