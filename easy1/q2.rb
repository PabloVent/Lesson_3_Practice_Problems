advice = "Few things in life are as important as house training your pet dinosaur."

advice = advice.split(' ')
advice[6] = "urgent"
p advice*" "

# which is quite a long winded way to do this compared with:
# p advice.gsub!('important', 'urgent')