# Problem by Natalie Thompson

class Person
  def initialize(name, job)
      @name = name
      @job = job
  end

  def to_s; "My name is #{@name} and I am a #{@job}"; end
end

roger = Person.new("Roger", "Carpenter")
puts roger

# Add 1 line of code for the person class
# and 1 line of code in the initalize method.

# Other than that don't change Person.

# Output:
# "My name is Roger and I am a Carpenter"


# ================================================================

# Problem received from Raul Romero

class Human
  attr_reader :name

  @@name = 'Dylan'
  # @@hair_color = 'blonde'

  def initialize(name = 'Dylan')
    @name = name
  end

  def hair_color(color)
    @@hair_color = color unless color.empty?
    "Hi, my name is #{@name} and I have #{color} hair"
  end

  def self.hair_color(color)
    @@hair_color = color unless color.empty?
    puts "Hi, my name is #{@@name} and I have #{@@hair_color} hair"
  end
end

puts Human.new('Jo').hair_color('blonde')
# Should output "Hi, my name is Jo and I have blonde hair."

puts Human.hair_color('')
# Should output "Hi, my name is Dylan and I have blonde hair."


# ================================================================

# Problem received from Raul Romero

class Human
  attr_reader :name
  
  def initialize(name)
    @name = name
  end

  def equal?(other)
    name == other.name
  end

  def +(other_class)
    new_name = 'anna' + other_class.name
    Human.new(new_name)
  end

  def to_s
    name
  end
end

gilles = Human.new("gilles")
anna = Human.new("gilles")

puts anna.equal?(gilles) #should output true #
puts anna + gilles # should output annagilles

# [WTF!?]


# ================================================================

# describe what the code below outputs and why from Joseph Ochoa

module Attackable
  def attack
    'attacks!'
  end
end

class Characters
  attr_accessor :name, :characters
  
  def initialize(name)
    #
    self.name
    @characters = []
  end
  
  def display
    name
  end
  
  protected

  attr_reader :name
  attr_writer :name
end

class Monster < Characters
  include Attackable
  
  def initialize(name)
    super
  end
end

class Barbarian < Characters
  def ==(other)
    if(super.self == super.self) #
      super.self == super.self
    end
  end
end

conan = Barbarian.new('barb')
rob = Monster.new('monst')
conan.characters << rob
p conan.display

# On `line 136` a new instance of the `Barbarian` class is intantiated and assigned to the local variable `conan`.

# When the new instance is intantiated on `line 136`, the String `'barb'` is passed in as an argument to `new`. This passes it as an argument to `Characters#initialize` as there is no initialize method in the `Barbarian` class definition. `initialize` does nothing with the String passed in as the `name` parameter in its method deinition.

# `lines 137 and 138` have no effect on the output on `line 139`.

# On `line 139`, the `display` instance method is invoked on `conan`. On `line 111`, this invokes the `name` getter method, which is protected. As `name` is invoked from inside the class no error is raised. The `@name` instance variable as not been set so returns `nil`. `display` returns `nil`, which is passed as an argument to the `p` method and output.

p rob
# # <Monster:0x0000000116879e90 @characters=[]>
p conan.characters
# [#<Monster:0x0000000116879e90 @characters=[]>]
# p conan.name
# NoMethodError (protected)

bob = Barbarian.new('bob')
# p conan == bob
# NoMethodError (undefined method `self` for false:FalseClass


# ================================================================

# From Joseph Ochoa

# give class Barbarian the functionality of the Monster instance attack method:

# Direct Inheritance:

class Monster
  def attack
    "attacks!"
  end
end

class Barbarian < Monster; end

  # If you used class inheritance, now try doing it without class inheritance directly.

# Indirect Inheritance:

class Character
  def attack
    "attacks!"
  end
end

class Monster < Character; end

class Barbarian < Character; end

  # If you used modules, now try not using modules

# Modules:

module Attackable
  def attack
    "attacks!"
  end
end

class Monster
  include Attackable
end

class Barbarian
  include Attackable
end

  # If you used duck typing, now don't use duck typing

# Duck Typing:

