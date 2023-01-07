# Written Exam Practice Questions
---

 1. What is OOP? 

    Object Oriented Programming (OOP) is a method of programming that attempts to model and simplify real world objects and the interaction between them. Classes create a template for a type of object, and instances of that class are created to represent individual objects of that type. **[update]**

  b. Why is it important?

    OOP is important because **[update]**

  c. List all the benefits of OOP?

    The benefits of OOP include:
    - **[update]**


 2. What is encapsulation? 

    Encapsulation is the ability to expose a public interface to interact with objects of a class while hiding the implementation details. **[update]**

  b. How is this achieved in Ruby?

    Encapsulation is achieved through method access control using the `public`, `protected`, and `private` methods in the class definition. Instance methods defined below each of these methods are available either publicly, only to other instances of the same class, or only to an object's own instance methods, respectively. **[update]**


 3. How does encapsulation relate to the public interface of a class?

    Public instance methods in a class are available to the rest of the program. These methods provide a public interface to interact with objects of a class. **[update]**

    Protected instance methods in a class are only available to be invoked on other instances of the same class, within the class definition. They are not available as a public interface to the rest of the program. **[update]**


 4. What is an class? What is an object? What is a module?

    A class is a template for creating objects that have different states but the same behaviours. **[update]**

    An object is an instance of a class. It has its own states but the same behaviours has other instances of the same class. **[update]**

    A module is a way to wrap up code that we want to `include` in classes as a mixin, or a way to separate class and module definitions from other parts of our code by using it as a namespace. **[update]**


 5. What are the differences between classes and modules? How do you decide which to use?

    A class is a template for instantiating objects. It also has its own class variables and class methods. **[update]**

    A module can define constants and instance methods, but can only be included into a class definition to use them. A module cannot instantiate an object. **[update]**


 6. What is instantiation? Provide an example.

    Instantiation means creating a new object from a class. **[update]**

    `Example.new`


 7. What is polymorphism? 

    Polymorphism means being able to interact with different objects using the same method invocation. **[update]**


 8. Explain two different ways to apply polymorphism in Ruby?

    The two ways to apply polymorphism are: **[update]**
    - Inheritance: sub-classes inherit instance methods from super-classes. Sub-classes may override the implementation of the super-class instance method so that objects instantiated from the sub-class has different behaviour for the same method call. 
    - Duck Typing: Providing objects of different classes with an instance method of the same name, but having different implementations in those instance methods. If the object responds to the method invocation, it can be invoked. 


 9. How does polymorphism work in relation to the public interface?

    Polymorphism relies on objects having a public interface of methods to invoke. **[update]**


10. What is duck typing?

    Duck typing is providing objects of different classes with an instance method of the same name, but having different implementations for those instance methods. If an object responds to a method invocation, it can be invoked. **[update]**

  b. How does it relate to polymorphism?

    Duck typing relates to polymorphism because we can treat objects of different classes the same way **[update]**

  c. What problem does it solve?

    Duck typing solves the problem of having to specify the method to invoke for each individual type of object that may be interacted with. With duck typing, we can invoke just one method and each object will behave in its own pre-defined way. **[update]**


11. What is inheritance?

    Inheritance is allowing sub-classes of a super-class to have access to all of the super-class class and instance methods and variables. Interface inheritance is the ability to mixin a module so that a class inherits the instance methods and variables defined in that module. **[update]**

  b. What is class inheritance? How does this work in Ruby?

    Class inheritance is where a sub-class inherits all of a super-class' class and instance methods and variables. This works by defining a class as sub-class of a super-class: **[update]**

    `class SubClass < SuperClass; end`


12. What is the difference between a superclass and a sub-class?

    A super-class is a parent class. A sub-class inherits from a parent class of all of the parent's class and instance methods and variables. The sub-class may then override these with its own class and instance methods and variables with the same names. **[update]**


