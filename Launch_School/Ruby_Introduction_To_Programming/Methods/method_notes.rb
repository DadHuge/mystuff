[1, 2, 3].each do |num|
  puts num
end
#  above is method invocation, always has a ||

#below is method definition
def print_num(num)
  puts num
end

#  Two ways to do methods.  The some_method(obj) format is when you send
# => arguments to a method call.  in the previous example, obj is the argument
# => being passed in to the some_method.

#  Explicit caller to be learned later.

#  For now, it's best to think of the previous code as some_method modifying
# => a_caller.

#  Method definitions create their own scope that's entirely outside of the
# => execution flow.  Example below.
a = 5

def some_method
  a = 3
end

puts a #  Still 5, because it is not some_method(a)

def add_three(number)
  number + 3
end

returned_value = add_three(4)
puts returned_value

#  Ruby methods always return the evaluated result of the last line of the
# => expression unless an explicit return comes before it.

#  If you wanted to explicitly return a value you can use the return keyword.
def add_three(number)
  return number + 3
  number + 4
end

returned_value = add_three(4)
puts returned_value

#  The method above only returns the return line.  Not number + 4
#  Don't need to use return in order to return something from a method.

def add_three(n)
  n + 3
end

add_three(5)  #  returns, NOT PRINTS, 8

add_three(5).times { puts 'this should print 8 times' }
#  This means we are calling the times method on the returned value of
# => add_three(5), which is 8.
# => CHAINING METHODS!  Because it also gives us the number 8.
# => CHAINING METHODS is how you perform elegant code.

"hi there".length.to_s   # returns "8" - a String
# This is because the string length method returns an integer, and we can
# => call to_s on integers to convert them to strings.

def add_three(n)
  puts n + 3
end

add_three(5).times { puts "will this work?"}
#  NoMethodError: undefined method 'times' for nil:NilClass
# => Let's break this shit down homie.
add_three(5)
# puts 8
# returns => nil
# => It prints out the incremental value as expected, but RETURNS is now nil.
# => It turns out puts returns nil, and since puts n + 3 is the last expression
# => in the method definition, nil is now being returned by the add_three
# => method call.  We can no longer use add_three to keep chaining METHODS
# => since it returns nil.

#  IF ANYWHERE ALONG THE CHAIN THERE'S A NIL OR AN EXCEPTION, THE ENTIRE
# => CHAINED CALL WILL BREAK DOWN.

#  FIXED
def add_three(n)
  new_value = n + 3
  puts new_value
  new_value  #  last expression in method, it's being implicitly returned.
end

#  METHODS AS ARGUMENTS
def add(a,b)
  a + b
end

def subtract(a,b)
  a - b
end

#  You can pass, or integrate, or combine, methods.
def multiply(num1,num2)
  num1 * num2
end

multiply(add(50,30), subtract(20,4))
# => returns multiplied result of entire problem.
