def rolling_buffer1(buffer, max_buffer_size, new_element)
  buffer << new_element
  buffer.shift if buffer.size > max_buffer_size
  buffer
end

def rolling_buffer2(input_array, max_buffer_size, new_element)
  buffer = input_array + [new_element]
  buffer.shift if buffer.size > max_buffer_size
  buffer
end

p my_buffer = %W()
rolling_buffer2(my_buffer, 3, "ho")
# p rolling_buffer2(my_buffer, 3, "ho")

p my_buffer

# The difference is that << modifies the calling obj that alias buffer points to, whereas "="" in line 8 reassigns buffer to a new obj created thru concat op.