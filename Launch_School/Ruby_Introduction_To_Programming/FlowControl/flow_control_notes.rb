#  When you are writing programs, you want your data to make the right decisions
# => You want your data to do the right thing when it is supposed to.
# => In computer programming, this is called CONDITIONAL FLOW.
# => How do we do this?  We use CONDITIONALS.

#  Conditionals are forks in the road.  You data approaches a CONDITIONAL and
# => the conditional then tells the data where to go based on some defined
# => paramaters.  Conditionals are formed using a combination of if
# => statements and COMPARISON OPERATORS (> < <= => == != && ||)
# => They are basic logical structures that are defined with the reserved
# => words if, else, elsif, and end.

puts "Put in a number"
a = gets.chomp.to_i
#  Have to use to_i because gets always gives us a string.
if a == 3
  puts "a is 3"
elsif a == 4
  puts "a is 4"
else
  puts "a is neither 3, nor 4"
end

if a == 3 then puts "x is 3" end
#  must use then if you are using one line syntax.

puts "x is 3" if x == 3
#  another way to do it.

puts "x is NOT 3" unless x == 3
#  Unless is the opposite of if condition

#  COMPARISONS always return a boolean value.
#  != The not equal to operator.  Anything to the left of the symbol is not
# => equal to anything to the right.
4 != 5
# => true

#  COMBINING EXPRESSIONS.  It is also possible to combine multiple conditional
# => expressions together to create a more specific scenario.  We can do this
# => using the && and || operators.

#  1.  && - the 'and' operator.  Expressions to the left and the right of this
# => operator have to be both true for the entire expression to be evaluted to
# => true.
(4 == 4) && (5 == 5)
# => true

#  2.  || - the 'or' operator.  Either the expression to the left has to be true
# => or the expression to the right has to be true for the entire expression to
# => be evaluted to true.

#  3.  ! - the 'not' operator.  When you add this in front of a boolean
# => expression it will change that boolean value to its opposite.
!(4 == 4)
# => false

#  ORDER OF PRECEDENCE - 1. <= < > >= == != && ||
if x && y || z
  #do something
end
#  First the && statement will be executed.  If true, program executes #do
# => something code.  If false, then the z will be evaluated.  If true, #do
# => something executed.  If false, then the code will exit the if statement.

#  TERNARY OPERATOR:  common idiom for quick if/else statements.  Uses ? :
true ? "this is true" : "this is not true"
# => "this is true"
false ? "this is true" : "this is not true"
# => "this is not true"

#  CASE STATEMENT - Use the reserved words case when else and end.  You create
# => one by first defining a case and then evaluating the value of the case and
# => what operation to complete if the case is true.

a = 5

case a
when 5
  put "a is 5"
when 6
  puts "a is 6"
else puts "a is neither 5, nor 6"
end

# you can assign a variable to case
a = 5

answer = case a
when 5
  puts "a is 5"
when 6
  puts "a is 6"
else
  "a is neither 5, nor 6"
end

puts answer

#  you don't have to give case an argument either.
a = 5
answer = case a
when a == 5
  puts " a is 5"
when a == 6
  puts "a is 6"
else
  "a is neither 5, nor 6"
end

puts answer

#  True and False - In Ruby, every expression evaluates to true when used in
# => flow control, except for false and nil.
a = 5
if a
  puts "how can this be true?"
else
  puts "it is not true"
end

if x = 5
  puts "how can this be true"
else
  puts "it is not true"
end
