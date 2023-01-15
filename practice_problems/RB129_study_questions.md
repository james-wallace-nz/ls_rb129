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


33. When would you call a method with `self`

    You would call a method with `self` inside an instance method definition when you are calling a setter method provided by `attr_accessor` or `attr_writer` and passing in a new value to assign to the instance variable. 

    If you don't call the setter method with `self` prefixed, or reassign the instance variable directly, Ruby will assume that a local variable with the same name is being initialized and assigned the value. This won't update the instance variable as intended, and the local variable will be inaccessible once the method finishes executing and returns. 

    ``` Ruby
    class Example
      attr_accessor :name

      def initialize(name)
        @name = name
      end

      def change_name(new_name)
        # name = new_name       # will initialize a local variable
        self.name = new_name    # calls the `name=` setter method and reassigns `@name` to `new_name`
      end
    end
    ```

34. What are class methods? Provide an example.

    Class methods are methods that are invoked on the class itself.

    ``` ruby
    class ExampleClass
      @@count = 0

      def initialize
        @@count += 1
      end

      #class method
      def self.count
        @@count
      end
    end
    puts ExampleClass.count
    # 0
    ```


35. What are class variables and is their purpose? Provide an example.

    Class variables are variables that are scoped to the class itself and available to all instance of the class and sub-classes. 

    ``` ruby
    class ExampleClass
      @@count = 0

      def initialize
        @@count += 1
      end

      def self.count
        @@count
      end
    end
    puts ExampleClass.count
    # 0
    example = ExampleClass.new
    puts ExampleClass.count
    # 1
    ```


36. What is a constant variable? Provide an example.

    A constant variable is a variable that has lexical scope and a fixed value assigned to it. 

    ``` ruby
    class TwentyOneGame
      MAX_VALUE = 21

    end
    ```


37. What is the default `to_s` method that comes with Ruby, and how do you override this?

    The default `to_s` method that comes with Ruby is defined in the `Object` class. We can override this with our own implementation of `to_s` in custom class definitions. 


38. What are some important attributes of the `to_s` method?

    The `to_s` method is invoked automatically on objects passed into the `puts` method as arguments. 

    By default, the `to_s` method will return a string representation of an object, unless overridden by a custom implementation. 


39. From within a class, when an instance method uses `self`, what does it reference?

    Inside a class, when an instance method uses `self`, it refers to the object that the instance method was invoked on. 


40. What happens when you use `self` inside a class but outside of an instance method?

    Using `self` inside a class definition but outside of an instance method will refer to the class itself. This is most commonly used to define a class method:

    ``` ruby
    class Example
      def self.class_method
        puts self
      end
    end

    Example.class_method
    # Example
    ````


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

  The code outputs `Daisy says moooooooooooo!`
  
  A new instance of the `Cow` class is instantiated and assigned to the local variable `daisy`. A String object, `Daisy`, is passed into `new` as an argument. The `Cow` class has no `initialize` method defined but inherits from the `Animal` class. `'Daisy'` is passed into `Animal#initialize` as an argument and assigned to the `@name` instance variable. 
  
  The `speak` instance method is invoked on the `Cow` object assigned to `daisy`. The `Cow` class doesn't define a `speak` method, so the `Animal#speak` method is invoked as it is the first method with the same name in the method lookup path.
  
  The `speak` method calls the `sound` instance method on the `Cow` object. The `Cow#sound` method first invokes `super`, which invokes the parent class method with the same name. `Animal#sound` interpolates the value assigned to the `@name` instance variable into a String object and returns it. 
  
  `Cow#sound` concatenates the return value from `Animal#sound` to a `String` object `moooooooooooo!` and returns it to `Animal#speak`. This return value is passed to the `puts` method as an argument and output, with a `nil` return value.


68. What code snippet can replace the "omitted code" comment to produce the indicated result?

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

  We can replace the comment with `"#{first_name} #{last_name}"` to produce the intended result.


69. The last line in the below code should return "A". Which method(s) can we add to the Student class so the code works as expected? 

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

  We can add a `change_grade` instance method that accepts a new grade as an argument: 

  ``` ruby
  def change_grade(new_grade)
    self.grade = new_grade
  end
  ```


70. In the example above, why would the following not work?

``` ruby
def change_grade(new_grade)
  grade = new_grade
end
```

    If we don't reassign the `@grade` instance variable directly, or pre-fix `grade` with `self`, then Ruby will assume that we are initializing a local variable and assigning the `new_grade` to it.


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

`arr1.object_id == arr2.object_id` will return `false`. These two local variables are assigned to different `Array` objects, even though those arrays contain the same elements in the same order. These arrays therefore have different object_ids, which `Integer#==`` will compare.

A `Symbol` with the same name is the same object. Therefore, when `:something` is assigned to`sym1` and `sym2`, this is the same symbol object, which will have the same `object_id`. Therefore, `sym1.object_id == sym2.object_id` will return `true`, because `Integer#==` is comparing the same value.

