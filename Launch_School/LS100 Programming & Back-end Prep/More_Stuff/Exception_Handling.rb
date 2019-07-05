#  EXCEPTION HANDLING is a specific process that deals with errors in
# => a manageahnble and predictable way.  The reserved word rescue
# => will show up a lot in your ruby career.

#  Program needs to know what to do if a user enters bad info or a
# => file-manipulating process gets corruped.

#  Ruby has an Exception class that makes handling these errors much
# => easier.  Syntactic structure using the reserved words
# => begin, rescue, and end to signify exception handling
# => Basic Structure:
begin
  # perform some dangerous operation
rescue
  #do this if the operations fails
  # for example, log the error
end

#  One common occurence is when a nil value makes its way into our
# => program.  We have to be prepared for this reality.
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
