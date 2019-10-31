produce = {
  'apple' => 'Fruit',
  'carrot' => 'Vegetable',
  'pear' => 'Fruit',
  'broccoli' => 'Vegetable'
}


def select_fruit(hsh)
  new_hsh = []
  hsh = hsh.to_a
  counter = 0

  loop do
    break if counter == hsh.size

    current_el = hsh[counter]
    if current_el.include?('Fruit')
      new_hsh << current_el
    end
    counter += 1
  end

  new_hsh.to_h
end

p select_fruit(produce)


# produce = produce.to_a
# new_hsh = [] # to be turned back into array
# counter = 0

# loop do
#     current_el = produce[counter]
#     if current_el.include?('Fruit')
#       new_hsh << current_el
#     end
#     counter += 1
#     break if counter == produce.size
#   end



# p new_hsh.to_h

# terse version

# p produce = produce.select {|k,v| v == 'Fruit'}
