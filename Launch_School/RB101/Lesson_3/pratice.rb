def dot_separated_ip_address?(input_string)
  dot_separated_words = input_string.split(".")
  while dot_separated_words.size > 0
    word = dot_separated_words.pop
    break unless is_an_ip_number?(word)
  end
  return true
end

dot_separated_ip_address?(1049)
