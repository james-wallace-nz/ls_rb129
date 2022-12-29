class House
  include Comparable

  attr_reader :price

  def initialize(price)
    @price = price
  end

  def <=>(other_object)
    price <=> other_object.price
  end
end

home1 = House.new(100_000)
home2 = House.new(150_000)
puts "Home 1 is cheaper" if home1 < home2
# Home 1 is cheaper
puts "Home 2 is more expensive" if home2 > home1
# Home 2 is more expensive

# What module/method could we add to the above code snippet to output the desired output on the last 2 lines, and why?

# We can add a `<=>` instance method that returns -1, 0, or 1 if the @price instance variable of the object it is called on is less than, equal to, or greater than the @price instance variable of the other object passed in as an argumetn. We can then mixin the `Comparable` module to create the `<` and `>` methods automatically.new
