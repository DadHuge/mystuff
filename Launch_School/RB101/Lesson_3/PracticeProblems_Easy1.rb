=begin
numbers = [1, 2, 2, 3]
numbers.uniq

puts numbers



Describe the difference between ! and ? in Ruby. And explain what would happen in the following scenarios:

  1.  what is != and where should you use it?
  2.  put ! before something, like !user_name
  3.  put ! after something, like words.uniq!
  4.  put ? before something
  5.  put ? after something
  6.  put !! before something, like !!user_name

Just to clarify, if you see ! or ? at the end of the method, it's actually part of the method name, and not Ruby syntax. Therefore, you really don't know what the method is doing, even if it ends in those characters -- it depends on the method implementation. The other uses are actual Ruby syntax:

    != means "not equals"
    ? : is the ternary operator for if...else
    !!<some object> is used to turn any object into their boolean equivalent. (Try it in irb)
    !<some object> is used to turn any object into the opposite of their boolean equivalent, just like the above, but opposite.
=end
numbers = [1, 2, 3, 4, 5]
numbers.delete_at(1)
#  deletes are particular index
numbers.delete(1)
#  deletes the number 1

# Question 5 - 42 between 10 and 100
(10..100).include?(42)

#Question 6 - show two ways to put "four score and" in front of it
famous_words = "seven years ago..."

p "Four score and #{famous_words}"

famous_words.prepend("Four score and ")
p famous_words

#  Quesiton 7 - Fun with gsub:
def add_eight(number)
  number + 8
end

number = 2

how_deep = "number"
5.times { how_deep.gsub!("number", "add_eight(number)") }

p how_deep
eval(how_deep)

#  Question 8 - make this an unnested array
flintstones = ["Fred", "Wilma"]
flintstones << ["Barney", "Betty"]
flintstones << ["BamBam", "Pebbles"]
flinstones.flatten!

#  Question 9 - turn this into an array containing only two elements Barney
flintstones = { "Fred" => 0, "Wilma" => 1, "Barney" => 2, "Betty" => 3, "BamBam" => 4, "Pebbles" => 5 }
p flintstones.rassoc(2)
#OR
flintstones.assoc("Barney")
