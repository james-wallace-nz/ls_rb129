# The following is a short description of an application that lets a customer place an order for a meal:
# - A meal always has three meal items: a burger, a side, and drink.
# - For each meal item, the customer must choose an option.
# - The application must compute the total cost of the order.

# 1. Identify the nouns and verbs we need in order to model our classes and methods.
# 2. Create an outline in code (a spike) of the structure of this application.
# 3. Place methods in the appropriate classes to correspond with various verbs.

# Nouns:
# Customer
# # Order
# Meal
# Meal Item - burger, side, drink
# Option

# Verbs:
# Place Order
# Total

class Customer
  def initialize(name)
    @name = name
  end

  def place_order
    @order = Order.new
    puts @order.total
    # @order.order
  end
end

class Order
  def initialize
    @burger = Burger.new
    @side = Side.new
    @drink = Drink.new
  end

  def meal
    [@burger, @side, @drink]
  end

  def total
    total_cost = @burger.cost + @side.cost + @drink.cost
    format("$%.2f", total_cost) # #format formats the cost to two decimal places
  end

  def to_s
    meal.map(&:to_s).join(', ')
  end
end

class MealItem
  def initialize
    @option = choose_option
  end

  def choose_option
    puts "Please choose a #{self.class} option:"
    item_options # item_options returns a list of options and prices
                      # for a particular item type
    gets.chomp
  end

  def item_options
    self.class::OPTIONS.each do |num, options|
      item_cost = options[:cost]
      puts "#{options[:name]}, cost: #{format("$%.2f", item_cost)}"
    end
  end

  def cost
    self.class::OPTIONS[@option][:cost]
  end

  def to_s
    self.class::OPTIONS[@option][:name]
  end
end

class Burger < MealItem
  OPTIONS = {
    '1' => { name: '1', cost: 11 },
    '2' => { name: '2', cost: 12 },
    '3' => { name: '3', cost: 13 }
  }
end

class Side < MealItem
  OPTIONS = {
    '4' => { name: '4', cost: 4 },
    '5' => { name: '5', cost: 5 },
    '6' => { name: '6', cost: 6 }
  }
end

class Drink < MealItem
  OPTIONS = {
    '7' => { name: '7', cost: 1 },
    '8' => { name: '8', cost: 2 },
    '9' => { name: '9', cost: 3 }
  }
end

james = Customer.new('James')
james.place_order