There is only one object for each `Integer` value. Therefore, when `5` is assigned to int1` and `int2`, this is the same object with the same `object_id`. Therefore, when the `object_id`s are compared for equality with `Integer#==`, the return value will be `true`.


95. What is the `===`` method?



96. What is the `eql?`` method?


97. What is the scoping rule for instance variables?

    Instance variables are scoped at the object level. **[update]**


98. What is the return value, and why?

``` ruby
class Person
  def get_name
    @name
  end
end

bob = Person.new
bob.get_name      # => ??
```

    When `bob` is initialized to a new instance of the `Person` class on the second to last line, there is no `initialize` method in the `Person` class, and no `@name` instance variable is initialized. When the `get_name` instance method is invoked on the last line it references the @name instance variable. Since this hasn't been initialized, it has no value and will return `nil`. **[update]**


99. What are the scoping rules for class variables? What are the two main behaviors of class variables?

    Class variables are scoped at the class level. **[update]**

    Class variables are availble to all instances of a class.

    Defining a sub-class with the same class variable will override the value assigned to a parent class class variable.


100. What are the scoping rules for constant variables?

    Constants have lexical scoping. This means they... **[update]**


101. How does sub-classing affect instance variables?

    A sub-class will inherit the instance variables initialized in the parent-class. **[update]**


102. What will this return, and why?

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
The last line will output `bark! bark  bark! bark!` and return `nil`. When `teddy` is initialized and assigned a new instance of the `Dog` class, a `String` object `'Teddy'` is passed into `Dog.new`. This String is passed to the `initialize` method in the `Dog` class, but is not used. The `Dog` class sub-classes the `Animal` class, but does not call super to utilise the `Animal#initialize` method. Therefore, the `@name` instance variable is not initialized and assigned to the String `'Teddy'`. 

On the last line, the `Dog#dog_name` instance variable is called on `teddy`. This method interpolates the value assigned to the `@name` instance variable into a string and returns it. The `@name` instance variable hasn't been initialized, so will return a value of `nil`, which will be interpolated into the surrounding `String` object without any spaces. The resulting string is then returned by `Dog#dog_name` and passed to `puts` as an argument, which then outputs it. **[update]**


103. How do you get this code to return `“swimming”`? 

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

The `Dog#swim` instance method is invoked on `teddy` before `Swim#enable_swimming` has been called. Thefore, the `@can_swim` instance variable has not been initialized, and will have a value of `nil` when evaluated in the `swim` method. `nil` will evaluate to `false` so `nil` rather than `'swimming!'` will be returned by this method. We can fix this by calling `teddy.enable_swimming` before we call `teddy.swim`. **[update]**

What does this demonstrate about instance variables?

This demonstrates that instance variables must be initialized before they are assigned a value. Until then, an instance variable will return `nil`. **[update]**


104. Are class variables accessible to sub-classes?

    Class variables are accessible to sub-classes. Sub-classes may re-assign class variables, which will cause the value assigned to the class variable to change everywhere it is in scope, including parent and other sibling classes. **[update]**


105. Why is it recommended to avoid the use of class variables when working with inheritance?

    Sub-classes can reassign a class variable, which will override the value assigned to the class variable in parent and sibling classes. This can result in a class variable returnign an unexpected value when accessed from the parent or sibling classes. **[update]**


106. What would the above code return, and why?

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

`Vehicle.wheels` will return `4`, the value assigned to the class variable in the `Vehicle` class definition. 

When the `Motorcycle` class is defined, the `@@wheels` class variable is reassigned to `2`. Therefore, `Motorcycle.wheels` and `Vehicle.wheels` will both return `2`. 

The `Car` class definition does not reassign the `@@wheels` class variable, so this still points to the value `2`. `Car.wheels` will therefore return `2`. 


107. Is it possible to reference a constant defined in a different class?

    We can reference a constant defined in another class directly by pre-fixing the constant name with the class name then the namespace resolution operator, `::`. For example.

    ``` ruby
    class First
      EXAMPLE = 'test'
    end

    class Second
      def self.example
        First::EXAMPLE
      end
    end

    p Second.example 
    # 'test'
    ```


108. What is the namespace resolution operator?

    The namespace resolution operator is `::`. This defined...  **[update]**


