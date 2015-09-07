#!/usr/bin/ruby

puts '============ WHILE ============'
x = 10
while x >= 0 do
  puts x
  x -= 1
end

# note x will be -1 here ;)

puts '============ UNTIL =========='
# this is the oposit of while, like unless with if
# the same as saying while x <= 10 .. dont rly see the point in this but hey
until x > 10 do
  puts x
  x += 1
end


# Using these loops as modifiers
puts '========== WHILE MODIFIER ========='
x = 0
puts x = x + 1 while x < 10