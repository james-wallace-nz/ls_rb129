# Why is it generally safer to invoke a setter method (if available) versus referencing the instance variable directly when trying to set an instance variable within the class?

# We can change an instance variable to any value if we reassign it directly. If we create a setter method that guards against invalid values being assigned we can prevent unintended consequences in our code.

# Give an exmample:

@age = 'twenty'

def age=(new_age)
  if new_age.to_i.to_s == new_age
    @age = new_age
  else
    puts "Invalid age input"
  end
end


# BankAccount example?
