# => 1.  Use the each method of an Array to iterate over [1,2,3,4,5,6,7,8,9,10]
# => and print out each value

array = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]

# one line version
p array.each { |num| puts num }

#  multi-line version
array.each do |number|
  puts number
end

# => 2.  Same as above, but only prints out values greater than 5.
array = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]

p array.select { |num| num > 5 }
#  Wrong because written with select.  Another method.
# => 2.  Same as above, but only prints out values greater than 5.
array = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]

array.each do |num|
  if num > 5
    puts num
  end
end

# => 3.  Now, using the same array from #2, use the select method to extract all
# => odd numbers into a new array

array = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]

new_array = array.select { |num| num.odd? }

p new_array

# => 4.  Append "11" to the end of the original array.  Prepend "0" to the
# => begining.

array = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]

array.unshift(0)
array.push(11)

p array

#  5.  Get rid of "11".  Append a "3".
array.pop
array << 3

p array

#  Get rid of duplicates without specifically removing any one value.
p array.uniq

#  What is the major difference between an array and a hash?
# => An array is a collection of data.  Each element of an array is accessed
# => using an integer which is the index of the element in an array.
# => Hash is a collection of key-value pairs.  In Hash, the value is accessed
# => using the key.

# => 8.  Create a hash using both ruby syntax styles.

old_syntax_hash = {:name => 'bob'}

new_hash = {name: 'bob'}

# => 9a.  Get the value of key ':b'.
# => 9b.  Add to this hash the key:value pair '{e:5}'.
# => 9c.  Remove all key:value pairs whose value is less than 3.5

h = {a:1, b:2, c:3, d:4}

#  9a.
p h[:b]

#  9b.
h[:e] = '5'
p h

#  9c.

p h.select { |x| x == :d }
#  this works but doesn't delete
h.delete_if { |k, v| v < 3.5 }
#  doesn't work in power shell
#  12.  Given the following data structures:  Write a program
# =>   that moves the information from the array into the
# =>  empty hash that applies to the correct person.

contact_data = [["joe@email.com", "1223 Main st.", "555-123-4567"],
            ["sally@email.com", "404 Not Found Dr", "123-234-3454"]]

contacts = {"Joe Smith" => {}, "Sally Johnson" => {}}

contacts.store("Joe Smith", contact_data[0])
contacts.store("Sally Johnson", contact_data[1])
p contacts
#  13.  Using the hash from the previous exercise, demonstrate how you would
# => access Joe's email and Sally's phone number?

p contacts.fetch("Joe Smith")
p contacts.fetch("Sally Johnson")

#  OR

contacts["Joe Smith"][:email] = contact_data[0][0]
contacts["Joe Smith"][:address] = contact_data[0][1]
contacts["Joe Smith"][:phone] = contact_data[0][2]
contacts["Sally Johnson"][:email] = contact_data[1][0]
contacts["Sally Johnson"][:address] = contact_data[1][1]
contacts["Sally Johnson"][:phone] = contact_data[1][2]

puts "Joe's email is: #{contacts["Joe Smith"][:email]}"
#  14.  In exercise 12, we manually set contacts hash values one by one.
# => Now, programmitically loop or iterate over the contacts hash from 12,
# => and populate the associated data from the contact _data array.

#  Hint:  You will probably need to iterate over ([:email, :address, :phone])
# => and some helpful methods might be the Array shift and first methods.

contact_data = ["joe@email.com", "123 Main st.", "555-123-4567"]
contacts = {"Joe Smith" => {}}
fields = [:email, :address, :phone_number]

contacts.each do |name, hash|
  fields.each do |field|
    hash[field] = contact_data.shift
  end
end

p contacts

#  15.  Use Ruby's Array method delete_if and string method start_with?
# => to delete all the words that begin with an "s" in the following array.

arr = ['snow', 'winter', 'ice', 'slippery', 'salted roads', 'trees']

arr.delete_if { |x| x.start_with?('s') }

p arr

#  15a.  Then recreate the arr and get rid of all the words that start with 's'
# => or 'w'

arr = ['snow', 'winter', 'ice', 'slippery', 'salted roads', 'trees']

arr.delete_if { |x| x.start_with?('s', 'w') }

p arr

#  16.  Take the following array and turn it into a new array that consists
# => of strings containing one word.

a = ['white snow', 'winter wonderland', 'melting ice', 'slipper sidewalk', 'salted roads', 'white trees']

b1, c1, d1, e1, f1, g1 = a.each_slice(1).to_a

p b1
p c1
p d1
p e1
p f1
p g1
