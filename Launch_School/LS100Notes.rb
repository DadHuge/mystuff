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

#  The method below counts from 0 to 4.  Modify the block so that it prints out
# => the current number and stops iterating when the current number equals 2.


5.times do |index|
  index += 0
  puts "#{index}"
  break if index == 2
end
#  Using next, modify the code below so it prints only even numbers.

number = 0

until number == 10
  number += 1
  if number.even?
  puts number
end
end

#  The following code increments number_a and number_b by either 0 or 1.
# => loop is used so that variables can be incremented more than once, however,
# => break stops the loop after the first iteration.  Use next to modify the
# => code so that the loop iterates until either numbers equals 5.  Print
# => "5 was reached" before breaking out of the loop.

number_a = 0
number_b = 0

loop do
  p number_a += rand(2)
  p number_b += rand(2)
  if number_a == 5
    puts "5 was reached!"
    break
  elsif number_b == 5
    puts "5 was reached!"
end
end

#  OR

number_a = 0
number_b = 0

loop do
  number_a += rand(2)
  number_b += rand(2)
  next unless number_a == 5 || number_b == 5

  puts '5 was reached!'
  break
end

#  Given the code below, use a while loop to print "Hello!" twice.
number_of_greetings = 2

def greeting
  puts 'Hello!'
end

number_of_greetings = 2

while number_of_greetings > 0
  greeting
  number_of_greetings -= 1
end

# Write a program that asks the user to type something in, after which your
# => program should simply display what was entered.

puts "Type anything you want!"
a = gets.chomp
puts a

#  Write a program that asks the user for their age in years, and then converts
# => that age to months.

puts ">> What is your age in years?"
a = gets.chomp.to_i
x = a * 12
puts "You are #{x} months old."

#  Write a program that asks the user whether they want the program to print
# => "something", then print it if the user enters y.  Otherwise, print nothing

puts "Do you want the program to print'something? (y/n)"
a = gets.chomp

  if a == "y"
    puts "something"
  else
    puts " "
end
 #  OR

 puts '>> Do you want me to print something? (y/n)'
 choice = gets.chomp
 puts 'something' if choice == 'y'

 #  Modify your previous program so it prints an error message for any inputs
 # => that aren't y or n, and then asks you to try again.  Keep asking for a
 # => response until you receive a valid y or n response.  In addition, your
 # => program should allow for both Y and N uppcase responses; case sensitive
 # => input is general a poor user interface choice.

 loop do
 puts ">> Do you want me to print something? (y/n)"
 choice = gets.chomp.to_s
 if choice == "y" || choice == "Y"
   puts "something"
   break
 elsif choice == "n" || choice == "N"
   puts " "
   break
 else choice != "y" || choice != "Y" || choice != "n" || choice != "N"
   puts "Invalid input!  Please enter either y or no."
 end
 end

#LAUNCH SCHOOL SIMPLER version
choice = nil
loop do
  puts '>> Do you want me to print something? (y/n)'
  choice = gets.chomp.downcase
  break if %w(y n).include?(choice)
  puts '>> Invalid input! Please enter y or n'
end
puts 'something' if choice == 'y'

#  Write a program that prints 'Launch School is the best!' repeatadely until
# =>  a certain number of lines have been printed.  The program should obtain the
# => number of lines from the user, and should insist that at least three lines
# => are printed.

loop do
puts ">> How many output lines do you want?  Enter a number >= 3:"
  choice = gets.chomp.to_i
if choice >= 3
  puts 'Launch School is the best!'
  choice += 1
  break
else
  puts 'Not a great choice, nimrod.  I said >= 3.  Try again.'
end
end

#  Write a program that prints 'Launch School is the best!' repeatadely until
# =>  a certain number of lines have been printed.  The program should obtain the
# => number of lines from the user, and should insist that at least three lines
# => are printed.

puts '>> How many output lines do you want?  Enter a number >= 3.'
  choice = gets.chomp.to_i

if choice >= 3
  choice.times { puts 'Launch School is the best!' }
else
  puts '>>  Not a great choice, nimrod.  I said >= 3.  Try again.'
