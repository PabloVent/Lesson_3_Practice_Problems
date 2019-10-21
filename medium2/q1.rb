require 'pry'

def fun_with_ids
  # binding.pry
  a_outer = 42            # 42
  b_outer = "forty two"   # "forty two"
  c_outer = [42]          # [42]
  d_outer = c_outer[0]    # 42

  a_outer_id = a_outer.object_id # 85
  b_outer_id = b_outer.object_id # 70222950861300
  c_outer_id = c_outer.object_id # 70222950875340
  d_outer_id = d_outer.object_id # 85
  a_inner = ""
  puts "a_outer is #{a_outer} with an id of: #{a_outer_id} before the block." # 42 85
  puts "b_outer is #{b_outer} with an id of: #{b_outer_id} before the block." # "forty two" 70226687593300
  puts "c_outer is #{c_outer} with an id of: #{c_outer_id} before the block." # [42] 70226687418700
  puts "d_outer is #{d_outer} with an id of: #{d_outer_id} before the block." # 42 85
  puts

  1.times do
    a_outer_inner_id = a_outer.object_id # 85
    b_outer_inner_id = b_outer.object_id # 70226687593300
    c_outer_inner_id = c_outer.object_id # 70226687418700
    d_outer_inner_id = d_outer.object_id # 85

    puts "a_outer id was #{a_outer_id} before the block and is: #{a_outer_inner_id} inside the block."
    puts "b_outer id was #{b_outer_id} before the block and is: #{b_outer_inner_id} inside the block."
    puts "c_outer id was #{c_outer_id} before the block and is: #{c_outer_inner_id} inside the block."
    puts "d_outer id was #{d_outer_id} before the block and is: #{d_outer_inner_id} inside the block."
    puts

    a_outer = 22
    b_outer = "thirty three"
    c_outer = [44]
    d_outer = c_outer[0]

    puts "a_outer inside after reassignment is #{a_outer} with an id of: #{a_outer_id} before and: #{a_outer.object_id} after."
    puts "b_outer inside after reassignment is #{b_outer} with an id of: #{b_outer_id} before and: #{b_outer.object_id} after."
    puts "c_outer inside after reassignment is #{c_outer} with an id of: #{c_outer_id} before and: #{c_outer.object_id} after."
    puts "d_outer inside after reassignment is #{d_outer} with an id of: #{d_outer_id} before and: #{d_outer.object_id} after."
    puts


    a_inner = a_outer # 22
    b_inner = b_outer # "thirty three"
    c_inner = c_outer # [44]
    d_inner = c_inner[0] # 44

    a_inner_id = a_inner.object_id # 45
    b_inner_id = b_inner.object_id # 70092415519260
    c_inner_id = c_inner.object_id # 70092407220860
    d_inner_id = d_inner.object_id # 89

    puts "a_inner is #{a_inner} with an id of: #{a_inner_id} inside the block (compared to #{a_outer.object_id} for outer)." # 22 45 45
    puts "b_inner is #{b_inner} with an id of: #{b_inner_id} inside the block (compared to #{b_outer.object_id} for outer)." # "thirty three" 70092419387300
    puts "c_inner is #{c_inner} with an id of: #{c_inner_id} inside the block (compared to #{c_outer.object_id} for outer)." # [44] 70092419456240
    puts "d_inner is #{d_inner} with an id of: #{d_inner_id} inside the block (compared to #{d_outer.object_id} for outer)." # 44 89 89
    puts
  end

  puts "a_outer is #{a_outer} with an id of: #{a_outer_id} BEFORE and: #{a_outer.object_id} AFTER the block." # 22 85 45
  puts "b_outer is #{b_outer} with an id of: #{b_outer_id} BEFORE and: #{b_outer.object_id} AFTER the block." # "thirty three"
  puts "c_outer is #{c_outer} with an id of: #{c_outer_id} BEFORE and: #{c_outer.object_id} AFTER the block."
  puts "d_outer is #{d_outer} with an id of: #{d_outer_id} BEFORE and: #{d_outer.object_id} AFTER the block." # 44 85
  puts

# thwe following code gets rescued since outer scope doesn't have access to vars initialized in the inner scope; a_outer was initialized on the outer scope and then reassigned in the inner scope (inside the block).

  puts "a_inner is #{a_inner} with an id of: #{a_inner_id} INSIDE and: #{a_inner.object_id} AFTER the block." rescue puts "ugh ohhhhh"
  puts "b_inner is #{b_inner} with an id of: #{b_inner_id} INSIDE and: #{b_inner.object_id} AFTER the block." rescue puts "ugh ohhhhh"
  puts "c_inner is #{c_inner} with an id of: #{c_inner_id} INSIDE and: #{c_inner.object_id} AFTER the block." rescue puts "ugh ohhhhh"
  puts "d_inner is #{d_inner} with an id of: #{d_inner_id} INSIDE and: #{d_inner.object_id} AFTER the block." rescue puts "ugh ohhhhh"
end

fun_with_ids
