#!/usr/bin/ruby

# only work son objects that have an each method like arrays, hashes etc
a = [1,2,3,4,5]
puts '------------ sample for in on array -------------'

# do is optional
for index in a do
  puts "index: #{index}"
end

# key val with hash
puts '----------- sample with for in on hash ----------'
b = {one:1, two:2, three:3}

for key, val in b do
  puts "key: #{key}, val: #{val}"
end

# key an val still defined! Would not have expected that
puts "key is still: #{key} and val is still #{val}!!"

# as we use the each function on the for in we could also just use the each
# but this creates local scope!
puts '------------- sample with each -------------'
b.each do |key, val|
  puts "key: #{key}, val: #{val}"
end