end

#  Write a program that displays a welcome message, but only after the user
# => enters the correct password, where the password is a string that is
# => definted as a constant in your program.  Keep asking for the password until
# => the user enters the correct password.

loop do
  puts "Hello!  Please enter your password."
  answer = gets.chomp.to_s
  password = "Grande"
if answer != password
  puts "Sorry, please try again."
else
  puts "Welcome to my secret domain!"
break
end
end

PASSWORD = 'SecreT'

loop do
  puts '>> Please enter your password:'
  password_try = gets.chomp
  break if password_try == PASSWORD
  puts '>> Invalid password!'
end

puts 'Welcome!'

#  In this exercise, you should modify the program so that it also requires a
# => user name.  The program should solicit both the user name and the password
# => then validate both, and issue a generic error message if one or both are
# => incorrect; the error message should not tell the user which item is
# => incorrect.

NAME = "Tony"
PASS = "Huge"

loop do
  puts "Enter user name."
  user_name = gets.chomp.to_s
  puts "Enter password."
  password = gets.chomp.to_s
break if user_name == NAME && password == PASS
  puts "Invalid entry.  Please try again."
end

puts "Welcome!"

#  Write a program that obtains two Integers from the user, then prints the
# => results of dividing the first by the second.  The second number must
# => not be 0, and both numbers should be validated using this method.

def valid_number?(number_string)
  number_string.to_i.to_s == number_string
end

numerator = nil
loop do
  puts '>> Please enter the numerator:'
  numerator = gets.chomp
  break if valid_number?(numerator)
  puts '>> Invalid input.  Only integers are allowed.'
end

denominator = nil
loop do
  puts '>> Please enter the denominator:'
  denominator = gets.chomp
  if denominator == '0'
    puts '>> Invalid input A denominator of 0 is not allowed.'
  else
    break if valid_number?(denominator)
    puts '>> Invalid input.  Only integers are allowed.'
  end
end

result = numerator.to_i / denominator.to_i
puts "#{numerator} / #{denominator} is #{result}"

#  Modify this program so it repeats itself after each input/print iteration,
# => asking for a new number each time through.  The program should keep running
# => until the user enters q or Q.

number_of_lines = nil
loop do begin
    puts '>> How many output lines do you want?  Enter a number >= 3: (Q to quit):'
    number_of_lines = Integer(gets)
  rescue then puts "Thanks for playing.  Have a great day."
    break
end

if number_of_lines >= 3
  number_of_lines.times { puts 'Launch School is the best!' }
else
  puts ">> That's not enough lines."
end
end

#  Write a program that requests two integers from the user, adds them together,
# => and then displays the result.  Furthermore, insist that one of the integers
# => be positive, and one negative; however, the order in which the integers are
# => entered does not matter.

# => Do not check for the positive/negative requirement until both integers are
# => entered, and start over if the requirement is not met.



loop do
  answer = 0
  answer2 = 0
  puts "Please enter a positive or negative number."
    answer = gets.chomp.to_i
  puts "Please enter one more number."
    answer2 = gets.chomp.to_i
  if answer == 0 || answer2 == 0
    puts "Invalid entry.  Can't be zero.  Try again."
  elsif answer < 0 && answer2 < 0
    puts "Sorry, can't have two negative numbers.  Please try again."
  elsif answer > 0 && answer2 > 0
    puts "Sorry, we need one positive and one negative number.  Please try again."
  else
    result = answer + answer2
    puts "Your answer is #{answer} + #{answer2} = #{result}"
    break
  end
end
#  THE LAUNCH SCHOOL ANSWER

def valid_number?(number_string)
  number_string.to_i.to_s == number_string && number_string.to_i != 0
end

def read_number
  loop do
    puts '>> Please enter a positive or negative integer:'
    number = gets.chomp
    return number.to_i if valid_number?(number)
    puts '>> Invalid input. Only non-zero integers are allowed.'
  end
end

first_number = nil
second_number = nil

loop do
  first_number = read_number
  second_number = read_number
  break if first_number * second_number < 0
  puts '>> Sorry. One integer must be positive, one must be negative.'
  puts '>> Please start over.'
