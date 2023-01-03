number = 42

case number
when 1          then 'first'
when 10, 20, 30 then 'second'
when 40..49     then 'third'
end

# What methods does this `case` statement use to determine which `when` clause is executed?

# The `case` statement uses the `===` method to determine if `number` belongs to the group for each `when` condition. On `line 4 and 5`, the `Integer#===` method is used. On `line 6` the `Range#===` method is used.


# The docs show that `===` is called on the `when` condition being checked, with the case passed in as an argument:

case "12345"
when /^1/
  puts "the string starts with one"
else
  puts "I don't know what the string starts with"
end

# “Here the String `"12345"` is compared with `/^1/` by calling `/^1/ === "12345"` which returns `true`.”

# So `===` in this case is `Regexp#===`.

# When multiple `when` conditions are separated by commas they are tried in turn:

case "2"
when /^1/, "2"
  puts "the string starts with one or is '2'"
end

# “Ruby will try each condition in turn, so first `/^1/ === "2"` returns `false`, then `"2" === "2"` returns `true`, so `“the string starts with one or is ‘2’” is printed.”`

# So first `Regexp#===` is invoked then `String#===`.

# Therefore, for:

number = 42

case number
when 1          then 'first'
when 10, 20, 30 then 'second'
when 40..49     then 'third'
end

# On `line 43`, `1 === 42` is compared, which invokes `Integer#===`.
# On `line 44`,  `10 === 42`, `20 === 42`, and `30 === 42` are compared in turn, which each invoke `Integer#===`.
# On `line 45`, `(40..49) === 42` is compared, which invokes `Range#===`.

# The reason these particular `===` methods are invoked is that Ruby finds an instance method with that name in the class definition for the object that `===` is being called on (`Regexp`, `Integer`, `String` and `Range`) and doesn’t have to search further up the method lookup path.
