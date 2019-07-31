#  Question 1 In this hash see if "Spot" is present?  What other two hash methods would work just as well for this solution?

ages = { "Herman" => 32, "Lily" => 30, "Grandpa" => 402, "Eddie" => 10 }
ages.has_key?("Spot")
ages.assoc("Spot")
ages.include?("Spot")

#Question 2 Convert the string in the following ways:
=begin
a)  "tHE mUNSTERS ARE CREEPY IN A GOOD WAY."
b)  "The munsters are creepy in a good way."
c)  "the munsters are creepy in a good way."
d)  "THE MUNSTERS ARE CREEPY IN A GOOD WAY."
=end

#  A)
munsters_description = "The Munsters are creepy in a good way."
munsters_description.upcase!
munsters_description.sub!(/[T]/, 'T' => 't')
munsters_description.sub!(/[M]/, 'M' => 'm')
p munsters_description
#OR munsters_description.swapcase!
#B)
munsters_description = "The Munsters are creepy in a good way."
p munsters_description.capitalize!

#C)
munsters_description = "The Munsters are creepy in a good way."
p munsters_description.downcase!

#D)
munsters_description = "The Munsters are creepy in a good way."
p munsters_description.upcase!

#Question 3 Add ages to marilyn and spot to existing hash

ages = { "Herman" => 32, "Lily" => 30, "Grandpa" => 5843, "Eddie" => 10 }
additional_ages = { "Marilyn" => 22, "Spot" => 237 }
ages.merge!(additional_ages)
p ages

#Question 4 See if the name "dino" appears in the string below

advice = "Few things in life are as important as house training your pet dinosaur."
p advice.include?("Dino")
#OR advice.match?("Dino")

#Question 5 show an easier way to write this array

flintstones = ["Fred", "Barney", "Wilma", "Betty", "BamBam", "Pebbles"]

p flintstones = %w(Fred Barney Wilma Betty Bambam Pebbles)

#Question 6  How can we add Dino?
flintstones = %w(Fred Barney Wilma Betty Bambam Pebbles)
flintstones << "Dino"
p flintstones

#How can we add multiple items to this?
flintstones = %w(Fred Barney Wilma Betty Bambam Pebbles)
flintstones.concat( ["Dino", "Hoppy"] )
p flintstones
flintstones.concat(%w(Dino Hoppy))  # concat adds an array rather than one item
flintstones.push("Dino").push("Hoppy")   # push returns the array so we can chain

#Question 8 Remove everything starting from house.

advice = "Few things in life are as important as house training your pet dinosaur."
p advice.byteslice(0,44)
advice.slice!(0, advice.index('house'))

#Question 9 write a one liner to count the number of lower case 't' characters in the following string

statement = "The Flintstones Rock!"
p statement.count("t")

#Question 10

title = "Flintstone Family Members"
title.center(40)
