# # What is the result of the last line in the code below?

# greetings = { a: 'hi' }        # initialize var greetings and assign obj type hash to it.
# informal_greeting = greetings[:a] # 'hi'
# informal_greeting << ' there'     # 'hi there'

# puts informal_greeting  #  => "hi there", return nil
# puts greetings          # { a: 'hi there' }

greetings = { a: 'hi' }
informal_greeting = greetings[:a].clone
informal_greeting = informal_greeting + ' there'

puts informal_greeting
puts greetings