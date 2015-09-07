#!/usr/bin/ruby

# a flip flop is like a switch, when something evealuates to true
# all subsequent calls then evaluate true then, if the next expression evealuates
# to true it flips back to false for example in the bellow condition
# we check from 0 to ten, it will be true on 3 then stay true until
# its five so 3,4,5 should be printed to screen.

(1..10).each do |x|
  puts x if x==3..x==5
end

puts 'example with ..'

# Just like the ... version of the range there is a difference
# when we use the ... we can go one more for example
(1..10).each do |x|
  puts x if x==3..x<5
end

puts 'example with ...'

(1..10).each do |x|
  puts x if x==3...x<5
end
