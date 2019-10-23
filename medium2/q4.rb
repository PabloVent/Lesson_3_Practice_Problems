def tricky_method_two(a_string_param, an_array_param)
  a_string_param << 'rutabaga'
  an_array_param = ['pumpkins', 'rutabaga']
end

my_string = "pumpkins"
my_array = ["pumpkins"]
tricky_method_two(my_string, my_array)

puts "My string looks like this now: #{my_string}" # pumpkinsrutabaga
puts "My array looks like this now: #{my_array}" # ["pumpkins"]

# In this instance, the main scope variable my_string will be mutated once it's passed into tricky_method_two through the 1st parameter which is assigned the value of my_string's reference.

