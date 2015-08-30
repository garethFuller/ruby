#!/usr/bin/ruby

a = [1, 2, 3]
b = [1, 4, 3, 2]

c = b - a

puts '--------------'
puts c # just 4, as will remove instances of 1, 2, 3 from b
