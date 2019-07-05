# VARIABLES AS POINTERS confuses a lot of new programmers, but one
# => of the most important variables to understand.
a = "hi there"
b = a
a = "not here"
p b
#What is b in the above code?  # ("hi there")
a = "hi there"
b = a
a << ", Bob"
p b
#What is the b in the aboe code?  # ("hi there, Bob")

# => Variables are pointers to physical space in memory.
# => Second b changed because << mutated the caller.

#  This applies to variables that are arrays, hashes, or any data
# => structure that has methods that mutate the caller.
# => EXAMPLES:
a = [1, 2, 3, 3]
b = a
c = a.uniq
p a
p b
p c
c = a.uniq!
p a
p b
p c

def test(b)
  b.map {|letter| "I like the letter: #{letter}"}
end

a = ['a', 'b', 'c']
p test(a)

def test(b)
  b.map! {|letter| "I like the letter: #{letter}"}
end

a = ['a', 'b', 'c']
p test(a)
