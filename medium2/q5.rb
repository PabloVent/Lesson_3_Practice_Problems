# def tricky_method(a_string_param, an_array_param)
#   a_string_param += "rutabaga"
#   an_array_param << "rutabaga"
# end

# my_string = "pumpkins"
# my_array = ["pumpkins"]
# tricky_method(my_string, my_array)

# puts "My string looks like this now: #{my_string}"
# puts "My array looks like this now: #{my_array}"

def new_string(str)
  str += " rutabaga"
end

def new_array(arr)
  arr + ["rutabaga"]
end

my_string = "pumpkins"
my_array = ["pumpkins"]

my_string = new_string(my_string)
my_array = new_array(my_array)

puts "My string looks like this now: #{my_string}"
puts "My array looks like this now: #{my_array}"
