#!/usr/bin/ruby

puts "EXAMPLE ONE"
a = "hello world"
puts a
b = a += "!"
# because of ! a is a new string
puts a

puts 'EXAMPLE TWO'
# now a is not modified
a = "gareth"
puts a
b = a + " rocks"
puts a
puts b

puts 'EXAMPLE THREE'
# another example would be capitalize
b = a.capitalize
puts a
b = a.capitalize!
puts a