class FightRing
  attr_reader :characters

  def initialize
    @characters = []
  end

  def fight
    @characters.each do |character|
      character.attack
    end
  end
end

class Monster
  def attack
    eat
  end

  def eat
    puts "Teeth attack!"
  end
end

class Barbarian
  def attack
    sword
  end

  def sword
    puts "Sword attack!"
  end
end

monster = Monster.new
barbarian = Barbarian.new
fight_ring = FightRing.new

fight_ring.characters << monster << barbarian
fight_ring.fight


# ================================================================

# Without adding any methods below, implement a solution; originally by Natalie Thompson,
# this version by Oscar Cortes

class ClassA
  attr_reader :field1, :field2
  
  def initialize(num)
    @field1 = "xyz"
    @field2 = num
  end
end

class ClassB
  attr_reader :field1

  def initialize
    @field1 = "abc"
  end
end


obj1 = ClassA.new(50)
obj2 = ClassA.new(25)
obj3 = ClassB.new


p obj1.field2 > obj2.field2
p obj2.field1 > obj3.field1


# ========================================================================

# Unknown

class BenjaminButton
  INITIAL_APPEARANCE_AGE = 100

  attr_accessor :actual_age
  attr_reader :appearance_age

  def initialize
    @actual_age = 0
    @appearance_age = INITIAL_APPEARANCE_AGE - actual_age
  end

  def get_older
    self.actual_age += 1
    look_younger
  end

  def look_younger
    @appearance_age -= 1
  end
end

class BenjaminButton
  # overrides line 256
  # def get_older
  #   self.actual_age += 2
  #   look_younger
  # end

  def die
    self.actual_age = 100
    @appearance_age = 0
  end
end

# Second class definition appears to merge with first and will override first if same method names

benjamin = BenjaminButton.new
p benjamin.actual_age # => 0
p benjamin.appearance_age # => 100

benjamin.actual_age = 1
p benjamin.actual_age # 1

benjamin.get_older
p benjamin.actual_age # => 2
p benjamin.appearance_age # => 99

benjamin.die
p benjamin.actual_age # => 100
p benjamin.appearance_age # => 0


# ========================================================================

# Originally by Natalie Thompson, this version by James Wilson

class Wizard
  attr_reader :name, :hitpoints

  def initialize(name, hitpoints)
    @name = name
    @hitpoints = hitpoints
  end

  def fireball
    'casts Fireball for 500 damage!'
  end
end

class Summoner < Wizard
  attr_reader :souls

  def initialize(name, hitpoints)
    # only add one line here
    super(name, hitpoints)
    @souls = []
  end

  def soul_steal(character)
    @souls << character
  end
end

gandolf = Summoner.new('Gandolf', 100)
p gandolf.name # => "Gandolf"

valdimar = Wizard.new('Valdimar', 200)
p valdimar.fireball #=> "casts fireball for 500 damage!"

p gandolf.hitpoints #=> 100

p gandolf.soul_steal(valdimar) #=> [#<Wizard:0x000055d782470810 @name="Valdimar", @hitpoints=200>]

p gandolf.souls[0].fireball #=> "casts fireball for 500 damage!"


# ========================================================================

# LS Man...legend says LS Man first appeared in SPOT.

module Flightable
  def fly
    "I am #{@name}, I am a #{self.class}, and I can fly!"
  end
end

class Superhero
  include Flightable
  attr_accessor :ability

  def self.fight_crime
    puts "I am #{self}!"
    temp = Superhero.new('LSMan!')
    temp.ability = Ability.new('coding skills')
    temp.announce_ability
  end

  def initialize(name)
    @name = name
  end

  def announce_ability
    puts "I fight crime with my #{ability} ability!"
  end
end

class LSMan < Superhero; end

class Ability
  attr_reader :description

  def initialize(description)
    @description = description
  end

  def to_s
    description
  end
end

superman = Superhero.new('Superman')

p superman.fly # => I am Superman, I am a superhero, and I can fly!

LSMan.fight_crime
# => I am LSMan!
# => I fight crime with my coding skills ability!

# # ========================================================================
