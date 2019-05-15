#  Every time you use " around a piece of text you are making a string.
# => A string is how you make something that your program might give to a human.
# => Strings are really handy.  In this exercise you will learn how to make
# => strings that have variables embedded in them.  You embed variables inside
# => a string by using a special #{} sequence and then put the variable you want
# => inside the {}.  This tells Ruby "Hey, this string needs to be formatted.
# => Put these variables in there."

myname = 'Zed A. Shaw'
myage = 35
myheight = 74
myweight = 180
myeyes = 'Blue'
myteeth = 'White'
myhair = 'Brown'
weight_kg = 180 * 0.453592
height_cm = 74 * 2.4

puts "Let's talk about my #{myname}."
puts "He's #{myheight} inches tall."
puts "He's #{myweight} pounds heavy."
puts "Actually that's not too heavy."
puts "He's got #{myeyes} eyes and #{myhair} hair."
puts "His teeth are usually #{myteeth} depending on the coffee."
puts "#{myname}'s weight in kilograms is #{weight_kg}."
puts "His height in centimeters is #{height_cm}."


puts "If I add #{myage}, #{myheight}, and #{myweight} I get #{myage + myheight + myweight}."
