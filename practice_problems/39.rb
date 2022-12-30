class Thing
end

class AnotherThing < Thing
end

class SomethingElse < AnotherThing
end

# Describe the inheritance structure in the code above, and identify all the superclasses.

# The `SomethingElse` class sub-classes the `AnotherThing` class, which sub-classes the `Thing` class. The `Thing` class sub-classes the `Object` then `Kernel` module then `BasicObject` class. Therefore, the `SomethingElse` and `AnotherThing` classes also sub-class `Object`, `Kernel` and `BasicObject` further up the method lookup chain.
