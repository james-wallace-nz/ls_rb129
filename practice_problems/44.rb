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

# What does each `self` refer to in the above code snippet?

# `self` on `line 2` refers to [...]

# On `line 4`, `self.me` is a class method definition and `self` refers to the class itself, `MeMyselfAndI`. As this is a class method invoked on the `MeMyselfAndI` class, `self` on `line 5` refers to the class too.

# The `myself` method definition on `line 8` is an instance method, which is invoked on instances of the `MeMyselfAndI` class. Therefore, `self` on `line 9` refers to the instance that the `myself` method was invoked on.MeMyselfAndI


# [review]