109. How are constants used in inheritance?

     Constants defined in a parent class are inherited by sub-classes, unless overridden by a constant definition in the sub-class. 

     If the parent class has a class method or instance method that references a constant that is defined in both the parent and sub-class, the parent class constant will be evaluated when the class or instance method is invoked on the sub-class or sub-class object, respectively. This is because the parent class class method or instance method has been invoked from the parent class.

     This behvaiour can be changed by adding `self::CONSTANT` to the class method and `self.class::CONSTANT` to the instance method in the parent class, so that the calling object's class constant is referenced. 

     In other words, calling the parent class method on the sub-class will then reference the sub-class constant rather than the parent class constant of the same name. This is equivalent to referencing the constant directly in the sub-class with `SubClass::CONSTANT` or sub_class_instance.class::CONSTANT`. 

     With interface inheritance through mixin modules, a constant defined in the module will be inherited by the class. **[update]**


110. Describe the error and provide two different ways to fix it.

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

   The above code raises a `NameError` because the `change_tyres` instance method is defined in the `Maintenance` module and references a `WHEELS` constant, but no `WHEELS` constant is defined in that module.

   We can fix this by pre-fixing `self` so `self.class::WHEELS` will look for the `WHEELS` constant in the class for the object that  `change_tyres` is invoked on.

  The other way to fix this is to access the `Vehicle::WHEELS` constant directly in the `Maintenance` module `change_tyres` instance method. **[update]**


111. What is lexical scope?

    Lexical scope means that Ruby first looks for the constant in the context of where it is invoked. If it doesn't find a constant with that name in that scope it will use the method lookup path. 
    **[update]**


112. When dealing with code that has modules and inheritance, where does constant resolution look first?

    Ruby will first look for a constant in the place where it has been referenced. It will then use the lookup chain to look for it in any included mixin modules. Then it will look in the parent class. **[update]**


113. How can you make this code function? How is this possible?

``` ruby
class Person
  attr_accessor :name, :age

  def initialize(name, age)
    @name = name
    @age = age
  end

  def >(other)
    age > other.age
  end
end

bob = Person.new("Bob", 49)
kim = Person.new("Kim", 33)
puts "bob is older than kim" if bob > kim
```

   The above code will raise a `NoMethodError` because a `>(other)` method has not been defined in the `Person` class. 

   We can fix this by adding a `>(other)` method to the `Person` class and comparing the age of the object this method is invoked on to the age of the other object passed in. **[update]**


114. What happens here, and why?

``` ruby
my_hash = {a: 1, b: 2, c: 3}
my_hash << {d: 4}
```
Unlike the `Array` class, the `Hash` class does not define a `<<` method, so this code will raise a `NoMethodError`. **[update]**


115. When do `shift` methods make the most sense?

    `shift` methods make the most sense when there is a series of ordered elements and we want to add or remove elements at the beginning or end of the series. For example, `Array` or `String` objects. **[update]**


116. 

``` ruby
class Person
  attr_accessor :name, :age

  def initialize(name, age)
    @name = name
    @age = age
  end
end

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

``` ruby
cowboys = Team.new("Dallas Cowboys")
cowboys << Person.new("Troy Aikman", 48)
niners = Team.new("San Francisco 49ers")
niners << Person.new("Joe Montana", 59)
dream_team = cowboys + niners               # what is dream_team?
```

What does the `Team#+`` method currently return? What is the problem with this? 

    `Team#+` currently returns a new `Array` object. The expected behaviour of a default Ruby class is that it will return an new instance of the same class. Therefore, our custom `Team` class `+` method should return a new instance of the `Team` class.


How could you fix this problem?

    We can fix this by first instantiating a new instance of the `Team` class with a temporary name. Then we add the members of the instance that `+` was invoked on and then the members of the other team passed in as an argument to `+`:

   ``` ruby
   def +(other_team)
     new_team = Team.new('temp')
     new_team << members
     new_team << other_team.members
     new_team 
   end
   ```


117. Explain how the element getter (reference) and setter methods work, and their corresponding syntactical sugar.

    `[]` and `[]=` **[update]**

    The element getter method defined as `def [](index); end` has syntactic sugar allowing us to invoke it as `object[index]`. 

    The element setter method defined as `def [](index, element); end` has syntactic sugar allowing us to invoke it as `object[index] = element`. 


118. How is defining a class different from defining a method?

    We define a class with `class` then a CamelCase name. 

    We define a method with `def` then a snake_case` name. 

    Both end the definition with `end` keyword.


119. How do you create an instance of a class? 

    We create an instance of a class by calling `new` on the class. E.g. `ClassName.new`. **[update]**


120. What are two different ways that the getter method allows us to invoke the method in order to access an instance variable?

    We can invoke the getter method on the object using dot notation: `object.getter_method`

    We can invoked the getter method inside the class definition with an implicit recevier, being the instance that invoked another method:

    ``` ruby
      def formatted_name
        'Sir ' + name
      end
    ```

    We can also invoke the getter method inside the class definition with an explicit receiver, `self`, although this isn't required. 

    ``` ruby
      def formatted_name
        'Sir ' + self.name
      end
    ```


121. When you have a mixin and you use a ruby shorthand accessor method, how do you write the code (what order do you write the getter/setters and the mixin)? 

    We have to write the getter method as `self.getter_method` so that that the method is invoked on the instance that invoked the module's instance method. Otherwise, Ruby will search for the method to invoke in the module and won't find it becuase the method is defined in the class. 

    We have to `include` the mixin module before we invoke `attr_reader`, `attr_writer` or `attr_accessor` in the class definition

    **[update]**

    What about using a constant? 

    To reference a constant defined in the class through an instance method defined in an mixin module, we need to use the class name as a prefix with the namespace resolution operator. The method requires this to search in the correct place for the constant. Otherwise, Ruby will use lexical scope and search for the constant in the module, where the module is defined.

    **[update]**


122. How do you define a class method?

    We define a class method by prepending `self.` to the method name. E.g. `def self.class_method; end` **[update]**


123. What is wrong with the code above? Why? 

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

   The `Cat#rename` method does not reassing the `@name` instance variable to `new_name`. In the `rename` method definition, Ruby assumes that `name` is a local variable, which is scoped to the method definition. To fix this we should reassign the instance variable directly with `@name =` or prepend `self` so it becomes `self.name =`. **[update]**

