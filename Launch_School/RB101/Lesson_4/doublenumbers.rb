def double_numbers(numbers)
  doubled_numbers = []
  counter = 0

  loop do
    break if counter == numbers.size

    current_number = numbers[counter]
    number[counter] = current_number * 2

    counter += 1
  end

  numbers
end

my_numbers = [1, 4, 3, 7, 2, 6]

p double_numbers(my_numbers)
