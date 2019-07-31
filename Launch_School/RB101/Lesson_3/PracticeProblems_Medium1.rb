#Q1  Write a one-line program that creates the following output 10 times, with the subsequent line indented 1 space to the right

10.times { |number| puts (" " * number) + "The Flintstones Rock!" }

#Q2 Why is this code wrong and what are two possible ways to fix This

number = 40 + 2
puts "the value of 40 + 2 is #{number}"

puts "The value of 40 + 2 is #{40 + 2}"

#Q3  Alyssa noticed that this will fail if the input is 0, or a negative number, and asked Alan to change the loop. How can you make this work without using begin/end/until? Note that we're not looking to find the factors for 0 or negative numbers, but we just want to handle it gracefully instead of raising an exception or going into an infinite loop.

def factors(number)
  divisor = 1
  factors = []
  while divisor < number
    factors << number / divisor if number % divisor == 0  # the % allows you to determine if the result is an integer
    divisor += 1
  end
  factors # If this wasn't here there would be a return value of "nil"
end

p factors(20)

#  Q4 Alyssa was asked to write an implementation of a rolling buffer.  Elements are added to the rolling buffer and if the buffer becomes full, then new elements that are added will displace the oldest elements in the buffer.

#  She wrote two implementations, saying "Take your pick, do you like << or + for modifying the buffer?"  Is there a difference between the two, other than what operator she chose to use to add an element to the buffer?

def rolling_buffer1(buffer, max_buffer_size, new_element)
  buffer << new_element
  buffer.shift if buffer.size > max_buffer_size
  buffer
end

def rolling_buffer2(input_array, max_buffer_size, new_element)
  buffer = input_array + [new_element]
  buffer.shift if buffer.size > max_buffer_size
  buffer
end

#  Yes, there is a difference. While both methods have the same return value, in the first implementation, the input argument called buffer will be modified and will end up being changed after rolling_buffer1 returns. That is, the caller will have the input array that they pass in be different once the call returns. In the other implementation, rolling_buffer2 will not alter the caller's input argument.

#  Q5

def fib(first_num, second_num)
limit = 15
  while first_num + second_num < limit
    sum = first_num + second_num
    first_num = second_num
    second_num = sum
  end
  sum
end

result = fib(0, 1)
puts "result is #{result}"

def rps(fist1, fist2)
  if fist1 == "rock"
    (fist2 == "paper") ? "paper" : "rock"
  elsif fist1 == "paper"
    (fist2 == "scissors") ? "scissors" : "paper"
  else
    (fist2 == "rock") ? "rock" : "scissors"
  end
end

What is the result of the following call?

puts rps(rps(rps("rock", "paper"), rps("rock", "scissors")), "rock")

"paper"

The outermost call is evaluated by determining the result of rps(rps("rock", "paper"), rps("rock", "scissors")) versus rock. In turn that means we need to evaluate the two separate results of rps("rock", "paper") and rps("rock", "scissors") and later combine them by calling rps on their individual results. Those innermost expressions will return "paper" and "rock", respectively. Calling rps on that input will return "paper". Which finally when evaluated against "rock" will return "paper".