What principle about getter/setter methods does this demonstrate?

   This demonstrates that we can call a getter method without `self` but we should call a setter method with `self` to avoid . We should also avoid naming local variables or method parameters with the same name as our getter instance method to avoid the getter method being shadowed when we don't use `self`. **[update]**


125. `self` refers to the ______ _______. 

    `self` refers to the calling object. **[update]**

126. How do you print the object so you can see the instance variables and their values along with the object?


127. When writing the name of methods in normal/markdown text, how do you write the name of an instance method? 

    `ClassName#instance_method_name`

A class method?

    `ClassName::class_method_name`


128. How do you override the `to_s` method? 

    We can overrride the `to_s` method by defining our own `to_s` method in the the class definition. **[update]**


130. What does the `to_s` method have to do with `puts`?

    When `puts` is invoked, it will automatically invoke `to_s` on any objects passed in as arguments. **[update]**


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
  attr_reader :bed_type

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

The `'fast'` in `'Drive fast, please!'` should be the value of `speed`.

``` ruby
class Vehicle
  def start_engine
    'Ready to go!'
  end
end

class Truck < Vehicle
  def start_engine(speed)
    super + " Drive #{speed}, please"
    
  end
end

truck1 = Truck.new
puts truck1.start_engine('fast')
# Expected output:
# Ready to go! Drive fast, please!
```


133. When do you use empty parentheses with `super`?

    We use empty parentheses with `super` when we want to invoke the parent class `initialize` method without passing in any arguments. Without parentheses, `super` will pass in all of the arguments passed into the sub-class `initialize` method. **[update]**


134. How do you find the lookup path for a class? (lookup path stops when you find it)

    We can find the lookup path for a class be calling `ancestors` on that class. E.g. `ClassName.ancestors` **[update]**


135. What is namespacing, and how do you instantiate a class contained in a module?

    Namespacing is using a module to encapsulate code that we want to keep separate from other parts of the code base. We do this to avoid name conflicts with other classes and methods. 

    We instantiate a class contained in a namespace module by prefixing the class name with the module name and the namespace resolution operator:

    ``` ruby
    module NameSpaceModule
      class NameSpaceClass; end
    end

    test = NameSpaceModule::NameSpaceClass.new
    ```


136. When using getters and setters, in what scenario might you decide to only use a getter, and why is this important?

    We might decide to only use a getter method when we only want to allow a a public interface to read the value of an instance variable but not reassign that instance variable to another value. **[update]**


137. How do we create an object in Ruby? Give an example of the creation of an object.

    We create an object in Ruby by invoking the `new` method on the class name of the class we want an object instance of. 

    ``` ruby
    class Example

    end

    new_object = Example.new
    ```


138. What's the difference between instance and class variables?

    Instance variables are scoped to individual instances and are only available to that instance. 

    Class variables are scoped to the class and are available to all instances of that class.


139. What's the difference between instance and class methods?

    Instance methods are invoked on an object instance of a class. 

    Class methods are invoked on the class itself. 


140. Why do custom classes usually define a `to_s` method?

    The `puts` method and string interpolation automatically call `to_s` on an object. By default, an object of a custom class will return a string representation of the object. E.g. `#<ExampleClass: ... name='test'>`

    We usually define a `to_s` method for the class to return a string representation in a format that makes sense, e.g. the object's name, instead of the default representation. 


141. When are Modules used? What is interface inheritance? What is multiple inheritance?

    Modules are used for namespacing and interface inheritance. 

    Namespacing is encapsulating our code in a module to keep it separate from other parts of our code base and avoid name conflicts. 

    Mixin modules define instance variables and instance methods. We can mixin these modules to specific classes to provide the instance variables and methods (interface inheritance) to that class and child classes of that class.

    Multiple inheritance is where a class inherits from multiple parent classes. Ruby doesn't allow for multiple inheritance and a class can only inherit from one parent class. We can achieve multiple inheritance in Ruby through the use of mixin modules. 


