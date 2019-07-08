=begin
keyword 	meaning
START 	start of the program
SET 	sets a variable we can use for later
GET 	retrieve input from user
PRINT 	displays output to user
READ 	retrieve value from variable
IF / ELSE IF / ELSE 	show conditional branches in logic
WHILE 	show looping logic
END 	end of the program

1.  A method that returns the sum of two integers.
START

METHOD (number1,number2)
  PRINT number1 + number2
  END

METHOD(number1,number2)

END

START

2.  a method that takes an array of strings, and returns a string that is all those strings concatenated together

START

PRINT what is your first name
GET string1

PRINT where do you live?  State only please.
GET string2

PRINT Who is your favorite super hero?
GET string3

PRINT Well, (string1), I love the state ().  But that super hero choice, (string3), is terrible.

END
# Given a collection of integers called "numbers"

SET iterator = 1
SET saved_number = value within numbers collection at space 1

WHILE iterator <= length of numbers
  SET current_number = value within numbers collection at space "iterator"
  IF saved_number >= current_number
    go to the next iteration
  ELSE
    saved_number = current_number

  iterator = iterator + 1

PRINT saved_number

END
end

while user wants to keep going
  - ask the user for a collection of numbers
  - extract the largest one from that collection and save it
  - ask the user if they want to input another collection

return saved list of numbers

while user wants to keep going
  - ask the user for a collection of numbers
  - iterate through the collection one by one.
    - save the first value as the starting value.
    - for each iteration, compare the saved value with the current value.
    - if the saved value is greater, or it's the same
      - move to the next value in the collection
    - otherwise, if the current value is greater
      - reassign the saved value as the current value

  - after iterating through the collection, save the largest value into the list.
  - ask the user if they want to input another collection

return saved list of numbers

START

SET large_numbers = []
SET keep_going = true

WHILE keep_going == true
  GET "enter a collection"
  SET collection
  SET largest_number = SUBPROCESS "extract the largest one from that collection"
  large_numbers.push(largest_number)
  GET "enter another collection?"
  IF "yes"
    keep_going = true
  ELSE
    keep_going = false
  IF keep_going == false
    exit the loop

PRINT large_numbers


END






=end
