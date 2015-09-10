#!/usr/bin/ruby

# some examples of common iterators times, each, map etc

puts '----------- times -----------'
2.times do
  print 'yo '
end
puts ''

puts '------------ each example ----------'
a = [1,2,3,4]
a.each do |i|
  puts i
end

puts '--------- square route ------'
b = a.map do |i|
  i**i
end
puts b.inspect

# Numeric iterators
puts '------------ up to on numeric ----------'
4.upto(5) do |i|
  print 'yo '
end
puts ''
# there is also a downto method

# can use step for floats
# start at 0, steps of 0.1 go up to 0.4
puts '---------- step ------------'
0.step(0.4, 0.1) do |i|
  puts i
end
