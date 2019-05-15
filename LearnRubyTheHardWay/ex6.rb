#  A string is usually a bit of text you want to display to someone or "export"
# => out of the program you are writing.  Ruby knows you want something to be a
# => string when you put either " or ' around the text.
# => Strings can contain any number of variables that are in your Ruby script.
# => A variable is any line of code where you set a name = to a value.
# => types_of_people = 10 creates a variable names types_of_people and it sets it "text" do
# => = (equal) to 10.  You can put that in any string with #{types_of_people}.


types_of_people = 10
x = "There are #{types_of_people} types of people."
binary = "binary"
do_not = "don't"
y = "Those who know #{binary} and those who #{do_not}."

puts x
puts y

puts "I said: #{x}."
puts "I also said: #{y}."

hilarious = false
joke_evaluation = "Isn't this joke so funny?! #{hilarious}"

puts joke_evaluation

w = "This is the left side of ..."
e = "a string with a right side."

puts w + e
