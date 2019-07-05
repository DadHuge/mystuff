#  1.
puts "Tony" + "Maduzia"

#  2.  Use the modulo operator, division, or a combination of both to take a 4 digit number
# => and find the digit in the 1. thousands place, 2. hundreds place, 3. tens place
# => 4. ones place.

number = 1470
thousands = 1
hundreds = 4
tens = 7
ones = 0

puts "The #{number} has a thousands, hundreds, tens and ones digits."
puts "The #{thousands} is in the thousands place."
puts "The #{hundreds} is in the hundreds place."
puts "The #{tens} is in the tens place."
puts "The #{ones} is in the ones place."

#  Didn't use division or modulo.  Here is the exercise solution provided by Launch school.
thousands = 4936 / 1000
hundreds = 4936 % 1000 / 100
tens = 4936 % 1000 % 100 / 10
ones = 4936 % 1000 % 100 % 10
puts "#{thousands}, #{hundreds}, #{tens}, #{ones}"

#  3.  Write a program that uses a hash to store a list of movie titles the year they came
# => out.  The use the puts command to make your program print out the year of each
# => movie to the screen.

movies = { Movie1: '1985', Movie2: '1965',  Movie3: '1995', Movie4: '1975', Movie5: '1945' }
puts movies[:Movie1]
puts movies[:Movie2]
puts movies[:Movie3]
puts movies[:Movie4]
puts movies[:Movie5]

#  4.  Use the dates from the previous exmaple and store them in an array.
# => Then make your program output the same thing as exercise three.

arr = [1985, 1965, 1995, 1975, 1945]
puts arr[0]
puts arr[1]
puts arr[2]
puts arr[3]
puts arr[4]

#  5.  Write a program that outputs the factorial of the numbers 5,6,7 and 8.

eight = 8 * 7 * 6 * 5 * 4 * 3 * 2 * 1
seven = 7 * 6 * 5 * 4 * 3 * 2 * 1
six = 6 * 5 * 4 * 3 * 2 * 1
five = 5 * 4 * 3 * 2 * 1
puts "The factorial of eight is #{eight}."
puts "The factorial of seven is #{seven}."
puts "The factorial of six is #{six}."
puts "The factorial of five is #{five}"

#  6.  Write a program that calculates the square of 3 float numbers and
# => outputs the result to the screen.
puts 3.01 ** 2
puts 4.81241214 ** 2
puts 8.434 ** 2
