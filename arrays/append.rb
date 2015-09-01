#!/usr/bin/ruby

a = [1,2,3]

puts '---------- array --------'
puts a.inspect

a << 4
puts '---------- after append of the number 4 --------'
puts a.inspect

a << 5 << 6
puts '---------- after 5 and 6 ----------'
puts a.inspect

a << [1,2,3] # a is now [1,2,3,4,5,6,[1,2,3]]
puts '---------- sub array appended ----------'
puts a.inspect
