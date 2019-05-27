#  Write a program that checks if the sequence of characeters "lab" exists in
# => the followin gstrings.  If it does exist, print out the word.
def has_a_lab?(string)
  if string =~ /lab/
    puts "#{string}, we have a match!"
  else
    puts "#{string}, No match here."
  end
end

has_a_lab?("laboratory")
has_a_lab?("experiment")
has_a_lab?("Pans Labyrinth")
has_a_lab?("elaborate")
has_a_lab?("polar bears")

#  Modify this program so it works.
def execute_call(&block)
  block.call
end

execute_call do
  puts "Hello from inside the execute method!"
end

def execute(&block)
  block.call
end

execute{ puts "Hello from inside the execute method"}