13. What is a module? What is its purpose? How do we use them with our classes?

    A module is... **[update]**

    We include them in a class as a mixin module by using the `include` **[method?]** with the module name.


  b. Create a module for the class you created above and include it properly. 

    ``` ruby
    module ExampleModule
    end

    class ExampleClass
      include ExampleModule
    end

    ```

14. What is a mixin?

    **[update]**

15. When is it good to use inheritance?

    It is good to use inheritance when there is a clear hierachical structure to classes and we intend to allow super-class class and instance methods and variables to be inherited by sub-classes. This avoids repeition in our code and means we can change the definition of class and instance methods and variables in one place. It also allows us to override class and instance methods and variables in a sub-class when we want a different implementation. 

16. In inheritance, when would it be good to override a method?

    It is good to override a method when a sub-class requires a different implementation to the parent class definition. **[update]**

17. What is the method lookup path? How is it important?

    The method lookup path is how Ruby finds an instance method when invoked on an object. Ruby looks in the class for the object that the method was invoked on. If it doesn't find the method, it will look in any included modules. If Ruby still doesn't find the method, it will look in the class' parent class, and then included modules, all the way up to the Object class, Kernel module then Basic Object class. 
    
    When a method with that name is found, Ruby will execute it. If no method is found, Ruby will raise a NoMethodError. 

    The method lookup path is important becuase it determines which definition of a method Ruby will execute when a method is invoked. **[update]**

18. When defining a class, we usually focus on state and behaviors. What is the difference between these two concepts?



19. How do you initialize a new object?

    We initialize a new object with `ClassName.new`


20. What is a constructor method? Provide an example.

    A constructor method is a method that is invoked only when a new instance of a class is intantiated. In Ruby, the constructor method is called `initialize`. **[update]**

    ``` ruby
      class ExampleClass
        def initialize(name)
          @name = name
        end
      end

      new_example = ExampleClass.new('new example')
    ```


21. What is an instance variable, and how is it related to an object? Provide an example.

    An instance variable is... **[update]**

    ``` ruby
      class ExampleClass
        def initialize(name)
          @name = name
        end
      end

      new_example = ExampleClass.new('new example')
      # @name is an instance variable
    ```


22. What is an instance method? Provide an example.

    An instance method is... **[update]**


23. How do objects encapsulate state?

    Objects encapsulate state by... **[update]**


24. What is the difference between classes and objects?

    A class is a template for creating objects instances. Objects are instances of a class. **[update]**


25. How can we expose information about the state of the object using instance methods?

    We can expose information about the state of an object by providing a getter instance method for the instnace variable. **[update]**


26. What is a collaborator object, and what is the purpose of using collaborator objects in OOP?

    A collaborator object, is an object that is stored in an instance variable of another class. **[update]**

    We use collaborator objects in OOP to... **[update]**


27. What is an accessor method? Provide an example.
  
    An accessor method is... **[update]**

    ``` ruby
      class ExampleClass
        attr_accessor :name
        attr_reader :age
        attr_writer :id
      end
    ```

28. What is a getter method? Provide an example.

    A getter method is... **[update]**

    ``` ruby
      class ExampleClass
        def initialize(name)
          @name = name
        end

        def name
          @name
        end
      end

      new_example = ExampleClass.new('new example')
      puts new_example.name
    ```


29. What is a setter method? Provide an example.

    A setter method is... **[update]**

    ``` ruby
      class ExampleClass
        def initialize(name)
          @name = name
        end

        def name=(new_name)
          @name = new_name
        end
      end

      new_example = ExampleClass.new('new example')
      new_example.name = 'new name'
    ```


30. What is `attr_accessor`? Provide an example.

    `attr_accessor` is the combination of `attr_reader`, which provides getter methods, and `attr_writer`, which provides setter methods. `attr_accessor` provides both getter and setter methods for instance variables provided as symbols.

    ``` ruby
      class ExampleClass
        attr_accessor :name
      end
    ```


31. How do you decide whether to reference an instance variable or a getter method?

    


