#!/usr/bin/ruby

a = 'one' # ref to one string obj
b = c = 'one' # two refs to the same string object

puts 'Is a the same as b?'
puts a.equal?(b)

puts 'is b the same as c?'
puts b.equal?(c)
# synonim for equal
puts b.eql?(c)

# can also check object id
puts 'b and c have the same object id?'
puts b.object_id == c.object_id

# check if the different objects contain the same content
puts 'does a and b contain the same content?'
puts a == b