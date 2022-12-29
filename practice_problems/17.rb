# Give an example of when it would make sense to manually write a custom getter method versus using `attr_reader`:

# It makes sense to write a custom getter method if we want to format the output of our instance variable. The getter method provided by `attr_reader` will return the value referenced by our instance variable directly.

# For example:

def name
  "Sir #{@name}"
end
