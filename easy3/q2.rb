# puts "the value of 40 + 2 is " + (40 + 2)

# This statament will produce and error because we're trying to concatinate a string to an integer. Conversely, we're trying to add a string to an integer.

# 2 fixes are:

puts "the value of 40 + 2 is" " #{(40 + 2)}"
puts "the value of 40 + 2 is " + (40 + 2).to_s