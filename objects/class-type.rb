#!/usr/bin/ruby

a = 'gareth'

puts a.class == String

# same as above but nicer
puts a.instance_of? String

# can also do is a for comparison
b = 2
puts b.is_a? Numeric
puts b.is_a? Integer
puts b.is_a? String
# and so on