32. Why does the `.change_info` method not work as expected here?

``` ruby
class GoodDog
  attr_accessor :name, :height, :weight

  def initialize(n, h, w)
    @name = n
    @height = h
    @weight = w
  end
  
  def speak
    "#{name} says arf!"
  end
  
  def change_info(n, h, w)
    name = n
    height = h
    weight = w
  end
  
  def info
    "#{name} weighs #{weight} and is #{height} tall."
  end
end

sparky.change_info('Spartacus', '24 inches', '45 lbs')
puts sparky.info
# => Sparky weighs 10 lbs and is 12 inches tall.
```

    Inside the instance method definition for `change_info`, local variables, `name`, `height`, and `weight` are initialized and assigned the values of `n`, `h`, and `w`, respectively. `change_info` does not reassign the instance variables `@name`, `@height`, and `@weight`, so `puts sparky.info` is unchanged by `sparky.change_info('Spartacus', '24 inches', '45 lbs')`. 

    To fix this we need to add `self.` in front of `name`, `height`, and `weight` inside `change_info`, or refer to the instance variables directly with `@` in front of `name`, `height`, and `weight`.


33. When would you call a method with `self`?

    


34. What are class methods? Provide an example.


35. What are class variables and is their purpose? Provide an example.


36. What is a constant variable? Provide an example.


37. What is the default `to_s` method that comes with Ruby, and how do you override this?


38. What are some important attributes of the `to_s` method?


39. From within a class, when an instance method uses `self`, what does it reference?


40. What happens when you use `self` inside a class but outside of an instance method?


41. Why do you need to use `self` when calling private setter methods?


42. Why use `self`, and how does `self` change depending on the scope it is used in?


43. What is inheritance, and why do we use it?


44. What is class inheritance? Give an example of how to use class inheritance.


45. What is method overriding? Give an example of overriding. When would you use it?


46. Give an example of using the `super` method. When would we use it?


47. Give an example of using the `super` method with an argument.


48. When creating a hierarchical structure, under what circumstance would a module be useful?


49. What is interface inheritance, and under what circumstance would it be useful in comparison to class inheritance?


50. How is the method lookup path affected by module mixins and class inheritance?


51. What is namespacing? When is using namespacing beneficial?


52. How does Ruby provide the functionality of multiple inheritance?


53. Describe the use of modules as containers.


54. Why should a class have as few public methods as possible?


55. What is the `private` method call used for?


56. What is the `protected` keyword used for?


57. What are two rules of `protected` methods?


58. Why is it generally a bad idea to override methods from the `Object` class, and which method is commonly overridden?


59. What is the relationship between a class and an object?


60. Explain the idea that a class groups behaviors.


61. Objects do not share state between other objects, but do share behaviors


62. The values in the objects' instance variables (states) are different, but they can call the same instance methods (behaviors) defined in the class.


63. Classes also have behaviors not for objects (class methods).


64. Sub-classing from parent class. Can only sub-class from 1 parent; used to model hierarchical relationships


65. Mixing in modules. Can mix in as many modules as needed; Ruby's way of implementing multiple inheritance


66. Understand how sub-classing or mixing in modules affects the method lookup path


67. What will the following code output?

``` ruby
class Animal
  def initialize(name)
    @name = name
  end

  def speak
    puts sound
  end
  
  def sound
    "#{@name} says "
  end
end

class Cow < Animal
  def sound
    super + "moooooooooooo!"
  end
end

daisy = Cow.new("Daisy")
daisy.speak
```


68.  

``` ruby
class Person
  attr_writer :first_name, :last_name

  def full_name
    # omitted code
  end
end

mike = Person.new
mike.first_name = 'Michael'
mike.last_name = 'Garcia'
mike.full_name # => 'Michael Garcia'
```

What code snippet can replace the "omitted code" comment to produce the indicated result?


69. 

