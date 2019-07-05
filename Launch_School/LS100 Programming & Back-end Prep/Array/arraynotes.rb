#  An ARRAY is an ordered list of elements that can be of any type.  Uses []
#  ARRAYS can have anything in them.  Even other arrays!  Strings, integers,
# => floats, etc.
array = [1, "Bob", 4.33,"another string"]
array.first  #  Prints first variable in array
array.last  #  Prints last variable in array
array.pop  #  Takes last item permanently off array
array.push("another string")  #  Puts item permanently back into array
array << "another string"  #  Does the same thing as push

#  The map method iterates over an array applying a block to each element of the
# => array and returns a new array with those results.  collect method same as
# => map method
a = [1, 2, 3, 4]
a.map { |num| num**2 }
# => [1, 4, 9, 16]
a.collect { |num| num**2 }
# => [1, 4, 9, 16]
a
# => [1, 2, 3, 4]
#  map and collect do not mutate the caller.

#  delete_at method can be helpful if you'd like to eliminate the value at a
# => certain index from your array.  You'll want to be careful with this one,
# => because it modifies your array destructively.
a.delete_at(1)
# => a
# => [1, 3, 4]

#  Sometimes you will know the value you want to delete, but not the index.
# => Use delte method here.  This deletes permanently deletes all instances of
# => the provided value from the array.
my_pets = ["cat", "dog", "bird", "cat", "snake"]
my_pets.delete("cat")
my_pets
# => ["dog", "bird", "snake"]

#  Another useful method is the uniq method.  This iterates through an array,
# => deletes any duplicate values that exist, then returns the result.
b = [1, 1, 2, 2, 3, 3, 4, 4]
b.uniq
# => [1, 2, 3, 4]
b
# => [1, 1, 2, 2, 3, 3, 4, 4]

#  if you add the bang suffix ! to this method, you can perform it destructively.
# =>  Much like the way the delete method works.

#  ITERATING OVER AN ARRAY.  You can use the each method on an array.  Ruby
# => library has many standard methods.  select method returns an array that
# => includes any items that return true to the expression provided.

numbers = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
numbers.select { |number| number > 4 }
# => [5, 6, 7, 8, 9, 10]
numbers
# => [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]  #  Does not mutate the caller.

#  NESTED ARRAYS.  Arrays within arrays.
teams = [["Joe", "Steve"], ["Frank", "Molly"], ["Dan", "Sara"]]
teams[1]
# => ["Frank", "Molly"]
b = [2, 3, 4]
b.pop
b.unshift(1)
# => [1, 2, 3]

# The to_s method is used to create a string representation of an array.
a = [1, 2, 3]
"It's as easy as #{a}"
# => "It's as easy as [1, 2, 3]"
#  In order to get our array to print properly, Ruby is calling the to_s method
# => on our array and adding it to the string.

#  COMMON ARRAY METHODS
# => include?  #  checks to see if the argument given is included in the array.
# => a.include?(3)

# => flatten  #  can be used to take an array that contains nested arrays and
# => create a one-dimensional array.
# => a.flatten

# => each_index  #  Iterates through array like each method, but the variable
# => represents the index number as opposed to the value at each index.
a = [1, 2, 3, 4, 5]
a.each_index { |i| puts "This is index #{i}" }

# => each_with_index gives us the ability to manipulate both the value and the
# => index by passing two parameters to the block of code.  First is value,
# => second is index.
a = [1, 2, 3, 4, 5]
a.each_with_index { |val, idx| puts "#{idx+1}. #{val}"}

# => sort  #  The sort method is a handy way to order an array.  It returns a
# => sorted array.   a.sort

# => product method can be used to combine two arrays in an interesting way.
# => It returns an array that is a combination of all elements from all arrays.
[1, 2, 3].product([4, 5)]
# => [[1, 4], [1, 5], [2, 4], [2, 5], [3, 4], [3, 5]]

# =>  each and map are the same, except map returns an array
# => DON'T USE PUTS WITH MAP
