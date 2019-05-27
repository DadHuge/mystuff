#  Modify name.rb again so that it firsts asks the user for their first name,
# => saves it to the variable, and then does the same for the last name.
# => Then outputs it their full name all at once.

puts "What is your first name?"
first_name = gets.chomp
a = first_name
puts "What is your last name?"
last_name = gets.chomp
b = last_name
puts a + " " + b