end

sum = first_number + second_number
puts "#{first_number} + #{second_number} = #{sum}"


#  Write a method named print_me that prints "I'm printing within the method!"
# => when invoked.

def print_me
  puts "I'm printing within the method!"
end

print_me

#  Write two methods, one that returns the string "Hello" an done that returns the
# => string "World".  Then print both strings using puts, combining them into one
# => sentence.

def you
  "Hello"
end

def me
  "World"
end

puts "#{you} #{me}"

#  Write a method named greet that invokes the following methods:

def you
  "Hello"
end

def me
  "World"
end

#  When greet is invoked with puts, it should output the following:  Hello World

def greet
  puts "#{you} #{me}"
end

greet

#  Using the following code, write a method called car that takes two arguments
# => and prints a string containing the values of both arguments.

def car(a, b)
  puts "#{a} #{b}"
end

car('Bill', 'Murray')

#  Write a method named time_of_day that, given a boolean as its argument, Prints
# => "It's daytime!" if the boolean is true and "It's nighttime!" if it's false.
# => Pass daylight into the method as the argument to determine whether its day
# => or night.

def time_of_day(time)
  return "It's daytime!" if "daylight".match(time)
  return "It's nighttime!"
end


puts time_of_day("daylight")


#  LAUNCH School
def time_of_day(daylight)
  if daylight
    puts "It's daytime!"
  else
    puts "It's nighttime!"
  end
end

daylight = [true,false].sample
time_of_day(daylight)

#  Fix the following code so that the names are printed as expected.
def dog(name)
  return "The dog's name is #{name}."
end

def cat(name)
  return "The cat's name is #{name}."
end

puts dog("Spot")
puts cat("Ginger")

#Launch SCHOOL
def dog(name)
  return name
end

def cat(name)
  return name
end

puts "The dog's name is #{dog('Spot')}."
puts "The cat's name is #{cat('Ginger')}."

#  Write a method that accepts one argument, but doesn't require it.  The parameter
# => should default to the string "Bob" if no argument is given.  The method's
# => return value should be the value of the argument.

def assign_name(name="Bob")
  if name == "Bob"
    puts "Bob"
    return "true" * 2
  else
    puts "#{name}"
    end
end




puts assign_name("Kevin")
puts assign_name

#  Launch School solution

def assign_name(name = 'Bob')
  name
end

puts assign_name('Kevin')
puts assign_name

#  Write the following methods so that each output is true.


def add(num1, num2)
  num1 + num2
end

def multiply(num1, num2)
  num1 * num2
end

puts add(2, 2)
puts add(5, 4)
puts multiply(add(2, 2), add(5, 4))

#  The variables below are both assigned to arrays.  The first one, names,
# => contains a list of names.  The second one, activities, contains a list of
# => activities.  Write the methods name and activity so that they each take the
# => appropriate array and return a random value from it.  Then write the method
# => sentence that combines both values into a sentence and returns it from the
# => method.

names = ['Dave', 'Sally', 'George', 'Jessica']
activities = ['walking', 'running', 'cycling']

def name(names)
  names.sample
end

def activity(activies)
  activies.sample
end

def sentence(name, activity)
  "#{name} went #{activity} today!"
end





puts sentence(name(names), activity(activities))


sun = ['visible', 'hidden'].sample
puts sun
puts "The clouds are blocking the sun!" unless sun == 'visible'
puts "The sun is so bright!" if sun == 'visible'

boolean = [true, false].sample
puts boolean == true ? "I'm true!" : "I'm false!"


Launch School

boolean ? puts("I'm true!") : puts("I'm false!")

#  Write a case statement that prints "Go!" if stoplight equals 'green', "Slow
# => down!" if stoplight equals 'yellow', and "Stop!" if stoplight equals red.

stoplight = ['green', 'yellow', 'red'].sample
puts stoplight
case stoplight
when 'green'
  puts "Go!"
when 'yellow'
  puts "Slow down!"
else 'red'
   puts "Stop!"
end

