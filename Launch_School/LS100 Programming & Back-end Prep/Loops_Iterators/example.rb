def minus(x)
  puts x
  if x != 0
    minus(x - 1)
  end
end

puts minus (50)
