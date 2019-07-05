#  1.  Given a hash of family members, with keys as the title and an array of
# => names as the values, use Ruby's built-in select method to gather only
# => immediate family members' names into a new array.

family = {  uncles: ["bob", "joe", "steve"],
            sisters: ["jane", "jill", "beth"],
            brothers: ["frank","rob","david"],
            aunts:  ["mary", "sally", "susan"]
          }

new_array = family.select{ |k,v| k == :sisters || k == :brothers }

p new_array

#  My solution only prints out sisters.  WHY??

#  Launch_School solution
immediate_family = family.select do |k,v|
  k == :sisters || k = :brothers
end

a = immediate_family.values.flatten

p arr

#  2.  Look at Ruby's merge method.  Notice that it has two versions.
# => What is the difference between merge and merge!  Write a program
# => that uses both and illustrates the difference.

#  Answer = merge creates a new merge with both without destroying
# => original
hash1 = {"f" => 400, "d" => 1000}
hash2 = {"a" => 100, "q" => 200}

p hash1.merge(hash2)
p hash1
p hash2

p hash1.merge!(hash2)
p hash1
p hash2
#  Answer2 = merge! changes the original hash permanently.

#  3.  Using some of Ruby's built-in Hash methods, write a program that
# => loops through a hash and prints all the keys.  Then write a program
# => that does the same thing except printing the values.  Finally,
# => write a program that prints both.

arr = {name: "Tony", born: "1982", height: "6'4 ft", weight: "250 lbs"}

p arr.keys

p arr.values

arr.each do |key,value|
  puts "#{key} and #{value}"
end

#  Launch School answer
opposites = {positive: "negative", up: "down", right: "left"}

opposites.each_key { |key| puts key }
opposites.each_value { |value| puts value }
opposites.each { |key, value| puts "The opposite of #{key} is #{value}" }

#  What method could you use to find out if a hash contains a specific
# => value in it?  Write a program to demonstrate.

hash = { "John" => 7.5, "Angela" => 5.5, "Mikey" => 2.5 }

p hash.fetch("Billy", "Billy isn't in this hash.")
p hash.fetch("Mikey", "Mikey isn't in this hash.")
p hash.fetch("John", "boy isn't in this hash.")

#  6.  Write a program that prints out groups of words that are anagrams.
# => Anagrams are words that have the exact same letters in them but in
# => a different order.

words =  ['demo', 'none', 'tied', 'evil', 'dome', 'mode', 'live',
          'fowl', 'veil', 'wolf', 'diet', 'vile', 'edit', 'tide',
          'flow', 'neon']

p words.group_by { |word| word.each_char.sort }.values

#  Launch_School answer
result = {}

words.each do |word|
  key = word.split('').sort.join
  if result.has_key?(key)
    result[key].push(word)
  else
    result[key] = [word]
  end
end

result.each_value do |v|
  puts "------"
  p v
end

# => Given the following code...

x = "hi there"
my_hash = {x: "some value"}
my_hash2 = {x => "some value"}

# => What's the difference between the two hashes that were created?

# => Solution
# => The first hash that was created used a symbol x as the key. The second
# => hash used the string value of the x variable as the key.