stoplight = ['green', 'yellow', 'red'].sample

puts stoplight

case stoplight
when 'green' then puts 'Go!'
when 'yellow' then puts 'Slow down!'
else puts 'Stop!'
end

#  Create an empty string using the String class and assign it to a variable.

empty_string = String.new

# OR

empty_string = ''

#  Both of these above are solutions to this problem.  Ruby interprets literals
# => as String objects.  Therefore, '' and String.new accomplish the same task
# => because they both return an empty string object.

# Modify the code so that double-quotes are used instead of single-quotes.

puts "It's now 12 o'clock."

# => Single quotes don't allow for escape sequences.  For instance, if you wanted
# => to start a new line, 'Hello\nworld'.  The escape sequence \n will be displayed
# => instead of interpreted.  There is one exception however, which is the
# => escaping of other single-line quotes, such as: '12 o\'clock'


# => You can also write strings without quotes.

# %Q == Double-quotes  %q == single-quotes

#  Using the following code, compare the value of name with the string 'RoGeR'
# => while ignoring the case of both strings.  Print true if the values are the
# => same, print false if they aren't.  Then, perform the same-case insensitive
# => comparison, except compare the value of name with the string 'DAVE' instead.

name = 'Roger'

name.casecmp?('RoGeR') ? puts('true') : puts('false')

name.casecmp?('DAVE') ? puts('true') : puts('false')

first_name = 'John'
last_name = 'Doe'

full_name = "#{first_name} " + "#{last_name}"

puts full_name


#  Using the following code, capitalize the value of state then print the modified
# => value.  Note that state should have the modified value both before and after
# => you print it.

state = 'tExAs'
state.downcase
puts state.capitalize

#  LAUNCH SCHOOL SOLUTION

state = 'tExAs'

state.capitalize!
puts state

#  Given the following code, invoke a destructive method on greeting so That
# => Goodbye! is printed instead of Hello!

greeting = 'Hello!'
greeting.sub! 'Hello!', 'Goodbye!'
puts greeting

#  Using the following code, split the value of alphabet by individual characters

alphabet = "abcdefghijklmnopqrstuvwxyz"

puts alphabet.split('')
#  Given the following code, use Array#each to print the plural of each word
# => in words

words = 'car human elephant airplane'

words.split(' ').each do |word|
  puts word + 's'
end
#  Using the following code, print true if colors include 'yellow' and print
# => false if it doesn't.  Then, print true if colors includes the color 'purple'
# => and print false if it doesn't.

colors = 'blue pink yellow orange'

p colors.include?('yellow') ? 'true' : 'false'
p colors.include?('purple') ? 'true' : 'false'

#  DO NOT NEED ?

puts colors.include?('yellow')
puts colors.include?('purple')

#  Select fish from pets, assign the return value to a variable named my_pet,
# => then print the value of my_pet
pets = ['cat', 'dog', 'fish', 'lizard']
a = pets[2]
my_pet = "I have a pet #{a}!"

puts my_pet
#  simpler way
my_pet = pets[2]
puts "I have a pet #{my_pet}!"

#  Select fish and lizard from pets at the same time,  assign the return value
# => to a variable named my pets, then print the value of my pets.

pets = ['cat', 'dog', 'fish', 'lizard']
my_pets = "I have a pet " + pets[2] + " and a pet " + pets[3] +"!"
puts my_pets

#LAUNCH SCHOOL SOLUTION

my_pets = pets[2..3]
puts "I have a pet #{my_pets[0]} and a pet #{my_pets[1]}!"

#  Using the code below, select dog fromt pets, add the return value to my_pets,
# => then print the value of my_pets."

pets = ['cat', 'dog', 'fish', 'lizard']
my_pets = pets[2..3]
my_pets.pop
my_pets.push(pets[1])

puts "I have a pet #{my_pets[0]} and a pet #{my_pets[1]}!"

#  In the code below, an array containing different types of colors is assigned
# => colors.  Use Array#each to iterate over colors and print each element.

colors = ['red', 'yellow', 'purple', 'green']

