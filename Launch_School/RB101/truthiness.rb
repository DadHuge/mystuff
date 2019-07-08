true.class          # => TrueClass
true.nil?           # => false
true.to_s           # => "true"
true.methods        # => list of methods you can call on the true object

false.class         # => FalseClass
false.nil?          # => false
false.to_s          # => "false"
false.methods       # => list of methods you can call on the false object

#  Example 1 - The below will always output 'hi'.

if true
  puts 'hi'
else
  puts 'goodbye'
end

#  Example 2 - Conversely, the below will always output 'goodbye'.

if false
  puts 'hi'
else
  puts 'goodbye'
end



num = 5

if (num < 10)
  puts "small number"
else
  puts "large number"
end

#  The above outputs "small number" because the expression num < 10 evaluates to true.

#You can substitute the code expression with a method call too.

#Example 4

puts "it's true!" if some_method_call

#The above will output "it's true!" if some_method_call returns a truthy value.

#  Short circuiting:  the && and || operators exhibit a behaviour called short circuiting,
# => which means it will stop evaluating expressions once it can guarantee the return value.

#  Ruby is a ver liberal language and considers everything to be truthy other than false and nil.
#  That means we can use any expression in a conditional, or with logical operators, and as long as it doesn't evaluate to false or nil, it is considered to be true.  Not that an expression that Ruby considers true is not the same as the true object.  Example

num = 5

if num
  puts "valid number"
else
  puts "error!"
end

#If you didn't know Ruby at all, you might guess that the above should either output "error!", or the program should generate an error of some sort. But if you run that code, it will actually output "valid number". The reason is because Ruby considers any integer to be "truthy". It does not, however, mean that the num variable from above is equal to true:

name = find_name

if name && name.valid?
  puts "great name!"
else
  puts "either couldn't find name or it's invalid"
end

#The if conditional above is checking that name is not nil, then checking the validity of name. It's doing this by relying on the && short circuit behavior to not execute name.valid? if name is nil. Remember that && short circuits if it encounters a false, and nil is considered "falsy".
