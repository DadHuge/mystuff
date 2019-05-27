#  Blocks, like paramaters, can be passed into a method just like
# => normal variables.
def take_block(&block)
  block.call
end

take_block do
  puts "Block being called in the method!"
end
#  The ampersand in the method definition tells us that the argument is
# => a block.  You could name it anything you wanted.  The block must
# => always be the last parameter in the method definition.
# => When we are ready to use the method, we call take_block
# => Because this method can accept a block, we can pass in a block
# => of code using do/end

# => Lets say we wanted to pass an argument to the method.
def take_block(number, &block)
  block.call(number)
end

number = 42
take_block(number) do |num|
  puts "Block being called in the method! #{num}"
end
# => Here we are passing the number into the take_block and using it
# => in our block.call

#  PROCS are blocks that are wrapped in a proc object and stored in a
# => variable to be passed around.  This is how you define a proc.
talk = Proc.new do
  puts "I am talking"
end

talk.call

# => Procs can also take arguments if specified.
talk = Proc.new do |name|
  puts "I am talking to #{name}."
end

talk.call "Bob"

#  Procs can be passed into methods.  Let's take our previous
# => passing.block.rb and modify to take a proc.
def take_proc(proc)
  [1, 2, 3, 4, 5].each do |number|
    proc.call number
  end
end

proc = Proc.new do |number|
  puts "#{number}.  Proc being called in the method!"
end

take_proc(proc)
# => Using procs give us the added flexibility to reuse blocks in more
# => than one place without having to type them out everytime.
