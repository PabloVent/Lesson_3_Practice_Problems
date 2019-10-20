# def factors(number)
#   divisor = number
#   factors = []
#   begin
#     factors << number / divisor if number % divisor == 0
#     divisor -= 1
#   end until divisor == 0
#   factors
# end


def factors(number)
  divisor = number
  factors = []

  loop do
    break if number <= 0
    factors << number / divisor if number % divisor == 0
    divisor -= 1
  end
  factors
end

puts factors(-10)

# What is the purpose of the number % divisor == 0 ?
# Its purpose is to make sure that divisor is a multiple of number; no remainder.

# What is the purpose of the second-to-last line (line 8) in the method (the factors before the method's end)?
# Its purpose is to return the factors of number.