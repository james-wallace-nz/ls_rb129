number = 42

case number
when 1          then 'first'
when 10, 20, 30 then 'second'
when 40..49     then 'third'
end

# What methods does this `case` statement use to determine which `when` clause is executed?

# The `case` statement uses the `===` method to determine if `number` belongs to the group for each `when` condition. On `line 4 and 5`, the `Integer#===` method is used. On `line 6` the `Range#===` method is used.