colors.each { |i| puts "I'm the color #{i}!" }
#  In the code below, an array containing the numbers 1 through 5 is assigned
# => to numbers.  Use Array#map to iterate over numbers and return a new array
# => with each number doubled.  Assign the returned array to a variable named
# => doubled_number and print its value using #p.

numbers = [1, 2, 3, 4, 5]
doubled_numbers = p numbers.map { |num| num + num }

# Above works, below is launch school solution

doubled_numbers = numbers.map do |number|
                    number * 2
                  end

p doubled_numbers

#  Use array#select to iterate over numbers and return a new array that contains
# => only numbers divisible by three.  Assigned the returned array to a variable
# => named divisible_by_three and print its value using #p.

numbers = [5, 9, 21, 26, 39]
p divisible_by_three = numbers.select { |num| num % 3 == 0 }
#  The following array contains three names and numbers. Group each name with the
# => number following it by placing the pair in their own array. Then create a nested
# => array containing all three groups. What does this look like? (You don't need to
# => write any code here. Just alter the value shown so it meets the exercise
# => requirements.)

[['Dave', 7], ['Miranda', 3], ['Jason', 11]]
#  Use Array#flatten to flatten favorites so that it's no longer a nested array.
# => Then assign the flattened array to a variable named flat_favorites and
# => print its value using #p.

favorites = [['Dave', 7], ['Miranda', 3], ['Jason', 11]]

p flat_favorities = favorites.flatten

#  create a hash that contains the following data and assign it to a variable
# => named car.

hash1 = { type: 'sedan', color: 'blue', mileage: '80_000' }
hash1[:year] = '2003'
p hash1

#  Using this code, delete the key :mileage and its associated value.
hash1.delete(:mileage)
p hash1

#  Select the value 'blue' from car and print it with puts
p hash1[:color]

#  Use hash#each to iterate over numbers and print each element's key/value
# => pair.

numbers = { high: 100, medium: 50, low: 10 }
numbers.each do |k,v|
  p "A #{k} number is #{v}"
end


#  Use Enumerable#map to iterate over numbers and return an array containing
# => number divided by 2.  Assign the returned array to a variable named
# => half_numbers and print its value using #p.

numbers = { high: 100, medium: 50, low: 10 }
p half_numbers = numbers.map { |k, v| v / 2 }

#  Use Hash#select to iterate over numbers and return a hash containing only
# => key/value pairs where the value is less than 25.  Assign the returned
# => hash to variable named low-numbers and print its value using #p.

numbers = { high: 100, medium: 50, low: 10 }

p low_numbers = numbers.select{ |k, v| v < 25}

#  In the following code, numbers isn't mutated because select isn't a destructive
# => method.  However, there is a destructive version of #select named #select!
# => Modify the code to use #select! instead of #select.

numbers = {
  high:   100,
  medium: 50,
  low:    10
}

low_numbers = numbers.select! do |key, value|
                 value < 25
               end

p low_numbers
p numbers

def find_first_nonzero_among(numbers)
  numbers.each do |n|
    return n if n.nonzero?
  end
end

# Examples

find_first_nonzero_among([0, 0, 1, 0, 2, 0])
find_first_nonzero_among([1])

sunshine = ['true', 'false'].sample
  if sunshine == 'true'
    puts "Today's weather will be sunny!"
  else sunshine == 'false'
    puts "Today's weather will be cloudy!"
  end

puts sunshine

#  Launch SCHOOL
def predict_weather
  sunshine = [true, false].sample

  if sunshine
    puts "Today's weather will be sunny!"
  else
    puts "Today's weather will be cloudy!"
  end
end


def multiply_by_five(n)
  n * 5
end

puts "Hello! Which number would you like to multiply by 5?"
number = gets.chomp.to_i

puts "The result is #{multiply_by_five(number)}!"

pets = { cat: 'fluffy', dog: ['sparky', 'fido'], fish: 'oscar' }

pets [:dog].push('bowser')

p pets

numbers = [5, 2, 9, 6, 3, 1, 8]

even_numbers = numbers.select { |num| num % 2 == 0 }