142. What is method access control?

    Method access control is the use of the `public`, `private` and `protected` methods in a class definition to control access to instance methods defined in the class. 

    Instance methods defined below `public` are available to be called outside of the class.

    Instance methods defined below `private` can only be invoked inside the class definition. They cannot be invoked on an object of the class outside of the class. 

    Instance methods defined below `protected` are available to be called with an explici receiver inside the same class. These methods cannot be invoked outside of the class. 

    **[update]**


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

   `GoodDog.new` instantiates a new instance of the `GoodDog` class and assigns this to the local variable `sparky`. 
   
   This is an example of object instantiation. 
    
   Nothing is output. The new instantiated object is returned by the assignment.

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

   An instance of the `GoodDog` and `HumanBeing` classes are instantiated and assigned the local variables `sparky` and `bob`, respectively. 
    
   The `Speak#speak` instance method is invoked on `spark` and `bob` with a `String` object passed in as an argument. The `speak` method is available to instances of the `GoodDog` and `HumanBeing` classes because the `Speak` module has been `include`d in those class definitions. 
    
   The `speak` method passes the argument to `puts`, which outputs the `String` object and returns `nil`. For `sparky`, `Arf!` is output, and for `bob`, `Hello!` is output.
    
  This is an example of a mixin module providing an instance method to a class via interface inheritance. 

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

   The `ancestors` class method is invoked on the `GoodDog` and `HumanBeing` classes. This returns an array of parent classes and mixin modules based on the method lookup path. The array for each class is passed to the `puts` method and output, returning `nil`. 

   The output for `GoodDog.ancestors` is:
   ``` ruby
      GoodDog
      Speak
      Object
      Kernel
      BasicObject
   ```

   The output for `HumanBeing.ancestors` is:
   ``` ruby
      HumanBeing
      Speak
      Object
      Kernel
      BasicObject
   ```

   This is an example of the method lookup path that Ruby uses to find a method to execute when one is invoked on an object.

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

  When `GoodDog.new` instantiates a new instance of the `GoodDog` class, the `initialize` method is invoked. This passes a `String` object to the `puts` method, which outputs it and returns nil. The output is `This object was initialized!`.

  The new object is then assigned to the local variable `sparky`. 

  This is an example of object instantiation with an `initialize` constructor method.

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

  A new instance of the `GoodDog` class is instantiated when `GoodDog.new` is invoked. The `String` object `'Sparky'` is passed into `new` as an argument, which passes it to the `initialize` constructor method as an argument. 

  In the `initialize` method, the `name` argument is assigned to the `@name` instance variable. 

  The new instance of `GoodDog` class is then assigned to the local variable `sparky`.

  Nothing is output. The assignment to `sparky` returns the new object that was assigned. 

  This is an example of object instantiation with the `initialize` method initializing an instance variable. 

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

  New instances of the `GoodDog` class are instantiated with `GoodDog.new`. In both cases, a `String` object is passed into the `new` method as an argument, which passes the string to the `initialize` method as an argument. The `String`s are assigned to the `@name` instance variable for each object. The new objects are then assigned to a local variable named `sparky` and `fido`, respectively. 

  The `GoodDog#speak` instance method is invoked on `sparky` and `fido`. This returns the `String` object `'Arf!'`, which is passed into the `puts` method as an argument. `puts` outputs the `String` object and returns `nil`. 

  Therefore, both `puts sparky.speak` and `puts fido.speak` output `Arf!` and return `nil.`

  This is an example of instantiating an object with the `initialize` method initializing an instance variable, and invoking an instance method on an object.

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

  New instances of the `GoodDog` class are instantiated with `GoodDog.new`. In both cases, a `String` object is passed into the `new` method as an argument, which passes the string to the `initialize` method as an argument. The `String`s are assigned to the `@name` instance variable for each object. The new objects are then assigned to a local variable named `sparky` and `fido`, respectively. 

  The `GoodDog#speak` instance method is invoked on `sparky` and `fido`. Inside the `speak` method, the `@name` instance variable is interpolated into a `String` object. The `@name` instance variable references the `String` object passed into the `new` method on each instantiation. The object assigned to `sparky` will have an `@name` instance variable with the value `'Sparky'`, while The object assigned to `fido` will have an `@name` instance variable with the value `'Fido'`. These are interpolated into the `String` object `' says arf!'` and returned. The return value of `speak` is passed into the `puts` method as an argument. `puts` outputs the `String` object and returns `nil`. 

  Therefore, `puts sparky.speak` outputs `Sparky says arf!` and `puts fido.speak` outputs `Fido says arf!`.

  This is an example of instantiating an object with the `initialize` method initializing an instance variable. It is also an example of invoking an instance method on an object which uses the value of an instance variable. 

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

  A new instances of the `GoodDog` class is instantiated with `GoodDog.new`. A `String` object is passed into the `new` method as an argument, which passes the `String` object to the `initialize` method as an argument. The `String` object is assigned to the `@name` instance variable for the object. The new objects is then assigned to a local variable named `sparky`. 

  The `GoodDog#speak` instance method is invoked on `sparky`. Inside the `speak` method, the `@name` instance variable is interpolated into a `String` object. The `@name` instance variable references the `String` object passed into the `new` method on instantiation. The object assigned to `sparky` will have an `@name` instance variable with the value `'Sparky'`. This is interpolated into the `String` object `' says arf!'` and returned. The return value of `speak` is passed into the `puts` method as an argument. `puts` outputs the `String` object and returns `nil`. 

  Therefore, `puts sparky.speak` outputs `Sparky says arf!`.

  The `name` instance method is then invoked on `sparky`. This uses the getter method provided by `attr_accessor :name` and returns the value assigned to the `@name` instance variable, which is `'Sparky'`. This is passed to the `puts` method as an arugment and output, with a `nil` return value. 

  On the second to last line, the `name=` instance method is called on `sparky` and a `String` object `'Spartacus'` is passed in as an argument. This is the setter method provided by `attr_accessor :name`. The `name=` method reassigns the the `@name` instance variable to the `String` object argument. 

  Lastly, the `name` instance method is invoked on `sparky` again. This returns the value assigned to the `@name` instance variable, which is now `'Spartacus'`. This is passed to the `puts` method as an arugment and output, with a `nil` return value. 

  The outputs are therefore:
  `Sparky says arf!`
  `Sparky`
  `Spartacus`
  each with a `nil` return value.

  This is an example of instantiating an object with the `initialize` method initializing an instance variable. It is also an example of invoking an instance method on an object, which uses the value of an instance variable. Lastly, it calls an instance variable getter method and setter method. 

