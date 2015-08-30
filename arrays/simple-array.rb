#!/usr/bin/ruby

a = [1,2,3,4]
puts a

a = Array.new(4, 'gareth'); #array with 4 indexes containing gareth
puts a

# a will be [1,2,3]
a = Array.new(3) do |i|
  i + 1 # this will be the value of the index
end

puts a
