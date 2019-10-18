def add_eight(number)
  number + 8
end

number = 2

how_deep = "number"
5.times { how_deep.gsub!("number", "add_eight(number)") }

p eval(how_deep)

# 42 since 8 + 2 + 8 + 8 + 8 + 8.