---

9. What is the difference between the two?

```ruby
def speak
  "#{@name} says arf!"
end

def speak
  "#{name} says arf!"
end
```

  `@name` references the `@name` instance variable directly. `name` invokes the `name` getter method, which should return the value assigned to the `@name` instance variable. The `name` getter method may do other steps, including formatting the value assigned to `@name` instance variable before returning it. 

---

10.
```ruby
def change_info(n, h, w)
  self.name = n
  self.height = h
  self.weight = w
end
```

  The `change_info` instance method assigns the arugments passed in as parameters `n`, `h`, and `w` to the instance methods `name`, `height` and `weight`, respectively. 

  Nothing is output or returned becuase the instance method is not executed. 

  This is an example of an instance method that reassigns instance variables to new values. 

---

11.
```ruby
# ... rest of code ommitted for brevity

def self.what_am_i
  "I'm a GoodDog class!"
end

GoodDog.what_am_i   # => ?
```

  The `what_am_i` class method is invoked on the `GoodDog` class. This returns the `String` object `"I'm a GoodDog class!"`. Nothing is output.`

  This is an example of a class method definition and invocation. 

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

  In the `GoodDog` class definition, the `@@number_of_dogs` class variable is initialized and assigned the `Integer` `0`. The class method `GoodDog::total_number_of_dogs` is invoked, which returns the value currently assigned to the `@@number_of_dogs` class variable. This returns `0`, which is passed to the `puts` method as an argument and output, returnning `nil`. 

  Two new instances of the `GoodDog` class are instantiated with `GoodDog.new` and assigned to the local variables `dog1` and `dog2`. The `new` method invokes the `initialize` instance method on each instantiation. The `initialize` method increments the value assigned to `@@number_of_dogs` class variable by `1` on each instantiation. 

  After the two new `GoodDog` objects are instantiated, the `GoodDog::total_number_of_dogs` class method is invoked again. This returns the value currently assigned to the `@@number_of_dogs` class variable, which is now `2`. `2` is passed to the `puts` method as an argument and output, returnning `nil`. 

  The outputs are therefore:
  `0`
  `2`
  with return values of `nil`. 

  This is an example of initializing a class variable and reassigning the class variable on object instantiation. 

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

  A new `GoodDog` instance is instantiated with `GoodDog.new` and assigned to the `sparky` local variable. The `String` `'Sparky'` and `Integer` `4` are passed in as arguments to `new`. These are passed to the `initialize` method, which assigns the `n` argument to the `@name` instance variable. The `a` argument is multipled by `7`, the value assigned to the `DOG_YEARS` constant, defined in the `GoodDog` class. Therefore, the `Integer` `28` is assigned to the @age` instance variable.

  The `age` instance method is invoked on `sparky`. This is a getter method provided by `attr_accessor :age`. This returns the value assigned to the `@age` instance variable, which is `28`. This is passed to the `puts` method as an argument and output. The return value of `puts` is `nil`.

  This is an example of initializing a constant in a class definition and using that constant when initializing an instance variable.

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

