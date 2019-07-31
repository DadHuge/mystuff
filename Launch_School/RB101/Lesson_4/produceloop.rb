#  Select the key value paris where the value is 'Fruit'

produce = {
  'apple' => 'Fruit',
  'carrot' => 'Vegetable',
  'pear' => 'Fruit',
  'broccoli' => 'Vegetable'
}

def select_fruit(hash)
  fruit = {}
  counter = 0

  loop do
    if hash.value?('Fruit')
      fruit = hash.select {|k,v| v == 'Fruit'}
    end
    counter +=1
    break if counter = hash.length
  end
  p fruit
end

select_fruit(produce)

#Launch School answer 

def select_fruit(produce_list)
  produce_keys = produce_list.keys
  counter = 0
  selected_fruits = {}

  loop do
    # this has to be at the top in case produce_list is empty hash
    break if counter == produce_keys.size

    current_key = produce_keys[counter]
    current_value = produce_list[current_key]

    if current_value == 'Fruit'
      selected_fruits[current_key] = current_value
    end

    counter += 1
  end

  selected_fruits
end
