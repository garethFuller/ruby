#!/usr/bin/ruby

a = 'gareth';
puts a[0] #g

# get 2 chars starting at 0
puts a[0, 2] #ga

# get last char (1 as starts at 0)
puts a[a.length-1]

puts a[0..2] #gar