``` ruby
class Student
  attr_accessor :name, :grade

  def initialize(name)
    @name = name
    @grade = nil
  end
end

priya = Student.new("Priya")
priya.change_grade('A')
priya.grade # => "A"
```

The last line in the above code should return "A". Which method(s) can we add to the Student class so the code works as expected? 


70. In the example above, why would the following not work?

``` ruby
def change_grade(new_grade)
  grade = new_grade
end
```


71. On which lines in the following code does self refer to the instance of the `MeMyselfAndI` class referenced by `i` rather than the class itself? Select all that apply:

``` ruby
class MeMyselfAndI
  self

  def self.me
    self
  end
  
  def myself
    self
  end
end

i = MeMyselfAndI.new
```


72. Given the below usage of the Person class, code the class definition.

``` ruby
bob = Person.new('bob')
bob.name                  # => 'bob'
bob.name = 'Robert'
bob.name                  # => 'Robert'
``` 


73. Modify the class definition from above to facilitate the following  methods. Note that there is no name= setter method now.

``` ruby
bob = Person.new('Robert')
bob.name
bob.first_name
bob.last_name
bob.last_name = 'Smith'
bob.name
# => 'Robert'
# => 'Robert'
# => ''
# => 'Robert Smith'
```

Hint: let `first_name` and `last_name` be "states" and create an instance method called `name` that uses those states.


74. Now create a smart `name=`` method that can take just a first name or a full name, and knows how to set the `first_name` and `last_name` appropriately.

``` ruby
bob = Person.new('Robert')
bob.name
bob.first_name
bob.last_name
bob.last_name = 'Smith'
bob.name
bob.name = "John Adams"
bob.first_name
bob.last_name
# => 'Robert'
# => 'Robert'
# => ''
# => 'Robert Smith'
# => 'John'
# => 'Adams'
```


75. Using the class definition from step #3, let's create a few more people -- that is, Person objects.

``` ruby
bob = Person.new('Robert Smith')
rob = Person.new('Robert Smith')
```

If we're trying to determine whether the two objects contain the same name, how can we compare the two objects?


76. Continuing with our `Person` class definition, what does the below print out?

``` ruby
bob = Person.new("Robert Smith")
puts "The person's name is: #{bob}"
```


77. Let's add a `to_s` method to the class:

``` ruby
class Person
  # ... rest of class omitted for brevity
  def to_s
   name
  end
end
```

Now, what does the below output?

``` ruby
bob = Person.new("Robert Smith")
puts "The person's name is: #{bob}"
```

78. Create an empty class named `Cat`.


79. Using the code from the previous exercise, create an instance of `Cat` and assign it to a variable named `kitty`.


80. 

``` ruby
class Wedding
  attr_reader :guests, :flowers, :songs

  def prepare(preparers)
    preparers.each do |preparer|
      case preparer
      when Chef
        preparer.prepare_food(guests)
      when Decorator
        preparer.decorate_place(flowers)
      when Musician
        preparer.prepare_performance(songs)
      end
    end
  end 
end

class Chef
  def prepare_food(guests)
    # implementation
  end
end

class Decorator
  def decorate_place(flowers)
    # implementation
  end
end

class Musician
  def prepare_performance(songs)
    #implementation
  end
end
```

The above code would work, but it is problematic. What is wrong with this code, and how can you fix it?


81. What happens when you call the `p` method on an object? And the `puts` method?


82. What is a spike?


83. When writing a program, what is a sign that you’re missing a class?


84. What are some rules/guidelines when writing programs in OOP?


85. 

``` ruby
class Student
  attr_accessor :grade

  def initialize(name, grade=nil)
    @name = name
  end
end

ade = Student.new('Adewale')
ade # => #<Student:0x00000002a88ef8 @grade=nil, @name="Adewale">
```

Why does this code not have the expected return value?


86. 

``` ruby
class Character
  attr_accessor :name

  def initialize(name)
    @name = name
  end

  def speak
    "#{@name} is speaking."
  end
end

