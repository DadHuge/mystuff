#  A loop is a repetitive execution of a piece of code for a given amount of
# => repetitions or until certain conditions are met.  We will cover (while
# => do/while for) these loops.

#  Simplest way to create a loop in Ruby is using the loop method.  loop takes a
# => block, which is denoted by {} or do ... end

loop do
  puts "This will keep printing until you hit Ctrl + c."
end

#  You realy will never do that.  So enter a break keyword.

i = 0
loop do
  i += 1
  puts i
  break
end

i = 0
loop do
  i += 2
  puts i
  if i == 10
    break
  end
end

i = 0
loop do
  i += 2
  if i == 4
    next
  end
  puts i
  if i == 10
    break
  end
end
#  Notice that the above code did not print ouit 4, because that was skipped
# => over.  Execution continued to the next iteration of loop.
# => break and next are important loop control concepts that can be used with
# => loop or any other loop construct in Ruby.

#  A while loop is a given paramater that evalates to a boolean.
# => Once that boolean expression becomes false, execution of code stops.


x = gets.chomp.to_i

while x >= 0
  puts x
  x = x -1  #  a simpler way to write it is x -= 1
end

puts "Done!"

#  until loop simply works opposite of the while loop.
x = gets.chomp.to_i

until x < 0
  puts x
  x -= 1
end

puts "Done"

#  A do/while loop works in a similar way to a while look.  One important
# => difference is that the code within the loop gets executed one time, prior
# => to the conditional check to see if the code should be executed.
loop do
  puts "Do you want to do that again?"
  answer = gets.chomp
  if answer != 'Y'
    break
  end
end

#  another version of do while is begin/end
begin
  puts "Do you want to do that again?"
  answer = gets.chomp
end while answer == 'Y'  #  begin/end not recommended by Ruby creator.

#  for loops ar eused to loop over a collection of elements.
# => for loops have a definite end since it's looping over a finite number.
# => while loops can cause infinite loops.  for loops can't.
# => for, then variable, then the in, then collection of elements.
x = gets.chomp.to_i

for i in 1..x do
  puts i
end

puts "Done!"

x = [1, 2, 3, 4, 5]

for i in x do
  puts i
end

puts "Done!"

#  To make loops more EFFECTIVE AND PRECISE, we can add CONDITIONAL FLOW
# => CONTROL WITHIN TO ALTER BEHAVIOR.

x = 0

while x <= 10
  if x.odd?
    puts x
  end
  x += 1
end

#  ITERATORS are methods that naturally loop over a given set of data and allow
# => you to operate on each element in the collection.  PREFERRED OVER LOOPS.

names = ['Bob', 'Joe', 'Steve', 'Janice', 'Susan', 'Helen']
names.each { |name| puts name }  #  Prints names, very concise

#  each method using dot operator . on our array.  Loops through each element in
# => our array, in order, starting from 'Bob'.  Starting and ending points {}
# => name is the variable between two pipes ||.  Logic is the puts name.

#  A BLOCK is just some lines of code ready to be executed.  Two common styles.
# => {} when everything can be contained in one line.  do/end when doing
# => multi-line operations.

names = ['Bob', 'Joe', 'Steve', 'Janice', 'Susan', 'Helen']
x = 1

names.each do |name|
  puts "#{x}. #{name}"
  x += 1
end

#  RECURSION is another way to create a loop in Ruby.  RECURSION is the act of
# => calling a method from within itself.

#  Let's say you wanted to know what the double of a number was, then the double
# => of that number, etc.  Let's say you wanted to double the number until the
# => pre-doubled number is 10 or greater.
def doubler(start)
  puts start * 2
end
#  Used like this doubler(2) etc

#  Can be executed more simply with recursion.

def doubler(start)
  puts start
  if start < 10
    doubler(start * 2)
  end
end

#  After you type in doubler(2) it will automatically process until your number
# => is above 10.  Much more efficient.
#  Modify the code below so "Hello!" is printed 5 times.