p even_numbers


def get_quote(person)
  if person == 'Yoda'
    'Do. Or do not. There is no try.'
  elsif person == 'Confucius'
    'I hear and I forget. I see and I remember. I do and I understand.'
  elsif person == 'Einstein'
    'Do not worry about your difficulties in Mathematics. I can assure you mine are still greater.'
end
end

puts 'Confucius says:'

puts '"' + get_quote('Confucius') + '"'

# Financially, you started the year with a clean slate.

balance = 0

# Here's what you earned and spent during the first three months.

january = {
  income: [ 1200, 75 ],
  expenses: [ 650, 140, 33.2, 100, 26.9, 78 ]
}

february = {
  income: [ 1200 ],
  expenses: [ 650, 140, 320, 46.7, 122.5 ]
}

march = {
  income: [ 1200, 10, 75 ],
  expenses: [ 650, 140, 350, 12, 59.9, 2.5 ]
}

# Let's see how much you've got now...

def calculate_balance(month)
  plus  = month[:income].sum
  minus = month[:expenses].sum

  plus - minus
end

[january, february, march].each do |month|
   balanace += calculate_balance(month)
end

puts balance

colors = ['red', 'yellow', 'purple', 'green', 'dark blue', 'turquoise', 'silver', 'black']
things = ['pen', 'mouse pad', 'coffee mug', 'sofa', 'surf board', 'training mat', 'notebook']

colors.shuffle!
things.shuffle!

i = 0
loop do
  break if i > colors.length

  if i == 0
    puts 'I have a ' + colors[i] + ' ' + things[i] + '.'
  else
    puts 'And a ' + colors[i] + ' ' + things[i] + '.'
  end

  i += 1
end

# => Approach/Algorithm

# => We break from the loop only when i is greater than colors.length, so we still
# => execute it when i equals colors.length. Because Arrays have a zero-based index,
# => this results in colors[i] accessing one position after the last one. Since that
# => position doesn't exist, colors[i] returns nil. Our break condition should
# => therefore be:

break if i > colors.length - 1

# => (We could also use i >= colors.length or even i == colors.length.)

# => However, that still throws the same error.

#  Note that we retrieve both colors[i] and things[i]. But things is shorter than
# => colors. So in the last iteration of the loop, things[i] is nil. The fact that
# => one array

# Each player starts with the same basic stats.

player = { strength: 10, dexterity: 10, charisma: 10, stamina: 10 }

# Then the player picks a character class and gets an upgrade accordingly.

character_classes = {
  warrior: { strength:  20 },
  thief:   { dexterity: 20 },
  scout:   { stamina:   20 },
  mage:    { charisma:  20 }
}

puts 'Please type your class (warrior, thief, scout, mage):'
input = gets.chomp.downcase.to_s
input == character_classes{|k|}

player.each do |key, value|
  if input == character_classes{|k|}
    player.replace(character_classes)
  else break end end

puts 'Your character stats:'
puts player


Approach/Algorithm

The error message says:

rpg.rb:17:in `merge': no implicit conversion of nil into Hash (TypeError)

The error message tells us that one of the two hashes we are trying to merge is actually nil. If you check both hashes, you'll find that it's character_classes[input] that references nil. This is because we are trying to access the value of a key that doesn't exist in the hash. Here, we have to be conscious of what the type of object our hash keys are and what the type of object input is.

After addressing this error, the initial player stats still don't seem to have updated. Check out the documentation for Hash#merge. The important question here is: Does merge mutate the caller (i.e. player) and do we use it accordingly?
Solution

# Each player starts with the same basic stats.

player = { strength: 10, dexterity: 10, charisma: 10, stamina: 10 }

# Then she picks a character class and gets an upgrade accordingly.

character_classes = {
  warrior: { strength:  20 },
  thief:   { dexterity: 20 },
  scout:   { stamina:   20 },
  mage:    { charisma:  20 }
}

puts 'Please type your class (warrior, thief, scout, mage):'
input = gets.chomp.downcase

player = player.merge(character_classes[input.to_sym])

puts 'Your character stats:'
puts player