class Knight < Character
  def name
    "Sir " + super
  end
end

sir_gallant = Knight.new("Gallant")
sir_gallant.name # => "Sir Gallant"
sir_gallant.speak # => "Sir Gallant is speaking."
```

What change(s) do you need to make to the above code in order to get the expected output?


87. 

``` ruby
class FarmAnimal
  def speak
    "#{self} says "
  end
end

class Sheep < FarmAnimal
  def speak
    super + "baa!"
  end
end

class Lamb < Sheep
  def speak
    "baaaaaaa!"
  end
end

class Cow
  def speak
    super + "mooooooo!"
  end
end

Sheep.new.speak # => "Sheep says baa!"
Lamb.new.speak # => "Lamb says baa!baaaaaaa!"
Cow.new.speak # => "Cow says mooooooo!"
```

Make the changes necessary in order for this code to return the expected values.


88. 

``` ruby
class Person
  def initialize(name)
    @name = name
  end
end 

class Cat
  def initialize(name, owner)
    @name = name
    @owner = owner
  end
end

sara = Person.new("Sara")
fluffy = Cat.new("Fluffy", sara)
```

Identify all custom defined objects that act as collaborator objects within the code.


89. How does equivalence work in Ruby?


90. How do you determine if two variables actually point to the same object?


91. What is `==` in Ruby? How does `==` know what value to use for comparison?


92. Is it possible to compare two objects of different classes?


93. What do you get “for free” when you define a `==`` method?


94. What will the code below return and why?

``` ruby
arr1 = [1, 2, 3]
arr2 = [1, 2, 3]
arr1.object_id == arr2.object_id      # => ??

sym1 = :something
sym2 = :something
sym1.object_id == sym2.object_id      # => ??

int1 = 5
int2 = 5
int1.object_id == int2.object_id      # => ??
```






95. What is the `===`` method?


96. What is the `eql?`` method?


97. What is the scoping rule for instance variables?


98. 

``` ruby
class Person
  def get_name
    @name         # the @name instance variable is not initialized anywhere
  end
end

bob = Person.new
bob.get_name      # => ??
```

What is the return value, and why?


99. What are the scoping rules for class variables? What are the two main  behaviors of class variables?


100. What are the scoping rules for constant variables?


101. How does sub-classing affect instance variables?


102. 

``` ruby
class Animal
  def initialize(name)
    @name = name
  end
end

class Dog < Animal
  def initialize(name); end

  def dog_name
    "bark! bark! #{@name} bark! bark!"
  end
end

teddy = Dog.new("Teddy")
puts teddy.dog_name           # => ??
```

What will this return, and why?


103.

``` ruby
module Swim
  def enable_swimming
    @can_swim = true
  end
end

class Dog
  include Swim

  def swim
    "swimming!" if @can_swim
  end
end

teddy = Dog.new
teddy.swim
```

How do you get this code to return `“swimming”`? 


What does this demonstrate about instance variables?


104. Are class variables accessible to sub-classes?


105. Why is it recommended to avoid the use of class variables when working with inheritance?


106. 

``` ruby
class Vehicle
  @@wheels = 4

  def self.wheels
    @@wheels
  end
end

Vehicle.wheels          # => ??

class Motorcycle < Vehicle
  @@wheels = 2
end

Motorcycle.wheels       # => ??
Vehicle.wheels          # => ??

class Car < Vehicle
end

Car.wheels              # => ??
```

What would the above code return, and why?


107. Is it possible to reference a constant defined in a different class?


108. What is the namespace resolution operator?


109. How are constants used in inheritance?


110.

``` ruby
module Maintenance
  def change_tires
    "Changing #{WHEELS} tires."
  end
end

class Vehicle
  WHEELS = 4
end

class Car < Vehicle
  include Maintenance
end

a_car = Car.new
a_car.change_tires
```

Describe the error and provide two different ways to fix it.


111. What is lexical scope?


