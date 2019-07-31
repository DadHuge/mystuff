=begin
Just like how writers use paragraphs to organize related sentences, we (that is, programmers) also need to learn to organize chunks of code to make it easier to read.

-- Making your code readable is of paramount importance, not only for others, but for future self.

Divisions
--variable initialization
then user input and validation
then using the variable

--Understand if a method returns a value, or has side effects, or both.
    "side effects" ==  either displaying something to the output or mutating an object.
    EXAMPLE:
    # side effect: displays something to the output
    # returns: nil

    def total(num1, num2)
      puts num1 + num2
    end

    # side effect: mutates the passed-in array
    # returns: updated array

    def append(target_array, value_to_append)
      target_array << value_to_append
    end

--  Paying attention to methods, both existing ones in the standard Ruby libary, as well as ones you write yourself, and their side effects vs return values is critical to writing code that's well organized and easy to read.

--  In general, if a method has both side effects and a meaningful return value, it's a red flag.  Try to avoid writing methods that do this, as it will be very difficult to use these methods in the future.

--  If you find yourself constantly looking at a method's implementation every time you use it, it's a sign that the method needs to be improved.

--  If you can treat the method as a "black box," then its a well designed method.

--  Don't mutate a collection while iterating thorugh it.

# bad

if some_variable = get_a_value_from_somewhere
  puts some_variable
end

# good

some_variable = get_a_value_from_somewhere
if some_variable
  puts some_variable
end

numbers = [1, 2, 3, 4, 5]

while num = numbers.shift
  puts num
end

The Array#shift method removes and returns the first element in the array. When there's nothing to remove, shift returns nil. This loop takes advantage of that fact to serve as the loop termination condition.

While it works, the problem is that this code is hard to read, and future programmers (remember, including your future self) can't be 100% confident that this is what you meant to do. Did you mean num == numbers.shift? Is this a bug, or is it written on purpose?

As a convention, if you must do this, wrap the assignment in parentheses. This will signify to future programmers that you know what you're doing and this is done on purpose.

numbers = [1, 2, 3, 4, 5]

while (num = numbers.shift)
  puts num
end

Use underscore for unused parameters

Suppose you have an array of names, and you want to print out a string for every name in the array, but you don't care about the actual names. In those situations, use an underscore to signify that we don't care about this particular parameter.

names = ['kim', 'joe', 'sam']
names.each { |_| puts "got a name!" }

Or, if you have an unused parameter when there are multiple parameters:

names.each_with_index do|_, idx|
  puts "#{idx+1}. got a name!"
end

=end
