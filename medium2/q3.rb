# Study the following code and state what will be displayed...and why:

def tricky_method(a_string_param, an_array_param)
  a_string_param += "rutabaga"
  an_array_param << "rutabaga"
end

my_string = "pumpkins"
my_array = ["pumpkins"]
tricky_method(my_string, my_array)

puts "My string looks like this now: #{my_string}" # pumpkins
puts "My array looks like this now: #{my_array}" # ["pumpkins", "rutabaga"]

# The output on line 12 shows that my_string is not mutated since its alias (a_string_param) is reassigned to another string object; after reassignment, a_string_param no longer points to the same obj my_string is pointing to.

# The output on line 13 displays a mutated version of my_array, since the << method mutates its value from within the method's definition; an_array_param is an alias to my_array, so changes performed on the obj my_variable points to are also seen by its alias.
