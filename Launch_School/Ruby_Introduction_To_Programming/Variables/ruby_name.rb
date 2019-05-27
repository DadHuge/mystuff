#  1.  Write a program called name.rb that asks the user to type in their name
# => an then prints out greeting message with their name included.


#  Add another section onto name.rb that prints the name of the user 10 times.
# => You must do this without explicitly writing the puts method 10 times.
puts "What is your name?"
name = gets.chomp
puts 'Hello, ' + name
a = name
10.times { puts "#{a}" }

#  Modify name.rb again so that it firsts asks the user for their first name,
# => saves it to the variable, and then does the same for the last name.
# => Then outputs it their full name all at once.