112. When dealing with code that has modules and inheritance, where does constant resolution look first?


113. 

``` ruby
class Person
  attr_accessor :name, :age

  def initialize(name, age)
    @name = name
    @age = age
  end
end

bob = Person.new("Bob", 49)
kim = Person.new("Kim", 33)
puts "bob is older than kim" if bob > kim
```

How can you make this code function? How is this possible?


114. 

``` ruby
my_hash = {a: 1, b: 2, c: 3}
my_hash << {d: 4}
```

What happens here, and why?


115. When do `shift` methods make the most sense?


116. 

``` ruby
class Team
  attr_accessor :name, :members
  
  def initialize(name)
    @name = name
    @members = []
  end
  
  def <<(person)
    members.push person
  end
  
  def +(other_team)
    members + other_team.members
  end
end
```

we'll use the same Person class from earlier

``` ruby
cowboys = Team.new("Dallas Cowboys")
cowboys << Person.new("Troy Aikman", 48)
niners = Team.new("San Francisco 49ers")
niners << Person.new("Joe Montana", 59)
dream_team = cowboys + niners               # what is dream_team?
```

What does the `Team#+`` method currently return? What is the problem with this? 

How could you fix this problem?


117. Explain how the element getter (reference) and setter methods work, and their corresponding syntactical sugar.


118. How is defining a class different from defining a method?


119. How do you create an instance of a class? 


120. What are two different ways that the getter method allows us to invoke the method in order to access an instance variable?


121. When you have a mixin and you use a ruby shorthand accessor method, how do you write the code (what order do you write the getter/setters and the mixin)? What about using a constant? 

    # mixin then accessor, constant then accessor

122. How do you define a class method?


123. 

``` ruby
class Cat
  attr_accessor :name

  def initialize(name)
    @name = name
  end
  
  def rename(new_name)
    name = new_name
  end
end

kitty = Cat.new('Sophie')
p kitty.name # "Sophie"

kitty.rename('Chloe')
p kitty.name # "Chloe"
```

What is wrong with the code above? Why? 



What principle about getter/setter methods does this demonstrate?

  # In the method `rename`, we need to prepend `self` to `name` on line 9, otherwise Ruby assumes we’re initializing a new local variable `name` and assigning it to the argument passed in through the parameter `name`.


125. Self refers to the ______ _______. calling object


126. How do you print the object so you can see the instance variables and their values along with the object?


127. When writing the name of methods in normal/markdown text, how do you write the name of an instance method? 


A class method?


128. How do you override the `to_s` method? 


130. What does the `to_s` method have to do with `puts`?


131. Using the following code, allow `Truck` to accept a second argument upon instantiation. 

Name the parameter `bed_type` and implement the modification so that `Car` continues to only accept one argument.

``` ruby
class Vehicle
  attr_reader :year
  
  def initialize(year)
    @year = year
  end
end

class Truck < Vehicle
  def initialize(year, bed_type)
    super(year)
    @bed_type = bed_type
  end
end

class Car < Vehicle
end

truck1 = Truck.new(1994, 'Short')
puts truck1.year
puts truck1.bed_type
```


132. Given the following code, modify `#start_engine` in `Truck` by appending `'Drive fast, please!'` to the return value of `#start_engine` in Vehicle.

The `'fast'`` in `'Drive fast, please!'`` should be the value of `speed`.

``` ruby
class Vehicle
  def start_engine
    'Ready to go!'
  end
end

class Truck < Vehicle
  def start_engine(speed)
    super() + "Go #{speed} please!"
  end
end

truck1 = Truck.new
puts truck1.start_engine('fast')
# Expected output:
# Ready to go! Drive fast, please!
```


133. When do you use empty parentheses with super?


134. How do you find the lookup path for a class? (lookup path stops when you find it)


135. What is namespacing, and how do you instantiate a class contained in a module?


136. When using getters and setters, in what scenario might you decide to only use a getter, and why is this important?


