def fun_with_ids
  a_outer = 42            # 42
  b_outer = "forty two"   # "forty two"
  c_outer = [42]          # [42]
  d_outer = c_outer[0]    # 42

  a_outer_id = a_outer.object_id  # 85
  b_outer_id = b_outer.object_id  # 70319545732860
  c_outer_id = c_outer.object_id  # 70319545653800
  d_outer_id = d_outer.object_id  # 85

  puts "a_outer is #{a_outer} with an id of: #{a_outer_id} before the block." # 42 85
  puts "b_outer is #{b_outer} with an id of: #{b_outer_id} before the block."# "forty two" 70319545732860
  puts "c_outer is #{c_outer} with an id of: #{c_outer_id} before the block." # [42] 70319545653800
  puts "d_outer is #{d_outer} with an id of: #{d_outer_id} before the block." # 42 85
  puts

  an_illustrative_method(a_outer, b_outer, c_outer, d_outer, a_outer_id, b_outer_id, c_outer_id, d_outer_id)

  puts "a_outer is #{a_outer} with an id of: #{a_outer_id} BEFORE and: #{a_outer.object_id} AFTER the method call." # 42 85 85
  puts "b_outer is #{b_outer} with an id of: #{b_outer_id} BEFORE and: #{b_outer.object_id} AFTER the method call." # "forty two" 70319545732860 70319545732860
  puts "c_outer is #{c_outer} with an id of: #{c_outer_id} BEFORE and: #{c_outer.object_id} AFTER the method call." # [42] 70319545653800 70319545653800
  puts "d_outer is #{d_outer} with an id of: #{d_outer_id} BEFORE and: #{d_outer.object_id} AFTER the method call." # 42 85 85
  puts

  puts "a_inner is #{a_inner} with an id of: #{a_inner_id} INSIDE and: #{a_inner.object_id} AFTER the method." rescue puts "ugh ohhhhh" # "ugh ohhhhh"
  puts "b_inner is #{b_inner} with an id of: #{b_inner_id} INSIDE and: #{b_inner.object_id} AFTER the method." rescue puts "ugh ohhhhh" # "ugh ohhhhh"
  puts "c_inner is #{c_inner} with an id of: #{c_inner_id} INSIDE and: #{c_inner.object_id} AFTER the method." rescue puts "ugh ohhhhh" # "ugh ohhhhh"
  puts "d_inner is #{d_inner} with an id of: #{d_inner_id} INSIDE and: #{d_inner.object_id} AFTER the method." rescue puts "ugh ohhhhh" # "ugh ohhhhh"
  puts
end


def an_illustrative_method(a_outer, b_outer, c_outer, d_outer, a_outer_id, b_outer_id, c_outer_id, d_outer_id)
  a_outer_inner_id = a_outer.object_id  # 85
  b_outer_inner_id = b_outer.object_id  # 70319545732860
  c_outer_inner_id = c_outer.object_id  # 70319545653800
  d_outer_inner_id = d_outer.object_id  # 85

  puts "a_outer id was #{a_outer_id} before the method and is: #{a_outer.object_id} inside the method." # 85 85
  puts "b_outer id was #{b_outer_id} before the method and is: #{b_outer.object_id} inside the method." # 70319545732860 70319545732860
  puts "c_outer id was #{c_outer_id} before the method and is: #{c_outer.object_id} inside the method." # 70319545653800 70319545653800
  puts "d_outer id was #{d_outer_id} before the method and is: #{d_outer.object_id} inside the method." # 85 85
  puts

  a_outer = 22
  b_outer = "thirty three"
  c_outer = [44]
  d_outer = c_outer[0]

  puts "a_outer inside after reassignment is #{a_outer} with an id of: #{a_outer_id} before and: #{a_outer.object_id} after." # 22 85 45
  puts "b_outer inside after reassignment is #{b_outer} with an id of: #{b_outer_id} before and: #{b_outer.object_id} after." # "thirty three" 70319545732860 70319545768340
  puts "c_outer inside after reassignment is #{c_outer} with an id of: #{c_outer_id} before and: #{c_outer.object_id} after." # [44] 70319545653800 70319545839400
  puts "d_outer inside after reassignment is #{d_outer} with an id of: #{d_outer_id} before and: #{d_outer.object_id} after." # 44 85 89
  puts

  a_inner = a_outer # 22
  b_inner = b_outer # "thirty three"
  c_inner = c_outer # [44]
  d_inner = c_inner[0] # 44

  a_inner_id = a_inner.object_id  # 45
  b_inner_id = b_inner.object_id  # 70319545686800
  c_inner_id = c_inner.object_id  # 70319545839400
  d_inner_id = d_inner.object_id  # 89

  puts "a_inner is #{a_inner} with an id of: #{a_inner_id} inside the method (compared to #{a_outer.object_id} for outer)." # 22 45 45
  puts "b_inner is #{b_inner} with an id of: #{b_inner_id} inside the method (compared to #{b_outer.object_id} for outer)." # "thirty three" 70319545686800 70319545768340
  puts "c_inner is #{c_inner} with an id of: #{c_inner_id} inside the method (compared to #{c_outer.object_id} for outer)." # [44] 70319545839400 70319545839400
  puts "d_inner is #{d_inner} with an id of: #{d_inner_id} inside the method (compared to #{d_outer.object_id} for outer)." # 44 89 89
  puts
end

fun_with_ids