sparky = GoodDog.new("Sparky", 4)
puts sparky      # => ?
```

  A new `GoodDog` instance is instantiated with `GoodDog.new` and assigned to the `sparky` local variable. The `String` `'Sparky'` and `Integer` `4` are passed in as arguments to `new`. These are passed to the `initialize` method, which assigns the `n` argument to the `@name` instance variable. The `a` argument is multipled by `7`, the value assigned to the `DOG_YEARS` constant, defined in the `GoodDog` class. Therefore, the `Integer` `28` is assigned to the @age` instance variable.

  The `GoodDog` object assigned to `sparky` is passed to the `puts` method as an argument. `puts` automatically calls `to_s` on an object and outputs the return value. The `GoodDog` class defines a `to_s` method, which is what `puts` invokes on the `GoodDog` object. The `GoodDog#to_s` instance method interpolates the values assigned to the `@name` and `@age` instance variables (via the getter methods provided by `attr_accessor :name, :age`) into the surrounding `String` object. The resulting `String` object `"This dog's name is Sparky and it is 28 in dog years."` is returned by `to_s` and output by the `puts` method. 

  This is an example of initializing a constant in a class definition and using that constant when initializing an instance variable. It is also an example of overriding the default `to_s` instance method for a class.

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

  `self` inside the `what_is_self` instance method refers to the object instance of the `GoodDog` class that `what_is_self` is invoked on.

  `self` in the `self.this_is_a_class_method` method name refers to the `GoodDog` class itself and determines that this is a class method. 

  `self` in `puts self` refers to the `GoodDog` class. 

  This is an example of the different uses of `self` in Ruby class definitions. 

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

  New instances of the `GoodDog` and `Cat` classes are instantiated and assigned to the local variables `sparky` and `paws`, respectively. 

  The `speak` instance method is invoked on the objects assigned to `sparky` and `paws`. Neither the `GoodDog` or `Cat` classes have a `speak` instance method. Using the method lookup path, Ruby finds the `speak` method in the `Animal` parent class and executes it in both cases. Both `speak` invocations return the `String` object `'Hello!'`, which is passed to the `puts` method as an argument. `puts` will output `Hello!` and return `nil`.

  This is an example of class inheritance. Instances of the `GoodDog` and `Cat` classes can call the `speak` instance method becuase they inherit it from the `Animal` parent class. 

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

  New instances of the `GoodDog` and `Cat` classes are instantiated and assigned to the local variables `sparky` and `paws`, respectively. The `GoodDog` object is initialized with a `String` object `'Sparky'` passed in as an argument, which the `initialize` method assigns to the `@name` instance variable.

  The `speak` instance method is invoked on the objects assigned to `sparky` and `paws`. The `GoodDog` class defines its own `speak` instance method, which is invoked. The `Cat` class does not define a `speak` instance method so, using the method lookup path, Ruby finds the `speak` method in the `Animal` parent class and executes it. 

  The `GoodDog#speak` method interpolates the value assigned to the `@name` instance variable into a `String` object. The `String` object `'Sparky says arf!'` is then returned to the `puts` method as an argument. `puts` outputs `Sparky says arf!` and returns `nil`.

  The `Animal#speak` method invoked by `paws.speak` returns a `String` object `'Hello!'`, which is passed to the `puts` method as an argument. `puts` will output `Hello!` and return `nil`.

  This is an example of class inheritance with sub-class instance method overiding. Instances of the `Cat` class can call the `speak` instance method becuase it inherits it from the `Animal` parent class. Instances of the`GoodDog` class call the `GoodDog#speak` method defined in that class. This method has a different implementation to the `Animal#speak` method. 

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
puts sparky.speak        # => ?
```

  A new instance of the `GoodDog` class is intantiated with `GoodDog.new` and assigned to the local variable `sparky`. 

  The `speak` instance method is invoked on the `GoodDog` object. Inside the `GoodDog#speak` method definition, `super` is called, which invokes the next method with the same name in the method lookup path. This invokes `Animal#speak` method, which is in the parent class to `GoodDog`. `Animal#speak` returns a `String` object `'Hello!'` to `GoodDog#speak`. `GoodDog#speak` then concatenates a `String` object `' from GoodDog class`' to `'Hello!'` and returns the new `String` object.

  The returned new `String` object is passed to the `puts` method as an argument, which outputs `Hello! from GoodDog class` and returns `nil`. 

  This demonstrates the use of `super` to invoke the next method in the method lookup path with the same name as the method that invoked `super`.

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

  A new instance of the `BadDog` class is intantiated, with the `Integer` `2` and `String` `'bear'` passed into `new` as arguments. `new` invokes `BadDog#initialize` and passes in its arguments. `initialize` invokes `super` and passes in the `name` argument as an argument. `super` invokes the parent class `initialize` method and passes in the `name` argument as an argument. This initializes the `@name` instance variable and assigns it to the value of the `name` argument, which is `'bear'`.

  The `BadDog#initialize` method then assigns the `age` argument to the `@age` instance variable. 

  This demonstrates the use of `super` with parentheses to pass in only the arguments that we specify. 

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

  An instance of the `Dog`, `Fish` and `Cat` class is instantiated and assigned to the local variables, `sparky`, `neemo` and `paws`, respectively. 

  The `swim` instance method is invoked on `sparky`. The `Dog` class doesn't define a `swim` method, so Ruby uses the method lookup path to find such a method in the mixin module, `Swimmable` and execute it. This returns `"I'm swimming!"`.

  The `swim` instance method is invoked on `neemo`. The `Fish` class doesn't define a `swim` method, so Ruby uses the method lookup path to find such a method in the mixin module, `Swimmable` and execute it. This returns `"I'm swimming!"`.

  The `swim` instance method is then invoked on `paws`. The `Cat` class doesn't define a `swim` method, so Ruby uses the method lookup path to find such a method. The `Swimmable` module has not been mixed into to the `Cat` class, so Ruby doens't find a method with that name. This raises a `NoMethodError`.

  This demonstrates interface inheritance where a mixin module is included in specific classes that aren't part of the same class inheritance hierarchy.

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

  The `ancestors` class method is invoked on the `Animal` class. This returns an `Array` object containing the classs and modules in the method lookup path for the `Animal` class. The returned `Array` object is passed to the `puts` method as an argument and output. 

  `puts` outputs:
  ``` ruby
  Animal
  Walkable
  Object
  Kernel
  BasicObject
  ```
  and returns `nil`

  This demonstrates the method lookup path that Ruby uses to find a method when it is invoked on a class or object of a class. This demonstrates that a class then the included modules are searched before the parent class. 

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

  The `ancestors` class method is invoked on the `GoodDog` class. This returns an array of classes and modules in the method lookup path for `GoodDog`. This array is passed into the `puts` method as an argument and output, with a `nil` return value.

  The output for `puts GoodDog.ancestors` is:
  ``` ruby
  GoodDog
  Climable
  Swimmable
  Animal
  Walkable
  Object
  Kernal
  BasicObject
  ```

  This is an example of class and interface (mixin module) inheritance. This demonstrates that a class then the included modules are searched before the parent class. 

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

  A namespace module, `Mammal`, contains the definition for `Dog` and `Cat` classes. 

  This demonstrates that we can separate our code from other parts of the code base by wrapping class definitions in a module. To access those classes we need to prefix the class name with the namespace module name and the namespace resolution operator `::`. For example, `Mammal::Dog.new` will instantiate a new instance of the `Dog` class namespaced in the `Mammal` module. 

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
puts fido.a_public_method        # => ?
```

  This will work. A new instance of the `Animal` class is intantiated. `a_public_method` is invoked on this object. `a_public_method` is not defined beneath the `private` or `protected` method, so is available as a public interface for `Animal`. 

  Inside the `a_public_method`, the return value of `self.a_protected_method` is added to a `String` object. `self.a_protected_method` invokes the `a_protected_method` instance method on the object that invoked `a_public_method`. `a_protected_method` is defined beneath the `protected` method, which means it can be invoked within the class definition and by other objects of the same class.

  Therefore, `a_protected_method` can be invoked and returns the `String` object 'IDK, I'm protected!', which is added to the `String` object `'Will this work?'` and returned. 

  This is an example of method access control by using the `protected` method to hide the `a_protected_method` from the public interface for `Animal` class.

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

  The `Wedding#prepare` instance method iterates through a collection of `preparers` with the `each` method and invokes `prepare_wedding` on each `preparer`. The `Wedding` object that invokes `preapre` is passed into `preparer.prepare_wedding` through the use of `self`. 

    This demonstrates the use of duck typing. Objects of each preparer class (`Chef`, `Decorator`, `Musician`) can respond to the `prepare_wedding` instance method invocation in the `Wedding#prepare` method. The preparer classes have their own implementations of `prepare_wedding` based on the behaviours that an object of that class should undertake. For example, The `prepare_wedding` method invoked on an instance of the Chef` class  will invoke the `Chef#prepare_food` instance method and pass in a collection of wedding guests through the use of `wedding.guests` as an argument.