137. How do we create an object in Ruby? Give an example of the creation of an object.


138. What's the difference between instance and class variables?


139. What's the difference between instance and class methods?


140. Why do custom classes usually define a to_s method?


141. When are Modules used? What is interface inheritance? What is multiple inheritance?


142. What is method access control?


143. How are encapsulation and method access control related?


144. What are the differences between public, private, and protected methods?


145. What are collaborator objects? Why are they important in OOP?



---

# Written Exam Practice Code Snippets


## Explain the code / what is it an example of? / what is the output?

---

1.
```ruby
class GoodDog
end

sparky = GoodDog.new  
```
  
---

2.
```ruby
module Speak
  def speak(sound)
    puts sound
  end
end

class GoodDog
  include Speak
end

class HumanBeing
  include Speak
end

sparky = GoodDog.new
sparky.speak("Arf!")   # => ?
bob = HumanBeing.new
bob.speak("Hello!")   # => ?
```

---

3.
```ruby
module Speak
  def speak(sound)
    puts "#{sound}"
  end
end

class GoodDog
  include Speak
end

class HumanBeing
  include Speak
end

puts GoodDog.ancestors   # => ?
puts HumanBeing.ancestors   # => ?
```

---

4.
```ruby
class GoodDog
  def initialize
    puts "This object was initialized!"
  end
end

sparky = GoodDog.new   # => ?
```

---

5.
```ruby
class GoodDog
  def initialize(name)
    @name = name
  end
end

sparky = GoodDog.new("Sparky")
```

---

6.
```ruby
class GoodDog
  def initialize(name)
    @name = name
  end

  def speak
    "Arf!"
  end
end

sparky = GoodDog.new("Sparky")
puts sparky.speak   # => ?
fido = GoodDog.new("Fido")
puts fido.speak   # => ?
```

---

7.
```ruby
class GoodDog
  def initialize(name)
    @name = name
  end

  def speak
    "#{@name} says arf!"
  end
end

sparky = GoodDog.new("Sparky")
puts sparky.speak   # => ?
fido = GoodDog.new("Fido")
puts fido.speak   # => ?
```

---

8.
```ruby
class GoodDog
  attr_accessor :name, :height, :weight

  def initialize(name)
    @name = name
  end

  def speak
    "#{@name} says arf!"
  end
end

sparky = GoodDog.new("Sparky")
puts sparky.speak   # => ?
puts sparky.name   # => ?
sparky.name = "Spartacus"
puts sparky.name   # => ?
```

---

9.

What is the difference between the two?

```ruby
def speak
  "#{@name} says arf!"
end

def speak
  "#{name} says arf!"
end
```

---

10.
```ruby
def change_info(n, h, w)
  self.name = n
  self.height = h
  self.weight = w
end
```

---

11.
```ruby
# ... rest of code ommitted for brevity

def self.what_am_i
  "I'm a GoodDog class!"
end

GoodDog.what_am_i   # => ?
```

---

12.
```ruby
class GoodDog
  @@number_of_dogs = 0

  def initialize
    @@number_of_dogs += 1
  end

  def self.total_number_of_dogs
    @@number_of_dogs
  end
end

puts GoodDog.total_number_of_dogs   # => ?

dog1 = GoodDog.new
dog2 = GoodDog.new

puts GoodDog.total_number_of_dogs   # => ?
```

---

13.
```ruby
class GoodDog
  DOG_YEARS = 7

  attr_accessor :name, :age

  def initialize(n, a)
    self.name = n
    self.age  = a * DOG_YEARS
  end
end

sparky = GoodDog.new("Sparky", 4)
puts sparky.age             # => ?
```

---

14.
```ruby
class GoodDog
  DOG_YEARS = 7

  attr_accessor :name, :age

  def initialize(n, a)
    @name = n
    @age  = a * DOG_YEARS
  end

  def to_s
    "This dog's name is #{name} and it is #{age} in dog years."
  end
end

puts sparky      # => ?
```

