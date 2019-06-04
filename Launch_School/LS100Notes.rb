s = 'abc def ghi,jkl mno pqr,stu vwx yz'
puts s.split.inspect
puts s.split(',').inspect
puts s.split(',', 2).inspect

a = 7

def my_value(a)
  a += 10
end

my_value(a)
p a

#  Tricky.  The p is with a, and a isn't changed by calling the
# => method earlier.  It remains 7.
a = "Xyzzy"

def my_value(b)
  b[2] = '-'
end

my_value(a)
puts a # => "Xy-zzy"

#  Strings are mutable, so the [2] changes the string.  Numbers
# => are immuntable.
a = 7

def my_value(b)
  b = a + a
end

my_value(a)
puts a

# => Error message.
# => Method definitions self-contained.  a is unassigned in method.
a = 7
array = [1, 2, 3]

array.each do |element|
  a = element # => Prints out 3 because it prints out the last execution.
end

p a

a = 7
array = [1, 2, 3]

array.each do |element|
  a = element # => Prints out 3 because it prints out the last execution.
end

p a
a = 7
array = [1, 2, 3]

array.each do |a|
  a += 1
end

puts a

#  This doesn't actually do anything.
a = 7
array = [1, 2, 3]

def my_value(ary)
  ary.each do |b|
    a += b
  end
end

my_value(array)
puts a

#  error
loop do
  puts 'This is the outer loop.'

  loop do
    puts 'This is the inner loop.'
  break
  end
  break
end



puts 'This is outside all loops.'
#  Bad coding.  Just done to show where you can break loops when nested.
iterations = 1

loop do
  5.times { puts "Number of iterations = #{iterations}" }
  break
end

#OK so this works.

iterations = 1

loop do
  puts "Number of iterations = #{iterations}"
  iterations += 1
  break if iterations > 5
end

#haha oops attention to detail, doofus
numbers = []



while numbers.length < 5 do
  new_element = rand(100)
  p numbers.push(new_element)
end

#  IT WORKS!  Prints in an array

while numbers.size < 5
  numbers << rand(100)
end

puts numbers
#  OK didn't know about .size sigh

numbers = [7, 9, 13, 25, 18]

until numbers.count == 0
  puts numbers
  break
end

for i in 1..100
  if i .odd?
  puts i
end
end
#  OR (  CLEANER CODE )
for i in 1..100
  puts i if i.odd?
end

friends = ['Sarah', 'John', 'Hannah', 'Dave']

for i in friends do
  puts "Hello, " + i
end

count = 1

loop do
  if count.even?
    puts "#{count} is even!"
  else count.odd?
    puts "#{count} is odd!"
end

  break if count >= 5
  count += 1
end


loop do
  number = rand(100)
  puts number
  break if number == 1..10
end

#  OR

loop do
  number = rand(100)
  puts number

  if number.between(0, 10)
    break
  end
end

process_the_loop = [true, false].sample

if process_the_loop == false
  puts "The loop wasn't processed!"
else
  puts "The loop was processed!"
end


loop do
  puts 'What does 2 + 2 equal?'
  answer = gets.chomp.to_i
  if answer == 4
    puts "That's correct!"
    break
  else
      puts "Wrong answer.  Try again!"
end
end

numbers = []

loop do
  break if numbers.size == 5
  puts 'Enter any number:'
  input = gets.chomp.to_i
  numbers << input
end

puts numbers


numbers = []

loop do
  puts 'Enter any number:'
  input = gets.chomp.to_i

  numbers.push(input)
  break if numbers.size == 5
end
puts numbers

say_hello = true
count = 0

while say_hello
  puts 'Hello!'
  count += 1
  say_hello = false if count == 5
end

names = ['Sally', 'Joe', 'Lisa', 'Henry']

loop do
  puts names.shift
  break if names.empty?
end

puts names