---

26.
```ruby
class Pet
  def run
    'running!'
  end

  def jump
    'jumping!'
  end
end

class Dog < Pet
  def speak
    'bark!'
  end

  def swim
    'swimming!'
  end

  def fetch
    'fetching!'
  end
end

class Bulldog < Dog
  def swim
    "can't swim!"
  end
end

class Person
  attr_accessor :name, :pet

  def initialize(name)
    @name = name
  end
end

bob = Person.new("Robert")
bud = Bulldog.new

bob.pet = bud
puts bob.pet.fetch
```

  A new `Person` object is instantiated with the `String` object `'Robert'` passed in as an argument. The `String` object is assigned to the `@name` instance variable for the object. The object is assigned to the local variable `bob`. 

  A new `Bulldog` object is intantiated and assigned to the local variable `bud`. 

  The `pet=` instance method is invoked on `bob` with the `Bulldog` object assigned to `bud` passed in as an argument. This setter method is provided by `attr_accessor :pet`. The method assigns the `Bulldog` object to the `@pet` instance variable of the `Person` object assigned to `bob`. 

  Lastly, the `fetch` instance method is invoked on `bob.pet`. `bob.pet` returns the `Bulldog` object assigned to it, so `fetch` is invoked on this object. This returns the `String` object `'fetching'`, which is passed to the `puts` method as an object and output with a `nil` return value. 

  This demonstrates the use of collaborator objects because the `Bulldog` object is assigned to the `Person` object `pet` instance variable. We can invoke the `fetch` instance method on the return value of `bob.pet`. 

---
