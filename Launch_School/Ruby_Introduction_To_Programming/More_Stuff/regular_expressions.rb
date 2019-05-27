#  REGEX stands for regular expression.  A regular expression is a sequence
# => of characters that form pattern matching rules, and is applied to a string
# => to look for matches.
# => Check if the pattern "ss" appears in the string "Mississippi"
# => Print out the 3rd word of each sentence from a list of sentences.
# => Find and replace all instances of "Mrs" with "Ms" in a sentence.
# => Does a string start with "St"?
# => Does a string end with "art"?
# => Does a string have non-alphanumeric characters in it?
# => Are there any whitespace characters in the string?
# => Find and replace all non-alphanumeric characters in a string with "-"

# => Creating a regular expression starts with the forward slash character /
# => Inside two forward slashes you can place any characters you would like
# => to match with the string.

# => We can use the =~ operator to see if we have a match in our regular
# => expression.  Let's say we are looking for the letter 'b' in 'powerball'
"powerball" =~ /b/
# => 5  #  Indices start counting from 0

#  Since 5 is a truthy value, (in Ruby, 5 evaluates to true), we can use it
# => as a boolean to check for matches.
def has_a_b?(string)
  if string =~ /b/
    puts "We have a match!"
  else
    puts "No match here."
  end
end

has_a_b?("basketball")
has_a_b?("football")
has_a_b?("hockey")
has_a_b?("golf")

#  On top of the =~ operator, we can use the match method to perform regex
# => comparisons as well.  Returns MatchData or nil.
p /b/.match("powerball")

#You can use a MatchData object to act as a boolean value in your program.
def has_a_b?(string)
  if /b/.match(string)
    puts "We have a match"
  else
    puts "No match."
  end
end

has_a_b?("basketball")
has_a_b?("football")
has_a_b?("hockey")
has_a_b?("golf")

#  If you encounter a string pattern matching problem, remember to look into
# => using regex.