---

15. What do the different `self`s refer to?

```ruby
class GoodDog
  # ... rest of code omitted for brevity

  def what_is_self
    self
  end

  def self.this_is_a_class_method
  end

  puts self
end
```

---

16.
```ruby
class Animal
  def speak
    "Hello!"
  end
end

class GoodDog < Animal
end

class Cat < Animal
end

sparky = GoodDog.new
paws = Cat.new
puts sparky.speak           # => ?
puts paws.speak             # => ?
```

---

17.
```ruby
class Animal
  def speak
    "Hello!"
  end
end

class GoodDog < Animal
  attr_accessor :name

  def initialize(n)
    self.name = n
  end

  def speak
    "#{self.name} says arf!"
  end
end

class Cat < Animal
end

sparky = GoodDog.new("Sparky")
paws = Cat.new

puts sparky.speak           # => ?
puts paws.speak             # => ?
```

---

18.
```ruby
class Animal
  def speak
    "Hello!"
  end
end

class GoodDog < Animal
  def speak
    super + " from GoodDog class"
  end
end

sparky = GoodDog.new
sparky.speak        # => ?
```

---

19.
```ruby
class Animal
  attr_accessor :name

  def initialize(name)
    @name = name
  end
end

class BadDog < Animal
  def initialize(age, name)
    super(name)
    @age = age
  end
end

BadDog.new(2, "bear")    # => #<BadDog:0x007fb40b2beb68 @age=2, @name="bear">
```

---

20.
```ruby
module Swimmable
  def swim
    "I'm swimming!"
  end
end

class Animal; end

class Fish < Animal
  include Swimmable
end

class Mammal < Animal
end

class Cat < Mammal
end

class Dog < Mammal
  include Swimmable
end

sparky = Dog.new
neemo  = Fish.new
paws   = Cat.new

sparky.swim                 # => ?
neemo.swim                  # => ?
paws.swim                   # => ?
```

---

21.
```ruby
module Walkable
  def walk
    "I'm walking."
  end
end

module Swimmable
  def swim
    "I'm swimming."
  end
end

module Climbable
  def climb
    "I'm climbing."
  end
end

class Animal
  include Walkable

  def speak
    "I'm an animal, and I speak!"
  end
end

puts Animal.ancestors    # => ?
```

---

22.
```ruby

class Animal
  include Walkable
end

class GoodDog < Animal
  include Swimmable
  include Climbable
end

puts GoodDog.ancestors    # => ?
```

---

23.
```ruby
module Mammal
  class Dog
    def speak(sound)
      p "#{sound}"
    end
  end

  class Cat
    def say_name(name)
      p "#{name}"
    end
  end
end
```

---

24.
```ruby
class Animal
  def a_public_method
    "Will this work? " + self.a_protected_method
  end

  protected

  def a_protected_method
    "IDK, I'm protected!"
  end
end

fido = Animal.new
fido.a_public_method        # => ?
```

---

25.
```ruby
class Wedding
  attr_reader :guests, :flowers, :songs

  def prepare(preparers)
    preparers.each do |preparer|
      preparer.prepare_wedding(self)
    end
  end
end

class Chef
  def prepare_wedding(wedding)
    prepare_food(wedding.guests)
  end

  def prepare_food(guests)
    #implementation
  end
end

class Decorator
  def prepare_wedding(wedding)
    decorate_place(wedding.flowers)
  end

  def decorate_place(flowers)
    # implementation
  end
end

class Musician
  def prepare_wedding(wedding)
    prepare_performance(wedding.songs)
  end

  def prepare_performance(songs)
    #implementation
  end
end
```

---

26.
```ruby
class Person
  attr_accessor :name, :pet

  def initialize(name)
    @name = name
  end
end

bob = Person.new("Robert")
bud = Bulldog.new             # assume Bulldog class from previous assignment

bob.pet = bud
bob.pet.fetch                 # => "fetching!"
```

---
