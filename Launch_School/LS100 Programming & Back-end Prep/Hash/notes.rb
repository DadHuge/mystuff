#  A HASH is a data structure that stores items by associated keys.  This is
# => contrasted against arrays, which store items by an ordered index.  Entries
# => in a hash are often referred to as key-value pairs.  This creates an
# => associative representation of data.

# => Most commonly, a has is created using symbols as keys and any data types as
# => values.  All key-value pairs in a hash are surrounded by curly braces {}
# => and comma separated.

old_syntax_hash = {:name => 'bob'}
# => {:name=>'bob'}

#  The newer syntax is much simpler.
new_hash = {name: 'bob'}
# => {:name=>'bob'}

#  You can also have hashes with many key-value pairs.
person = { height: '6 ft', weight: '160 lbs' }
# => {:height=>'6 ft', :weight=>'160 lbs'}

#  ADD ON to existing hash
person[:hair] = 'brown'
# => "brown"
person
# => {:height=>'6 ft', :weight=>'160 lbs', :hair=>'brown'}
person[:age] = 62
# => 62
person
# => {:height=>'6 ft', :weight=>'160 lbs', :hair=>'brown', :age=>62}

#  REMOVE SOMETHING FROM HASH
person.delete(:age)
# => 62
person
# => {:height=>'6 ft', :weight=>'160 lbs', :hair=>'brown'}

#  MERGE TWO HASHES
person.merge!(new_hash)
#  ITERATING OVER A HASH is similar to iterating over arrays with some small
# => differences.

person = {name: 'bob', height: '6 ft', weight: '160 lbs', hair: 'brown'}

person.each do |key, value|
  puts "Bob's #{key} is #{value}"
end

#  We use the each method like before, but this time we assign a variable to both
# => the key and the value.

#  HASHES AS OPTIONAL PARAMETERS

def greeting(name, options = {})
  if options.empty?
    puts "Hi, my name is #{name}"
  else
    puts "Hi, my name is #{name} and I'm #{options[:age]}" +
    " years old and I live in #{options[:city]}"
  end
end

greeting("Bob")
greeting("Bob", {age: 62, city: "New York City"})
greeting("Bob", age: 62, city: "New York City")
# We used Ruby hash's empty? method to detect whether the options paramater,
# => which is a hash, had anything passed into it.
# => Notice the curly braces, {} are not required when a hash is the last
# => argument, and the effect is identical.

# When deciding when to use a hash or an array, ask yourself a few questions:

# => 1.  Does this data need to be associated with a specific label?
# => If yes, use a hash.  If the data doesn't have a natural label, then
# => typically an array would work fine.

# => 2.  Does order matter?  If yes, use an array.  Hashes also maintain order,
# => but usually ordered items are stored in an array.

# => Do I need a "stack" or a "queue" structure?  Arrays are good at mimicking
# => simple "first-in-first-out" queues, or "last-in-first-out" stacks.

#  A NOTE ON HASH KEYS
irb :001 > {"height" => "6 ft"}     # string as key
=> {"height"=>"6 ft"}
irb :002 > {["height"] => "6 ft"}   # array as key
=> {["height"]=>"6 ft"}
irb :003 > {1 => "one"}             # integer as key
=> {1=>"one"}
irb :004 > {45.324 => "forty-five point something"}  # float as key
=> {45.324=>"forty-five point something"}
irb :005 > {{key: "key"} => "hash as a key"}  # hash as key
=> {{:key=>"key"}=>"hash as a key"}

#  COMMON HASH METHODS

#  The has_key? method allows you to check if a hash contains a specific key.
# => It returns a boolean value.
name_and_age= { "Bob" => 42, "Steve" => 31, "Joe" => 19}
name_and_age.has_key?("Steve")
# => true
name_and_age.has_key?("Larry")
# => false

# => The SELECT method allows you to pass a block and will return any key-value
# => pairs that evaluate to true when ran through the block.
name_and_age.select { |k,v| k == "Bob" }
# => {"Bob"=>42}
name_and_age.select { |k,v| (k == "Bob") || (v == 19) }
# => {"Bob"=>42, "Joe"=>19}

# => The fetch method allows you to pass a given key and it will return the value
# => for the key if it exists.  You can also specify an option for return if that
# => key is not present.
name_and_age.fetch("Steve")
# => 31
name_and_age.fetch("Larry", "Larry isn't in this hash")
# =>"" Larry isn't in this hash"

# => The to_a method returns an array version of your hash when called.  Let's see
# => it in action.  It doesn't modify it permanently though.
name_and_age.to_a

# => Lastly, if you want to just retrieve all the keys or all the values..
name_and_age.keys
name_and_age.values
