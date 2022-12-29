class AnimalClass
  attr_accessor :name, :animals

  def initialize(name)
    @name = name
    @animals = []
  end

  def <<(animal)
    animals << animal
  end

  def +(other_class)
    # animals + other_class.animals
    temp_animals = AnimalClass.new('Temp Animals')
    temp_animals.animals = animals + other_class.animals
    temp_animals
  end
end

class Animal
  attr_reader :name

  def initialize(name)
    @name = name
  end
end

mammals = AnimalClass.new('Mammals')
mammals << Animal.new('Human')
mammals << Animal.new('Dog')
mammals << Animal.new('Cat')

birds = AnimalClass.new('Birds')
birds << Animal.new('Eagle')
birds << Animal.new('Blue Jay')
birds << Animal.new('Penguin')

some_animal_classes = mammals + birds

p some_animal_classes

# #<AnimalClass:0x00000001048a5750
#   @name="Temp Animals",
#   @animals=[
               #<Animal:0x00000001048a59a8 @name="Human">,
               #<Animal:0x00000001048a5958 @name="Dog">,
               #<Animal:0x00000001048a5908 @name="Cat">,
               #<Animal:0x00000001048a5840 @name="Eagle">,
               #<Animal:0x00000001048a57f0 @name="Blue Jay">,
               #<Animal:0x00000001048a57a0 @name="Penguin">
             # ]>

p some_animal_classes.class
# Array
# now
# AnimalClass
# => nil


# What is output?

# [#<Animal: @name='Human'>, #<Animal: @name='Dog'>, #<Animal: @name='Cat'>, #<Animal: @name='Eagle'>, #<Animal: @name='Blue Jayt'>, #<Animal: @name='Penguin'>] is output.
# => nil


# Is this what we would expect when using `AnimalClass#+`?

# The `+(other_class)` method in the `AnimalClass` class definition returns an `Array` rather than a new instance of the `AnimalClass` class.

# We would expect that adding two instances of the `AnimalClass` class would return a new instance of the `AnimalClass` class.


# If not, how could we adjust the implementation of `AnimalClass#+` to be more in line with what we'd expect the method to return?

# We can change the `AnimalClass#+` method to return a new instance of the `AnimalClass`:

def +(other_class)
  temp_animals = AnimalClass.new('Temp Animals')
  temp_animals.animals = animals + other_class.animals
  temp_animals
end
